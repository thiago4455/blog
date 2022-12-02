+++
title = "Problem Set I"
+++

# Problem Set I

#### 1- Autovalores e autovetores das matrizes de Pauli

@@question
Give the eigenvectors and eigenvalues of these four matrices:
\begin{align*}
    \sigma_0\equiv I\equiv
        \begin{bmatrix}
            1 & 0 \\
            0 & 1
        \end{bmatrix}

    \qquad

    &\sigma_1\equiv \sigma_x\equiv X\equiv
        \begin{bmatrix}
            0 & 1 \\
            1 & 0
        \end{bmatrix}
        
    \\ \\

    \sigma_2 \equiv \sigma_y \equiv Y \equiv 
        \begin{bmatrix}
            0 & -i \\
            i & 0
        \end{bmatrix}
    
    \qquad

    &\sigma_3 \equiv \sigma_z \equiv Z \equiv 
        \begin{bmatrix}
            1 & 0 \\
            0 & -1
        \end{bmatrix}

\end{align*}
@@

Os autovetores de $\sigma_0$ são: \\
$\ket+$ e $\ket-$, com autovalores: 
$\lambda_+=1$ e $\lambda_-=1$ 
\\ \\

Os autovetores de 
$\sigma_1$ são: \\
$\ket{+_\text x}=\frac1{\sqrt{2}}\left[\ket{+}+\ket{-}\right]$ e \\ $\ket{-_\text x}=\frac1{\sqrt{2}}\left[\ket{+}-\ket{-}\right]$,\\ com autovalores: 
$\lambda_{+}=1$ e $\lambda_-=-1$
\\ \\ 

Os autovetores de 
$\sigma_2$ são: \\
$\ket{+_\text y}=\frac1{\sqrt{2}}\left[\ket{+}+i\ket{-}\right]$
e \\ $\ket{-_\text y}=\frac1{\sqrt{2}}\left[\ket{+}-i\ket{-}\right]$,\\ com autovalores: 
$\lambda_{+}=1$ e $\lambda_-=-1$
\\ \\ 

Os autovetores de
$\sigma_3$ são: \\
$\ket+$ e $\ket-$, com autovalores: 
$\lambda_+=1$ e $\lambda_-=-1$ 
\\ \\

#### 2 - Autovalores e autovetores de uma matriz 4x4
@@question
Give the eigenvalues and eigenvectors of this matrix:
\begin{equation*}
    \begin{bmatrix}
        1 & 0 & 0 & 0 \\
        0 & 0 & 1 & 0 \\
        0 & 1 & 0 & 0 \\
        0 & 0 & 0 & 1
    \end{bmatrix}
\end{equation*}
@@
Considerando a base $[\ket{\varphi_0}...\ket{\varphi_3}]$, obtemos os autovetores:


$\ket{\varphi_0}\hspace{1.8cm}$ com autovalor $\lambda_0=1$\\
$\frac1{\sqrt2}\left[\ket{\varphi_1}+\ket{\varphi_2}\right]\hspace{0.1cm}$ com autovalor $\lambda_1=1$\\
$\frac1{\sqrt2}\left[\ket{\varphi_1}-\ket{\varphi_2}\right]\hspace{0.1cm}$ com autovalor $\lambda_2=-1$\\
$\ket{\varphi_3}\hspace{1.8cm}$ com autovalor $\lambda_3=1$
\\ \\

#### 3- Produtos internos
@@question
For matrix $M$, let $M^{\dagger}=(M^{T})^{*}$, where $M^{T}$ is the transpose of $M$, and * denotes the complex conjugate of $M$. We call $M^{T}$ the adjoint of $M$.
Let
\begin{equation*}
    v == \begin{bmatrix}
        1 \\ 0
    \end{bmatrix}
    \qquad
    \textrm{ and }
    \qquad
    w = \begin{bmatrix}
        0 \\ 1
    \end{bmatrix}   
\end{equation*}
@@

a) $v^\dagger v = 1$ \\
b) $v^\dagger w = 0$ \\
c) $vv^\dagger = \left[\begin{matrix}1&0\\0&0\end{matrix}\right]$\\
d) $v^\dagger Xw$ = 1
\\ \\

#### 4 - Matrizes hermitianas
@@question
A matrix M is Hermitian if M† = M. Let M be Hermitian.

$\,$ a) Prove that all of its eigenvalues are real. \\
$\,$ b) Prove that $v^{\dagger}Mv$ is real, for all vectors $v$. When $v^{\dagger}Mv\gt 0$, we say that $M\gt 0$
@@
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
\\

#### 5 - Matrizes Unitárias
@@question
Let M be Hermitian, and define
\begin{equation*}
    U = e^{iM}=\sum_{k}\frac{(iM)^{k}}{k!}
\end{equation*}
Prove that $UU^{\dagger}=I$, where $I$ is the identity matrix.
@@
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