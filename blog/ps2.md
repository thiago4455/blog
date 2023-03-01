+++
title = "Problem Set II"
hidden = false
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

c) \\
\begin{align*}
    \rho^{2} &= 
    \begin{bmatrix}
        aa^{*} & ab^{*} \\
        ba^{*} & bb^{*} 
    \end{bmatrix}
    \begin{bmatrix}
        aa^{*} & ab^{*} \\
        ba^{*} & bb^{*} 
    \end{bmatrix} \\
    tr(\rho^{2}) &= tr\begin{pmatrix}
        (aa^{*})(aa^{*})+(ab^{*})(ba^{*}) && - \\
        - && (ba^{*})(ab^{*})+(bb^{*})(bb^{*})
    \end{pmatrix} \\
    &= |a|^2|a|^2+|a|^2|b|^2+|b|^2|a|^2+|b|^2|b|^2 \\ \\
    tr(\rho^{2}) &= (|a|^2+|b|^2)^2 \\ \\

    \sigma &= \frac{I}{2} \\
    \sigma^2 &= \frac{I}{4} \\
    tr(\sigma^2) &= \frac{1}{2}
\end{align*}
\\ \\ 


#### 2 - Exponential of the Pauli matrices
@@question
Let $\vec{v}$ be aby real, three-dimensional unit vector and $\theta$ a real number. Prove that{t}
\begin{equation*}
    \exp(i\theta \vec{v}\cdot \vec{\sigma}) = \cos(\theta)I+i\sin(\theta)\vec{v}\cdot \vec{\sigma}
\end{equation*}
where $\vec{v}\cdot\vec{\sigma}\equiv \sum_{i=1}^{3} v_i \sigma_i$, and $\sigma_i$ are the Pauli matrices, $\sigma_1 = X$, $\sigma_2 = Y$, $\sigma_3 = Z$.    
@@


Podemos escrever o exponencial como uma série de Taylor:
\begin{equation*}
    \exp(i\theta \vec{v}\cdot \vec{\sigma}) = 
    \sum_{n=0}^{\infty} \frac{(i\theta\vec{v}\cdot\vec{\sigma})^{n}}{n!}
\end{equation*}

Podemos separar os elementos impares e pares, pois [a série converge uniformemente](https://proofwiki.org/wiki/Power_Series_Converges_Uniformly_within_Radius_of_Convergence)

\begin{equation*}
    = 
    \sum_{n=0}^{\infty} \frac{(i\theta\vec{v}\cdot\vec{\sigma})^{2n}}{(2n)!} +
    \sum_{n=0}^{\infty} \frac{(i\theta\vec{v}\cdot\vec{\sigma})^{2n+1}}{(2n+1)!}
\end{equation*}
\\
Resolvendo então para a parte par:
\begin{align*}
    \sum_{n=0}^{\infty} \frac{(i\theta\vec{v}\cdot\vec{\sigma})^{2n}}{(2n)!} &= \sum_{n=0}^{\infty} (-1)^{n} \frac{\theta^{2n}(\vec{v}\cdot\vec{\sigma})^{2n}}{(2n)!} \\
\end{align*}

\begin{align*}
    (\vec{v}\cdot\vec{\sigma})^{2n} &= \left((\vec{v}\cdot\vec{\sigma})^{2}\right)^n \\ \\

    (\vec{v}\cdot\vec{\sigma})^{2} &= \left(\sum_{i=1}^{3} v_i \sigma_i\right)^{2} \\
    &= (a\sigma_x + b\sigma_y + c\sigma_z)^{2} \\
    &= a^{2}\sigma_x^{2} + b^{2}\sigma_y^{2} + c^{2}\sigma_z^{2} + \\
    & ab\sigma_x\sigma_y+ac\sigma_x\sigma_z + ba\sigma_y\sigma_x + \\
    & bc\sigma_y\sigma_z + ca\sigma_z\sigma_x + cb\sigma_z\sigma_y \\ 
    &= a^{2}I + b^{2}I + c^{2}I + \\
    & iab\sigma_z-iac\sigma_y - iba\sigma_z + \\
    & ibc\sigma_x + ica\sigma_y - icb\sigma_x \\
    & =  (a^{2} + b^{2} + c^{2})I = I \\ \\

    (\vec{v}\cdot\vec{\sigma})^{2n} &= \left(I\right)^n = I
\end{align*}


\begin{align*}
    \sum_{n=0}^{\infty} (-1)^{n} \frac{\theta^{2n}}{(2n)!}I = \cos(\theta)I
\end{align*}

E para a parte impar:

\begin{align*}
    \sum_{n=0}^{\infty} \frac{(i\theta\vec{v}\cdot\vec{\sigma})^{2n+1}}{(2n+1)!} &= i\sum_{n=0}^{\infty} (-1)^{n}\frac{\theta^{2n+1}(\vec{v}\cdot\vec{\sigma})^{2n+1}}{(2n+1)!} \\
    & = i\sum_{n=0}^{\infty} (-1)^{n}\frac{\theta^{2n+1}}{(2n+1)!}(\vec{v}\cdot\vec{\sigma})^{2n}(\vec{v}\cdot\vec{\sigma})i \\
    &= i\sum_{n=0}^{\infty} (-1)^{n}\frac{\theta^{2n+1}}{(2n+1)!}(\vec{v}\cdot\vec{\sigma})i \\
    &= i\sin(\theta)\vec{v}\cdot\vec{\sigma}
\end{align*}

Mostrando então que:
\begin{align*}
    \exp(i\theta \vec{v}\cdot \vec{\sigma}) = \cos(\theta)I+i\sin(\theta)\vec{v}\cdot \vec{\sigma}
\end{align*}