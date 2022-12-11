+++
title = "Problem Set II"
hidden = true
+++

# Problem Set II

#### 1- Density matrices
@@question
A density matrix (also sometimes known as a density operator) is a representation of statistical mixtures of quantum states. This exercise introduces some examples of density matrices, and explores some of their properties.

   a) Let $\psi=a\ket{0}+b\ket{1}$ be a quibit state. Give the matrix $\rho=\ket{\psi}\bra{\psi}$, which you may compute using linear algebra using the vector representations of $\ket{\psi} and \bra{\psi}$. What are the eigenvectors and eigenvalues of $\rho$? 

   b) Let $\rho_0=\ket{0}\bra{0}$ and $\rho_1 = \ket{1}\bra{1}$. Give the matrix $\sigma=\frac{\rho_0+\rho_1}{2}$. What are the eigenvectors and eigenvalues of $\rho$?

   c) Compute $ \text{tr}(\rho^{2})$  and $\text{tr}(\rho^{2})$. In general, $\text{tr}(M^{2})\le 1$, with equality if and only if $M$ is a pure state.
@@

a) $\psi = \begin{bmatrix} a \\ b \end{bmatrix}$
\begin{align*}
    \rho=\ket{\psi}\bra{\psi} &=
    \begin{bmatrix}
        a \\
        b
    \end{bmatrix}
    \begin{bmatrix}
        a^{*} &
        b^{*}
    \end{bmatrix}
\\
    &= \begin{bmatrix}
        aa^{*} & ab^{*} \\
        ba^{*} & bb^{*} 
    \end{bmatrix}
\end{align*}

\begin{align*}
    (aa^{*}-\lambda)(bb^{*}-\lambda)&=ab^{*}ba^{*} \\
    aa^{*}bb^{*}-\lambda aa^{*}-\lambda bb^{*}+\lambda^{2}&=ab^{*}ba^{*} \\
    -\lambda(|a|^{2}+|b|^{2})+\lambda^{2}& = 0 \\
    -\lambda - \lambda^{2}&=0 \\
    \lambda^{2}+\lambda&=0 \\
\end{align*}

Autovalores: \\
$1 \qquad$ com autovetor $ \begin{bmatrix}
    a \\
    b
\end{bmatrix}$\\  \\
$0 \qquad$ com autovetor $ \begin{bmatrix}
    -b^{*} \\
    a^{*}
\end{bmatrix}$ \\

\\


b) \\
$\rho_0= \begin{bmatrix}
    1 & 0 \\
    0 & 0
\end{bmatrix}$ \\ \\
$\rho_1= \begin{bmatrix}
    0 & 0 \\
    0 & 1
\end{bmatrix}$

$\sigma= \frac{1}{2}\begin{bmatrix}
    1 & 0 \\
    0 & 1
\end{bmatrix} = \frac{I}{2}$

Temos então que ambos os autovalores são $\frac{1}{2}$, com autovetores $\ket{0}$ e $\ket{1}$ 