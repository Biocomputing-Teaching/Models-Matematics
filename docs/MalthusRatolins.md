---
layout: page
author: Jordi Villà-Freixa
title: "Model de Malthus: població de ratolins"
permalink: /MalthusRatolins
---


<a id="H_29E3D6D9"></a>

# **1.1.1. Models Unidimensionals. Model exponencial**

**Algunes instruccions preliminars:**

```matlab
startup
```
<a id="H_3C76FF37"></a>

## **Cas pràctic: Quan la població de ratolins arribarà a 1 milió?**

Anem a calcular quants anys trigarà la població de ratolins en una illa deserta a arribar a **1 milió** d'individus en dos escenaris:

1.  **Sense aportacions externes**: la població creix únicament a causa del creixement natural (30% anual).
2. **Amb aportacions externes**: cada any arriben **20 ratolins nous** a l'illa, a més del creixement natural.
<a id="H_800D951D"></a>

## Creixement exponencial

Abans d'afrontar aquest problema, pensem en un cas més senzill. Imaginem una població de bacteris que es duplica cada 20 minuts, a partir d'una població inicial de $P_0$. Generam una taula que ens mostri aquestes dades:

```matlab
% Assumim una població inicial
P0=3
```

```matlabTextOutput
P0 = 3
```

```matlab
% generem una taula amb les dades per a k=6 generacions
k=[0 1 2 3 4 5 6];
y=[P0 2*P0 2^2*P0 2^3*P0 2^4*P0 2^5*P0 2^6*P0];
%imprimim la taula
disp('    t    y')
```

```matlabTextOutput
    t    y
```

```matlab
for r=1:7
    disp([k(r) y(r)])
end
```

```matlabTextOutput
     0     3

     1     6

     2    12

     3    24

     4    48

     5    96

     6   192
```


Com veiem, el creixement es pot explicar amb una successió exponencial:

 $$ x_k =2\cdot x_{k-1} $$ 

o bé, si ho expressem a partir del primer valor (expressió recursiva):

 $$ x_k =2^k \cdot x_0 $$ 
<a id="H_4932DA7B"></a>

### Qüestió: quant de temps ha de passar per tal que la població de bacteris superi les 100 unitats?

![image_0.png](MalthusRatolins_media/image_0.png)


Podem dibuixar aquestes dades per tal de que s'aprecïi millor aquest creixement exponencial:

```matlab
% Defineix el rang de valors de les generacions k
k = 0:1:6;  % Generació (k)
P0 = 3;   % Població inicial
taxa = 2; % taxa de creixement

% Crea una figura
figure;
hold on;  % Permet superposar múltiples gràfics en la mateixa figura

y = P0*taxa.^k;  % Càlcul del creixement exponencial
scatter(k, y, 'DisplayName', ['R = ', num2str(taxa)]);  % Dibuixa la corba

% Configuració del gràfic
xlabel('Iteraci\''o ($k$)');
ylabel('Creixement ($P0 \cdot R^k$)');
xticks(k)
title('Corba de Creixement Exponencial');
legend('show');  % Mostra la llegenda
grid on;  % Afegeix quadrícula
hold off;  % Allibera la figura per evitar superposicions
```

![figure_0.png](MalthusRatolins_media/figure_0.png)

Qüestió: Què succeeix si $R<0$?


Una fàbrica de paper construïda al costat d'un riu afecta una població de truites, reduint\-ne anualment la seva extensió en un 11%. Si inicialment hi ha 1000 truites, com evoluciona la seva població?

```matlab
% Defineix el rang de valors de les generacions k
k = 0:1:50;  % Generació (k)
P0 = 1000;   % Població inicial
taxa = (1-0.11); % taxa de creixement

% Crea una figura
figure;
hold on;  % Permet superposar múltiples gràfics en la mateixa figura

y = P0*taxa.^k;  % Càlcul del creixement exponencial
scatter(k, y, 'DisplayName', ['R = ', num2str(taxa)]);  % Dibuixa la corba

% Configuració del gràfic
% "latex" és un potent editor de text que s'usa molt per mostrar
% nomenclatura matemàtica, també a MATLAB
xlabel('Iteraci\''o ($k$)');
ylabel('Creixement ($P0 \cdot R^k$)');
xticks(k)
title('Corba de Creixement Exponencial');
legend('show');  % Mostra la llegenda
grid on;  % Afegeix quadrícula
hold off;  % Allibera la figura per evitar superposicions
```

![figure_1.png](MalthusRatolins_media/figure_1.png)

Provem diverses situacions ara en el mateix gràfic:

