---
layout: page
author: Jordi Villà-Freixa
title: DiscretParasitHoste
permalink: /DiscretParasitHoste
---
<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>

# Model discret: Dinàmica paràsit\-hoste
\matlabtableofcontents

Considerem un model discret on les poblacions del **paràsit** $P_t$ i l'**hoste** $H_t$ evolucionen al llarg del temps en intervals $t$ . Considerem dos models.

## Model de Nicholson\-Bailey
 $$ \begin{array}{l} H_{k+1} =RH_k e^{-aP_k } \newline P_{k+1} =SH_k \left(1-e^{-aP_k } \right) \end{array} $$ 

on 

-  $R$ : constant de creixement dels hostes; 
-  $a$ : eficiència dels paràsits en cercar hostes; i 
-  $S$ : promig d'ous viables dels paràsits per a cada hoste infectat. 

## Model bionomial negatiu (Griffiths\-May)

Usant la mateixa notació que en el cas anterior, aquest model representa les poblacions d'hostes i paràsits seguint:

 $$ \begin{array}{l} H_{k+1} =RH_k {\left(1+\frac{aP_k }{m}\right)}^{-m} \newline P_{k+1} =SH_k \left(1-{\left(1+\frac{aP_k }{m}\right)}^{-m} \right) \end{array} $$ 

on apareix el nou paràmetre $m$ per controlar l'efecte de l'eficiència del paràsit.

## Qüestions
1.  Construeix gràfiques per al model de Nicholson\-Bailey usant $R=1.5$ , $S=1$ i $a=0.023$ per als casos: a) $H_0 =30$ i $P_0 =20$ i b) $H_0 =20$ i $P_0 =20$ (Figura 2.8 dels apunts de models discrets). Com interpretes la diferència entre les dues?
2. Usant els mateixos paràmetres anteriors i també $m=0.5$ , repeteix els dos gràfics anteriors per al model binomial negatiu. Quina conclusió n'extreus?
3. Construeix un gràfic de fase (població dels paràsits en funció de la població dels hostes) per als diferents casos. Què observes?
4. Comprova gràficament l'estabilitat dels dos punts d'equilibri trobats a l'exemple 2.55 dels apunts de models discrets.
