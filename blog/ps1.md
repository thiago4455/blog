+++
title = "Problem Set 1"
+++

#### 1- Autovalores e autovetores das matrizes de Pauli

Os autovetores de 
$\sigma_0=\left[\begin{matrix}
    1 && 0 \\
    0 && 1
\end{matrix}\right]$ são: \\
$\ket+$ e $\ket-$, com autovalores: 
$\lambda_+=1$ e $\lambda_-=1$ 
\\ \\

Os autovetores de 
$\sigma_1=\left[\begin{matrix}
    0 && 1 \\
    1 && 0
\end{matrix}\right]$ são: \\
$\ket{+_\text x}=\frac1{\sqrt{2}}\left[\ket{+}+\ket{-}\right]$ e \\ $\ket{-_\text x}=\frac1{\sqrt{2}}\left[\ket{+}-\ket{-}\right]$,\\ com autovalores: 
$\lambda_{+}=1$ e $\lambda_-=-1$
\\ \\ 

Os autovetores de 
$\sigma_2=\left[\begin{matrix}
    0 && -i \\
    i && 0
\end{matrix}\right]$ são: \\
$\ket{+_\text y}=\frac1{\sqrt{2}}\left[\ket{+}+i\ket{-}\right]$
e \\ $\ket{-_\text y}=\frac1{\sqrt{2}}\left[\ket{+}-i\ket{-}\right]$,\\ com autovalores: 
$\lambda_{+}=1$ e $\lambda_-=-1$
\\ \\ 

Os autovetores de
$\sigma_3=\left[\begin{matrix}
    1 && 0 \\
    0 && -1
\end{matrix}\right]$ são: \\
$\ket+$ e $\ket-$, com autovalores: 
$\lambda_+=1$ e $\lambda_-=-1$ 
\\ \\

#### 2 - Autovalores e autovetores de uma matriz 4x4
Na base $[\ket{\varphi_0}...\ket{\varphi_3}]$,
\nonumber{
$$M=\left[ \begin{matrix}
    1 & 0 & 0 & 0 \\
    0 & 0 & 1 & 0 \\
    0 & 1 & 0 & 0 \\
    0 & 0 & 0 & 1
\end{matrix} \right] $$
}

Autovalores:\\
$\ket{\varphi_0}\hspace{1.8cm}$ com autovetor $\lambda_0=1$\\
$\frac1{\sqrt2}\left[\ket{\varphi_1}+\ket{\varphi_2}\right]\hspace{0.1cm}$ com autovetor $\lambda_1=1$\\
$\frac1{\sqrt2}\left[\ket{\varphi_1}-\ket{\varphi_2}\right]\hspace{0.1cm}$ com autovetor $\lambda_2=-1$\\
$\ket{\varphi_3}\hspace{1.8cm}$ com autovetor $\lambda_3=1$\\


#### 3- Produtos internos
\nonumber{
$$
    v = \left[\begin{matrix}
        1 \\ 0
    \end{matrix}\right]\hspace{.4cm} \textrm{ e }\hspace{.4cm} w = \left[\begin{matrix}
        0 \\ 1
    \end{matrix}\right]
$$
a)$v^\dagger v = 1$ \\
b)$v^\dagger w = 0$ \\
c)$vv^\dagger = \left[\begin{matrix}1&0\\0&0\end{matrix}\right]$\\
d)$v^\dagger Xw$ = 1
}

#### 4 - Matrizes hermitianas
\nonumber{
a) Seja $\lambda$ um autovalor qualquer da matriz hermitiana $M$, com autovetor correspondente $v$
$$Mv=\lambda v$$
Multiplicando por $v^\dagger$ pela esquerda:

\begin{align}
    v^\dagger (Mv) &= v^\dagger \lambda v \\
    &= \lambda v^\dagger v \\
    &= \lambda \left| v \right| 
\end{align}
E pela comutatividade do produto interno ($v^Tu=u^Tv$):
$$
    v^\dagger (Mv) = (Mv)^Tv^*=v^TM^Tv^*
$$
obtemos então:
$$
    v^TM^Tv^* = \lambda \left| v \right| 
$$
Tirando o conjulgado complexo de ambos os lados
$$
    v^\dagger M^\dagger v = \lambda^* \left| v \right| 
$$
Como $M$ é hermitiana, $M^\dagger=M$. Logo, obtemos:

\begin{align}
    \lambda^* \left| v \right| &= v^\dagger M v \\
    &= v^\dagger \lambda v \\
    &= \lambda v^\dagger v \\
    &= \lambda \left| v \right| \\
    \lambda^* &= \lambda
\end{align}
Logo $\lambda$ é real para qualquer autovalor $v$
\\ \\ \\
b) 
$$
    v^\dagger M v = \left(v^\dagger M^\dagger v\right)^\dagger
$$
como $M^\dagger=M$
$$
    v^\dagger M v = \left(v^\dagger M v\right)^\dagger=\left(v^\dagger M v\right)^*
$$
Logo $v^\dagger M v$ é real para todo vetor $v$
}

#### 5 - Matrizes Unitárias
\nonumber{
Uma matriz hermitiana $M$ pode ser escrita como:
$$
    M = \sum_{j}v_j\lambda_j v_j^\dagger
$$
Utilizando então a definição
$$
    U = e^{iM}
$$
obtemos
$$
    U =  \sum_{j}v_je^{i\lambda_j} v_j^\dagger
$$
Mostramos então que:
\begin{align}
    U^\dagger U &= \sum_{j}v_je^{i\lambda_j} v_j^\dagger  \sum_{k}v_ke^{-i\lambda_k} v_k^\dagger = I
\end{align}
}