```matlab
% Defineix el rang de valors de les generacions k
k = 0:1:4;  % Generació (k)
P0 = 1000;   % Població inicial

% Defineix diverses taxes de creixement exponencial
taxes = [0.5, 1, 1.5, 2];  % Diferents valors de taxa de creixement

% Crea una figura
figure;
hold on;  % Permet superposar múltiples gràfics en la mateixa figura

% Bucle per dibuixar les corbes per a cada taxa de creixement
for i = 1:length(taxes)
    y = P0*taxes(i).^k;  % Càlcul del creixement exponencial
    scatter(k, y, 'DisplayName', ['r = ', num2str(taxes(i))]);  % Dibuixa la corba
end
yline(P0, 'DisplayName', 'Creixement nul')
% Configuració del gràfic
% "latex" és un potent editor de text que s'usa molt per mostrar
% nomenclatura matemàtica, també a MATLAB
xlabel('Iteraci\''o ($k$)');
ylabel('Creixement ($P0 \cdot R^k$)');
xticks(k)
title('Corbes de Creixement Exponencial amb Diferents Taxes');
legend('show');  % Mostra la llegenda
grid on;  % Afegeix quadrícula
hold off;  % Allibera la figura per evitar superposicions
```

![figure_2.png](MalthusRatolins_media/figure_2.png)

Com podem evitar la desaparició de les truites de més amunt si la seva taxa de creixement resulta negativa, com hem vist? Imaginem que fem una determinada aportació anual de truites per compensar les pèrdues. En aquest cas, el model que n'explica l'evolució seria:

 $$ P(t+1)=P(t)\cdot (1+r)+A $$ 
```matlab
% Defineix el rang de valors de les generacions k
k = 0:1:10;  % Generació (k)
P0 = 1000;   % Població inicial
taxa = (1-0.11); % taxa de creixement
A = 100;    % aportació anual

figure;hold on; 

% gràfic sense aportació
y = P0*taxa.^k+A;  % Càlcul del creixement exponencial
scatter(k, y, 'DisplayName', ['R = ', num2str(taxa)]);  % Dibuixa la corba
% gràfic amb aportació. En aquest cas farem una iteració perquè la f`romula
% no és trivial d'entrada (la veurem més avall)
P_t = zeros(size(k));
P_t(1)=P0;

% Iterar fins arribar a la població objectiu
for i = 2:numel(k)
    P_t(i) = P_t(i-1) * taxa + A; % Càlcul de la població
end
scatter(k, P_t, 'DisplayName', ['R = ', num2str(taxa),'A = ',num2str(A)]);  % Dibuixa la corba

