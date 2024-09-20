:::: par
::: flushleft
**Cas pràctic: Quan la població de ratolins arribarà a 1 milió?**
:::
::::

:::: par
::: flushleft
Anem a calcular quants anys trigarà la població de ratolins en una illa
deserta a arribar a **1 milió** d'individus en dos escenaris:
:::
::::

1.  ::: flushleft
    **Sense aportacions externes**: la població creix únicament a causa
    del creixement natural (30% anual).
    :::

2.  ::: flushleft
    **Amb aportacions externes**: cada any arriben **20 ratolins nous**
    a l'illa, a més del creixement natural.
    :::

:::: par
::: flushleft
**Opció 1: Sense aportacions externes**
:::
::::

:::: par
::: flushleft
Per aquest escenari, només tenim el creixement natural exponencial, de
manera que podem utilitzar la fórmula bàsica del creixement poblacional
exponencial:
:::
::::

::: par
$$P(t+1)=P(t)\cdot (1+r)$$
:::

::: par
$$P(t)=P(0)\cdot (1+r)^t$$
:::

:::: par
::: flushleft
On:
:::
::::

-   ::: flushleft
    $P(t)=1.000.000$ (la població objectiu és d'1 milió de ratolins),
    :::

-   ::: flushleft
    $P(0)=100$ (població inicial),
    :::

-   ::: flushleft
    $r=0,3$ (taxa de creixement natural anual del 30%).
    :::

P0 = 100; r = 0.30; P_target = 1e6;

t = log(P_target / P0) / log(1 + r);

fprintf('Sense aportacions externes, la població arribarà a 1 milió en

Sense aportacions externes, la població arribarà a 1 milió en 35.11
anys.

:::: par
::: flushleft
**Opció 2: Amb aportacions externes**
:::
::::

:::: par
::: flushleft
En aquest escenari, utilitzem la fórmula de Malthus amb aportacions
externes:
:::
::::

::: par
$$P(t+1)=P(t)\cdot (1+r)+A$$
:::

:::: par
::: flushleft
Es un exercici no trivial pero interessant veure que la formula basica
es:
:::
::::

::: par
$$P(t)=P(0)\cdot (1+r)^t +A\cdot \frac{(1+r)^t -1}{r}$$
:::

:::: par
::: flushleft
On, a part dels parametres definits mes amunt:
:::
::::

-   ::: flushleft
    $A=20$ (aportació externa constant de ratolins per any).
    :::

:::: par
::: flushleft
En aquest cas, enlloc d'usar la formula basica, mostrarem com construir
un proces iteratu per a cercar el valor desitjat:
:::
::::

P0 = 100; r = 0.30; A = 20; P_target = 1e6;

t = 0; P_t = P0;

while P_t \< P_target t = t + 1; P_t = P_t \* (1 + r) + A end

P_t = 150 P_t = 215 P_t = 299.5000 P_t = 409.3500 P_t = 552.1550 P_t =
737.8015 P_t = 979.1420 P_t = 1.2929e+03 P_t = 1.7007e+03 P_t =
2.2310e+03 P_t = 2.9203e+03 P_t = 3.8163e+03 P_t = 4.9813e+03 P_t =
6.4956e+03 P_t = 8.4643e+03 P_t = 1.1024e+04 P_t = 1.4351e+04 P_t =
1.8676e+04 P_t = 2.4299e+04 P_t = 3.1608e+04 P_t = 4.1111e+04 P_t =
5.3464e+04 P_t = 6.9523e+04 P_t = 9.0400e+04 P_t = 1.1754e+05 P_t =
1.5282e+05 P_t = 1.9869e+05 P_t = 2.5832e+05 P_t = 3.3583e+05 P_t =
4.3660e+05 P_t = 5.6760e+05 P_t = 7.3790e+05 P_t = 9.5929e+05 P_t =
1.2471e+06

fprintf('Amb aportacions externes, la població arribarà a 1 milió en

Amb aportacions externes, la població arribarà a 1 milió en 34 anys.

:::: par
::: flushleft
Grafic del sistema:
:::
::::

P0 = 100; r = 0.30; A = 20; P_target = 1e6;

t_max = 40;

t = linspace(0,t_max,40); P_no_A = zeros(size(t)); P_with_A =
zeros(size(t));

for i = 1:length(t) P_no_A(i) = P0 \* (1 + r)\^t(i);

P_with_A(i) = P0 \* (1 + r)\^t(i) + A \* ((1 + r)\^t(i) - 1) / r; end

figure; scatter(t, P_no_A, 'b'); hold on; scatter(t, P_with_A, 'r');
yline(P_target, '--k', 'Objectiu de 1 Milió'); xlabel('Temps (anys)');
ylabel('Població'); title('Evolució de la Població de Ratolins');
legend('Sense Aportacions Externes', 'Amb Aportacions Externes'); grid
on; hold off; saveas(gcf, '../figures/MalthusRatolins.png');

::: center
![image](figure_0.png){width="\\ifdim\\linewidth>40.8429503261415em 40.8429503261415em\\else\\linewidth\\fi"}
:::
