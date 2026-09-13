---
layout: default
title: Models matemàtics discrets
description: Sessions, pràctiques MATLAB, casos i exercicis de models matemàtics aplicats a la Biologia i la Biotecnologia.
body_class: home
---

<section class="hero-section">
  <div class="shell hero-grid">
    <div class="hero-copy">
      <p class="eyebrow">Matemàtiques · Biologia i Biotecnologia</p>
      <h1>Models matemàtics <em>discrets</em></h1>
      <p class="hero-lead">Materials docents sobre formulació, anàlisi i simulació de models discrets aplicats a les ciències de la vida.</p>
      <div class="hero-actions">
        <a class="button button-primary" href="#sessions">Sessions</a>
        <a class="button" href="{{ '/exercicis/ExercicisResoltsBIO.pdf' | relative_url }}">Exercicis resolts</a>
      </div>
    </div>
    <div class="model-card" aria-label="Exemple d'un model discret">
      <div class="model-label"><span>Temps discret</span><span class="model-dot" aria-hidden="true"></span></div>
      <p class="model-equation"><i>x</i><sub>n+1</sub> = <i>f</i>(<i>x</i><sub>n</sub>)</p>
      <p class="model-equation"><i>N</i><sub>t+1</sub> = <i>R N</i><sub>t</sub></p>
      <p class="model-caption">Forma general d'un sistema dinàmic en temps discret.</p>
    </div>
  </div>
</section>

<aside class="scope-band" aria-label="Abast del material">
  <div class="shell scope-grid">
    <p class="scope-title">Abast d'aquest espai</p>
    <p class="scope-text">Aquest espai recull les sessions d'introducció i de <strong>models discrets</strong>. Els models continus formen part del curs, però no d'aquest conjunt de sessions. El dossier d'<strong>exercicis resolts inclou models discrets i continus</strong>.</p>
  </div>
</aside>

<section class="home-section" id="sessions">
  <div class="shell">
    <div class="section-heading">
      <div>
        <p class="eyebrow">01 · Sessions</p>
        <h2>Sessions docents</h2>
      </div>
      <p>Els continguts s'organitzen en una introducció general, models unidimensionals i models multidimensionals lineals i no lineals.</p>
    </div>

    <div class="session-grid">
      <a class="session-card" href="{{ '/sessions/Tema0_ModelsMatematics.pdf' | relative_url }}">
        <div class="card-topline"><span>Introducció</span><span class="session-number">0</span></div>
        <div>
          <h3>Models matemàtics</h3>
          <p>Definició, construcció i funció dels models matemàtics en les ciències de la vida.</p>
        </div>
        <span class="card-arrow" aria-hidden="true">↗</span>
      </a>
      <a class="session-card" href="{{ '/sessions/Tema1_ModelsUnidimensionals.pdf' | relative_url }}">
        <div class="card-topline"><span>Models discrets</span><span class="session-number">1</span></div>
        <div>
          <h3>Models unidimensionals</h3>
          <p>Models de Malthus, Beverton–Holt, Ricker i logístic; equilibri i estabilitat.</p>
        </div>
        <span class="card-arrow" aria-hidden="true">↗</span>
      </a>
      <a class="session-card" href="{{ '/sessions/Tema2_ModelsMultidimensionalsLineals.pdf' | relative_url }}">
        <div class="card-topline"><span>Models discrets</span><span class="session-number">2</span></div>
        <div>
          <h3>Multidimensionals lineals</h3>
          <p>Matrius de Leslie, estructures per edats i comportament asimptòtic.</p>
        </div>
        <span class="card-arrow" aria-hidden="true">↗</span>
      </a>
      <a class="session-card" href="{{ '/sessions/Tema3_ModelsMultidimensionalsNoLineals.pdf' | relative_url }}">
        <div class="card-topline"><span>Models discrets</span><span class="session-number">3</span></div>
        <div>
          <h3>Multidimensionals no lineals</h3>
          <p>Models hoste–paràsit, Nicholson–Bailey i estabilitat de sistemes bidimensionals.</p>
        </div>
        <span class="card-arrow" aria-hidden="true">↗</span>
      </a>
    </div>

    <div class="support-row">
      <a class="support-link" href="{{ '/sessions/Apendix_Tema2_ValorsVectorsPropis.pdf' | relative_url }}"><span>Apèndix · Vectors i valors propis</span><span>PDF ↗</span></a>
      <a class="support-link" href="{{ '/sessions/formulari_discrets.pdf' | relative_url }}"><span>Formulari de models discrets</span><span>PDF ↗</span></a>
    </div>
  </div>
</section>