xlabel('Iteraci\''o ($k$)');
ylabel('Creixement ($P0 \cdot R^k$)');
xticks(k)
title('Corba de Creixement Exponencial amb Aportacions anuals');
legend('show');grid on;hold off; 
```

![figure_3.png](MalthusRatolins_media/figure_3.png)

Com es pot verificar al gràfic, al cap del temps haurem pogut estabilitzar la població. 

<a id="H_910B0D8E"></a>

## **Tornem al cas**
<a id="H_13402BB4"></a>

### **Opció 1: Sense aportacions externes**

Per aquest escenari, només tenim el creixement natural exponencial, de manera que podem utilitzar la fórmula bàsica del creixement poblacional exponencial:

 $$ P(t+1)=P(t)\cdot (1+r) $$ 

 $$ P(t)=P(0)\cdot (1+r)^t $$ 

On:

-  $P(t)=1.000.000$ (la població objectiu és d'1 milió de ratolins), 
-  $P(0)=100$ (població inicial), 
-  $r=0,3$ (taxa de creixement natural anual del 30%). 

Per saber quan tardaríem a tenir el milió de ratolins:

 $$ P(t)=P(0)\cdot (1+r)^t \ge 10^6 $$ 

 $$ \log (P(0)\cdot (1+r)^t )\ge \log (10^6 ) $$ 

 $$ \log (P(0))+t\log (1+r)\ge \log (10^6 ) $$ 

 $$ 3+t\log (0.89)\ge 6 $$ 

 $$ t\ge \frac{3}{\log (0.89)} $$ 
```matlab
4/log10(1.3)
```

```matlabTextOutput
ans = 35.1052
```


o, executat tot amb matlab:

```matlab
% Paràmetres inicials

P0 = 100;        % Població inicial
r = 0.30;        % Taxa de creixement natural (30%)
P_target = 1e6;  % Objectiu de població (1 milió)

% Càlcul del temps necessari per arribar a 1 milió de ratolins
t = log(P_target / P0) / log(1 + r);

% Mostrar el resultat
anys_sense_aportacions = t
```

```matlabTextOutput
anys_sense_aportacions = 35.1052
```

<a id="H_3A825505"></a>

### **Opció 2: Amb aportacions externes**

En aquest escenari, utilitzem la fórmula de Malthus amb aportacions externes:

 $$ P(t+1)=P(t)\cdot (1+r)+A $$ 

Es un exercici no trivial pero interessant veure que la formula basica es:

 $$ P(t)=P(0)\cdot (1+r)^t +A\cdot \frac{(1+r)^t -1}{r} $$ 

On, a part dels parametres definits mes amunt:

-  $A=20$ (aportació externa constant de ratolins per any). 

En aquest cas, enlloc d'usar la formula basica, mostrarem com construir un proces iteratu per a cercar el valor desitjat:

```matlab
% Paràmetres inicials
P0 = 100;        % Població inicial
r = 0.30;        % Taxa de creixement natural (30%)
A = 20;          % Aportacions externes (20 ratolins per any)
P_target = 1e6;  % Objectiu de població (1 milió)

% Inicialització de variables
t = 0;           % Temps inicial
P_t = P0;        % Població inicial

% Iterar fins arribar a la població objectiu
while P_t < P_target
    t = t + 1; 
    P_t = P_t * (1 + r) + A; % Càlcul de la població
    disp([t P_t])
end
```

```matlabTextOutput
     1   150

     2   215

    3.0000  299.5000

    4.0000  409.3500

    5.0000  552.1550

    6.0000  737.8015

    7.0000  979.1420

1.0e+03 *

    0.0080    1.2929

1.0e+03 *

    0.0090    1.7007

1.0e+03 *

    0.0100    2.2310

1.0e+03 *

    0.0110    2.9203

1.0e+03 *

    0.0120    3.8163

1.0e+03 *

    0.0130    4.9813

1.0e+03 *

    0.0140    6.4956

1.0e+03 *

    0.0150    8.4643

1.0e+04 *

    0.0016    1.1024

1.0e+04 *

    0.0017    1.4351

1.0e+04 *

    0.0018    1.8676

1.0e+04 *

    0.0019    2.4299

1.0e+04 *

    0.0020    3.1608

1.0e+04 *

    0.0021    4.1111

1.0e+04 *

    0.0022    5.3464

1.0e+04 *

    0.0023    6.9523

1.0e+04 *

    0.0024    9.0400

1.0e+05 *

    0.0003    1.1754

1.0e+05 *

    0.0003    1.5282

1.0e+05 *

    0.0003    1.9869

1.0e+05 *

    0.0003    2.5832

1.0e+05 *

    0.0003    3.3583

1.0e+05 *

    0.0003    4.3660

1.0e+05 *

    0.0003    5.6760

1.0e+05 *

    0.0003    7.3790

1.0e+05 *

    0.0003    9.5929

1.0e+06 *

    0.0000    1.2471
```

```matlab
anys_amb_aportacions = t
```

```matlabTextOutput
anys_amb_aportacions = 34
```


Gràfic del sistema:

```matlab
% Paràmetres inicials
P0 = 100;        % Població inicial
r = 0.30;        % Taxa de creixement natural (30%)
A = 20;          % Aportacions externes (20 ratolins per any)
P_target = 1e6;  % Objectiu de població (1 milió)

% Inicialització de temps
t_max = 40;  % Temps màxim per a la simulació (en anys)

% Inicialitzem vectors per emmagatzemar resultats
t = linspace(0,t_max,40); % Vector de temps
P_no_A = zeros(size(t)); % Població sense aportacions externes
P_with_A = zeros(size(t)); % Població amb aportacions externes

% Càlcul de la població per a cada temps
for i = 1:length(t)
    % Sense aportacions externes
    P_no_A(i) = P0 * (1 + r)^t(i);
    
    % Amb aportacions externes
    P_with_A(i) = P0 * (1 + r)^t(i) + A * ((1 + r)^t(i) - 1) / r;
end

% Dibuixant les corbes
figure;
scatter(t, P_no_A, 'b'); % Corba sense aportacions externes
hold on;
scatter(t, P_with_A, 'r'); % Corba amb aportacions externes
yl=yline(P_target, '--k', 'Objectiu de 1 Mili\''o','Interpreter','latex'); % Línia horitzontal per l'objectiu
yl.LabelHorizontalAlignment = 'center';
xlabel('Temps (anys)');
ylabel('Poblaci\''o');
title('Evoluci\''o de la Poblaci\''o de Ratolins');
legend('Sense Aportacions Externes', 'Amb Aportacions Externes');
grid on;
hold off;
```

![figure_4.png](MalthusRatolins_media/figure_4.png)

```matlab
%saveas(gcf, '../figures/MalthusRatolins.png');
```
