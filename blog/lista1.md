+++
title = "Lista de exercícios 1"
+++

#### 1- Distinguir entre pares de estados
É possível definir a matriz unitária em termos dos coeficientes dos estados iniciais $p$ e $q$.
\begin{equation*}
\left[
  \begin{matrix}
    a & b \\
    c & d
  \end{matrix}
\right]
\left[
  \begin{matrix}
    p\\
    q
  \end{matrix}
\right]
  =
\left[
  \begin{matrix}
    ap+bq\\
    cp+dq
  \end{matrix}
\right]
\end{equation*}

Para distinguir com probabilidade máxima, buscamos maximizar um dos novos coeficientes dado um dos estados iniciais $\ket{\psi_a}$, enquanto minimizamos para o outro $\ket{\psi_b}$.

a) Temos que para o estado $\ket{\psi_a}$ temos $p_a\neq q_a$, enquanto para $\ket{\psi_b}$ temos $p_b=q_b$.
Podemos então igualar $a$ e $-b$, fazendo com que $ap+bq=0$ para $p = q$.
\begin{equation*}
\ket{\psi^\prime}=
\left[
  \begin{matrix}
    a\left(p-q\right)\\
    cp+dq
  \end{matrix}
\right]
\end{equation*}
<!-- Definimos o valor de $a=\frac{1}{p_a-q_a}=1$, para que no novo estado onde o coeficiente de $\ket{0}$ seja não nulo, ele se torne 1. -->

Como buscamos uma matriz unitária, temos que

\begin{equation*}
\left[
  \begin{matrix}
    a & -a \\
    c & d
  \end{matrix}
\right]
\left[
  \begin{matrix}
    a* & c* \\
    -a* & d*
  \end{matrix}
\right]
  = 
\left[
  \begin{matrix}
    1 & 0 \\
    0 & 1
  \end{matrix}
\right]
\end{equation*}
Para satisfazer esse sistema encontramos então a seguinte matriz para o operador:
\begin{equation*}
M = 
\left[
  \begin{matrix}
    \frac1{\sqrt{2}} & -\frac1{\sqrt{2}} \\
    \frac1{\sqrt{2}} & \frac1{\sqrt{2}}
  \end{matrix}
\right]
\end{equation*}
Então obtemos os possíveis estados:
\begin{equation*}
\ket{\psi^\prime_a}=
\left[
  \begin{matrix}
    \frac12\\
    \frac12
  \end{matrix}
\right]
\;\&\;
\ket{\psi^\prime_b}=
\left[
  \begin{matrix}
    0\\
    1
  \end{matrix}
\right]
\end{equation*} 