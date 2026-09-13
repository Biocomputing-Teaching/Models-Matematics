#!/usr/bin/env bash

set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
build_dir="$(mktemp -d "${TMPDIR:-/tmp}/models-matematics.XXXXXX")"

cleanup() {
  rm -rf "$build_dir"
}
trap cleanup EXIT

cd "$repo_dir"
jekyll build --source docs --destination "$build_dir" --disable-disk-cache

python3 - "$build_dir" <<'PY'
from html.parser import HTMLParser
from pathlib import Path
from urllib.parse import unquote, urlsplit
import sys

build = Path(sys.argv[1])
baseurl = "/Models-Matematics"
errors = []


class Links(HTMLParser):
    def __init__(self):
        super().__init__()
        self.refs = []

    def handle_starttag(self, tag, attrs):
        values = dict(attrs)
        attr = "href" if tag in {"a", "link"} else "src" if tag in {"img", "script"} else None
        if attr and values.get(attr):
            self.refs.append(values[attr])


def exists_for_url(path):
    path = unquote(path)
    if path.startswith(baseurl):
        path = path[len(baseurl):]
    relative = path.lstrip("/")
    target = build / relative
    candidates = [target]
    if not target.suffix:
        candidates.extend([target.with_suffix(".html"), target / "index.html"])
    return any(candidate.exists() for candidate in candidates)


html_files = list(build.rglob("*.html"))
if not html_files:
    errors.append("Jekyll no ha generat cap fitxer HTML")

for html_file in html_files:
    content = html_file.read_text(encoding="utf-8")
    for obsolete in ("test starting page", "cdn.mathjax.org", "http://cdn.mathjax"):
        if obsolete in content:
            errors.append(f"{html_file.relative_to(build)} conté el text obsolet: {obsolete}")

    parser = Links()
    parser.feed(content)
    for ref in parser.refs:
        parsed = urlsplit(ref)
        if parsed.scheme in {"http", "https", "mailto", "tel", "data"} or ref.startswith("#"):
            continue
        if not exists_for_url(parsed.path):
            errors.append(f"{html_file.relative_to(build)} enllaça un recurs inexistent: {ref}")

homepage = (build / "index.html").read_text(encoding="utf-8")
required_fragments = [
    "Models matemàtics discrets",
    "models continus",
    "© 2024–",
    "Biocomputing-Teaching",
    "Jordi Villà-Freixa",
    "Montserrat Corbera",
    "Josep Ayats",
    "/sessions/Tema1_ModelsUnidimensionals.pdf",
    "/pdf/MalthusRatolins.pdf",
    "/casos/Leslie.pdf",
    "/exercicis/ExercicisResoltsBIO.pdf",
]
for fragment in required_fragments:
    if fragment not in homepage:
        errors.append(f"Falta a la portada: {fragment}")

if errors:
    print("\n".join(f"ERROR: {error}" for error in errors), file=sys.stderr)
    raise SystemExit(1)

print(f"Validació correcta: {len(html_files)} pàgines HTML i tots els recursos locals resolts.")
PY
