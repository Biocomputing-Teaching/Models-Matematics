# Models matemàtics

Material docent de matemàtiques aplicades a la Biologia i la Biotecnologia.
La web reuneix les sessions de **models discrets**, pràctiques amb MATLAB,
casos d'estudi i un dossier d'exercicis resolts que també inclou models continus.

Web publicada: <https://biocomputing-teaching.github.io/Models-Matematics/>

## Previsualització local amb Jekyll

Cal tenir Ruby i Jekyll instal·lats. Si Jekyll no és al sistema:

```bash
gem install jekyll
```

Des de l'arrel del repositori, executa:

```bash
jekyll serve --source docs --livereload
```

La web quedarà disponible a:

<http://127.0.0.1:4000/Models-Matematics/>

Jekyll actualitza automàticament la previsualització quan es modifica un fitxer.
Per aturar el servidor, prem `Ctrl+C`.

Si es vol servir temporalment a l'arrel de `localhost`, es pot sobreescriure el
`baseurl` configurat per a GitHub Pages:

```bash
jekyll serve --source docs --livereload --baseurl ""
```

En aquest cas, la web s'obre a <http://127.0.0.1:4000/>.

Si els ports per defecte ja estan ocupats, se'n poden indicar uns altres:

```bash
jekyll serve --source docs --livereload --port 4100 --livereload-port 35730
```

La URL serà aleshores <http://127.0.0.1:4100/Models-Matematics/>.

## Publicació

GitHub Pages publica automàticament la carpeta `docs/` de la branca `main`.
Els PDF de les sessions i dels materials pràctics es generen en el repositori
d'origen corresponent i després s'incorporen aquí.

## Autoria i fonts

© 2024–present Biocomputing-Teaching.

La font principal d'aquest material és l'obra docent de Jordi Villà-Freixa.
També incorpora materials de Montserrat Corbera i Josep Ayats, a més d'altres
fonts que s'indiquen en els apartats corresponents.
