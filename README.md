[![DOI](https://zenodo.org/badge/974492044.svg)](https://doi.org/10.5281/zenodo.15299720)

## l-Multilinear Ranks from Tensor Flattenings

This repository contains Mathematica code for computing the l-multilinear ranks (l-multiranks) of an order-n tensor, representing multipartite quantum states, via tensor flattenings.

## Features
- Computes flattenings along arbitrary subsets of modes.
- Calculates the rank of each flattening.
- Useful for analyzing entanglement structure in multipartite quantum systems.

## Requirements
- Mathematica 12+ (earlier versions might also work)

## Files included:

Flattening.nb: main package file
README.md description file

## l-multirank
In multilinear algebra, the vectorization of an order-$n$ tensor, as in Eq.\eqref{n-partite}, is a form of tensor reshaping. Here, we consider a specific type of tensor reshaping known as tensor flattening (or matricization). This process involves partitioning the $n$-fold tensor product space $\mathcal{H}_\delta$ to 2-fold tensor product spaces with higher dimensions. To formalize this partitioning, we define an ordered $\ell$-tuple $I=(j_1,\cdots,j_{\ell})$, where $1\leq\ell\leq\lfloor\frac{n}{2}\rfloor$ and $1\leq j_1<\cdots<j_{\ell}\leq{n}$. The complementary partition is represented by the ordered $(n-\ell)$-tuple $\bar{I}$, such that $I\cup\bar{I}=\{1,2,\ldots,n\}$. Consequently, the Hilbert space will be written as $\mathcal{H}_{\delta}\simeq\mathcal{H}_{I}\otimes\mathcal{H}_{\bar{I}}$, where $\mathcal{H}_{I}=\otimes_{\iota=j_1}^{j_{\ell}}\mathbbm{C}^{d_{\iota}}$ and $\mathcal{H}_{\bar{I}}$ is the complementary Hilbert space. Using Dirac notation, the matricization of $|\psi\rangle\in\mathcal{H}_{\delta}$ reads $\mathcal{M}_{I}[\psi]=\left(\langle{e_1}|\psi\rangle,\ldots,\langle{e_{d_{I}}}|\psi\rangle\right)^{\rm{T}}$, where $\{|e_m\rangle=|i_{j_1}\cdots{i_{j_\ell}}\rangle\mid{i_{j_k}}\in\mathbbm{Z}_{d_{j_k}}~\wedge~1\leq k\leq\ell\}_{m=1}^{d_I}$ is the canonical basis of $d_I$-dimensional Hilbert space $\mathcal{H}_{I}$, with $d_I=\prod_{\iota=j_1}^{j_{\ell}}d_{\iota}$, and ${\rm{T}}$ denotes the matrix transposition. Thus, for a given state $|\psi\rangle$, there exist as many matrix representations $\mathcal{M}_{I}[\psi]$ as the number of possible $\ell$-tuples $I$, which is ${\binom{n}{\ell}}$. This allows us to define the $\ell$-multilinear rank ($\ell$-multilrank) of $|\psi\rangle$ as the ${\binom{n}{\ell}}$-tuple of ranks of the $\mathcal{M}_{I}[\psi]$.

## License: MIT

This version is stable and ready for scientific citation.

## 📜 Citation

If you use this code, please cite it as:

Masoud Gharahi. (2025). l-Multilinear Ranks of Multipartite Quantum States via Tensor Flattening: A Mathematica Codebase (Version 1.0.2) [Software]. Zenodo. https://doi.org/10.5281/zenodo.15299720


References:

1. M. Gharahi, S. Mancini, and G. Ottaviani, Fine-structure classification of multiqubit entanglement by algebraic geometry, Phys. Rev. Research 2, 043003 (2020). https://doi.org/10.1103/PhysRevResearch.2.043003
2. M. Gharahi and S. Mancini, Algebraic-geometric characterization of tripartite entanglement, Phys. Rev. A 104, 042402 (2021). https://doi.org/10.1103/PhysRevA.104.042402
3. M. Gharahi, Classifying entanglement by algebraic geometry, Int. J. Quant. Inf. 22, 2350047 (2024). https://doi.org/10.1142/S0219749923500478
4. M. Gharahi and S. Mancini, Entangled Subspaces through Algebraic Geometry, arXiv:2504.11525 (2025). https://doi.org/10.48550/arXiv.2504.11525