<section class="home-section alt" id="practiques">
  <div class="shell">
    <div class="section-heading">
      <div>
        <p class="eyebrow">02 · MATLAB</p>
        <h2>Pràctiques amb MATLAB</h2>
      </div>
      <p>Desenvolupaments computacionals amb formulació, codi, representació gràfica i qüestions d'anàlisi. Disponibles en versió web i PDF.</p>
    </div>

    <div class="lab-grid">
      <article class="lab-card">
        <span class="lab-tag">Tema 1 · Malthus</span>
        <h3>Ratolins en una illa</h3>
        <p>Creixement exponencial amb i sense aportacions externes.</p>
        <div class="lab-links"><a href="{{ '/MalthusRatolins' | relative_url }}">Versió web</a><a href="{{ '/pdf/MalthusRatolins.pdf' | relative_url }}">PDF</a></div>
      </article>
      <article class="lab-card">
        <span class="lab-tag">Tema 1 · Restriccions</span>
        <h3>Peixos en un llac</h3>
        <p>Comparació dels models logístic, de Ricker i de Beverton–Holt.</p>
        <div class="lab-links"><a href="{{ '/PeixosModelRestringit' | relative_url }}">Versió web</a><a href="{{ '/pdf/PeixosModelRestringit.pdf' | relative_url }}">PDF</a></div>
      </article>
      <article class="lab-card">
        <span class="lab-tag">Tema 1 · Estabilitat</span>
        <h3>Punts d'equilibri</h3>
        <p>Càlcul, estabilitat i diagrames de teranyina en models unidimensionals.</p>
        <div class="lab-links"><a href="{{ '/Equilibri' | relative_url }}">Versió web</a><a href="{{ '/pdf/Equilibri.pdf' | relative_url }}">PDF</a></div>
      </article>
      <article class="lab-card">
        <span class="lab-tag">Tema 1 · Ricker</span>
        <h3>Salmó roig del Pacífic</h3>
        <p>Estimació dels paràmetres del model de Ricker a partir d'observacions.</p>
        <div class="lab-links"><a href="{{ '/RickerSalmons' | relative_url }}">Versió web</a><a href="{{ '/pdf/RickerSalmons.pdf' | relative_url }}">PDF</a></div>
      </article>
      <article class="lab-card">
        <span class="lab-tag">Tema 2 · Leslie</span>
        <h3>Població de peixos per edats</h3>
        <p>Simulació matricial, valors propis i distribució estable d'edats.</p>
        <div class="lab-links"><a href="{{ '/PeixosLeslie' | relative_url }}">Versió web</a><a href="{{ '/pdf/PeixosLeslie.pdf' | relative_url }}">PDF</a></div>
      </article>
      <article class="lab-card">
        <span class="lab-tag">Tema 3 · No lineals</span>
        <h3>Dinàmica paràsit–hoste</h3>
        <p>Models de Nicholson–Bailey i binomial negatiu en temps discret.</p>
        <div class="lab-links"><a href="{{ '/DiscretParasitHoste' | relative_url }}">Versió web</a><a href="{{ '/pdf/DiscretParasitHoste.pdf' | relative_url }}">PDF</a></div>
      </article>
    </div>
  </div>
</section>

<section class="home-section" id="casos">
  <div class="shell">
    <div class="section-heading">
      <div>
        <p class="eyebrow">03 · Casos</p>
        <h2>Casos d'estudi</h2>
      </div>
      <p>Enunciats breus per treballar la formulació matemàtica, el càlcul i la interpretació biològica.</p>
    </div>

    <div class="case-grid">
      <a class="case-card" href="{{ '/casos/Malthus1.pdf' | relative_url }}">
        <span class="lab-tag">Unidimensional</span>
        <h3>Equacions de diferència</h3>
        <p>Fecunditat efectiva i creixement d'una població d'insectes.</p>
        <span class="card-arrow" aria-hidden="true">↗</span>
      </a>
      <a class="case-card" href="{{ '/casos/Equilibri.pdf' | relative_url }}">
        <span class="lab-tag">Estabilitat</span>
        <h3>Punts d'equilibri</h3>
        <p>Creixement logístic discret d'una població de rosegadors.</p>
        <span class="card-arrow" aria-hidden="true">↗</span>
      </a>
      <a class="case-card" href="{{ '/casos/Leslie.pdf' | relative_url }}">
        <span class="lab-tag">Matriu de Leslie</span>
        <h3>Població de peixos</h3>
        <p>Classes d'edat, fecunditat i supervivència en un ecosistema.</p>
        <span class="card-arrow" aria-hidden="true">↗</span>
      </a>
      <a class="case-card" href="{{ '/casos/Leslie2.pdf' | relative_url }}">
        <span class="lab-tag">Matriu de Leslie</span>
        <h3>Població de rosegadors</h3>
        <p>Evolució, valors propis i proporció estable dels grups d'edat.</p>
        <span class="card-arrow" aria-hidden="true">↗</span>
      </a>
    </div>
  </div>
</section>

<section class="home-section alt" id="exercicis">
  <div class="shell">
    <div class="exercise-feature">
      <div>
        <p class="eyebrow">04 · Recursos</p>
        <h2>Exercicis resolts</h2>
        <p>Dossier del curs complet amb exercicis de models discrets i continus, fonaments matemàtics i càlcul matricial.</p>
      </div>
      <div class="exercise-meta">
        <a class="button" href="{{ '/exercicis/ExercicisResoltsBIO.pdf' | relative_url }}">Consulta el dossier PDF ↗</a>
      </div>
    </div>
  </div>
</section>
