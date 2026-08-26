
## Physics Education companion code

The file [`PhysicsEducation_MultirankProfile.wl`](PhysicsEducation_MultirankProfile.wl) contains the Mathematica routine and examples accompanying the manuscript

**“Exploring Multipartite Entanglement through Tensor Flattening with Mathematica.”**

This pedagogical version labels each tensor flattening by its corresponding subsystem partition, making the connection between bipartitions, Schmidt ranks, and multipartite entanglement explicit.

It includes:

- the `MultirankProfile` routine;

- a three-qubit W-state example;

- a four-qubit example illustrating one-versus-three and two-versus-two bipartitions;

- a three-qutrit example;

- additional GHZ, biseparable, and fully separable examples for classroom exploration.

The original Mathematica notebook `Flattening.nb` is retained separately.



[![DOI](https://zenodo.org/badge/974492044.svg)](https://doi.org/10.5281/zenodo.15299720)

## ℓ-Multilinear Ranks from Tensor Flattenings

This repository contains Mathematica code for computing the ℓ-multilinear ranks (ℓ-multiranks) of an order-n tensor, representing multipartite quantum states, via tensor flattenings.

## Features
- Computes l-multilinear ranks for arbitrary order-n tensors representing multipartite quantum states in the Hilbert space H=⊗_{j=1}^{n}C^{d_j}.
- Supports tensor flattening along different partitions and calculates the rank of each flattening.
- Useful for analyzing entanglement structure in multipartite quantum systems.

## Requirements
- Mathematica 12+ (earlier versions might also work)

## Files included:

- Flattening.nb: main package file
- README.md description file


## License: MIT

This version is stable and ready for scientific citation.

## 📜 Citation

If you use this code, please cite it as:

Masoud Gharahi. (2025). ℓ-Multiranks of Multipartite Quantum States via Tensor Flattening: A Mathematica Codebase https://doi.org/10.48550/arXiv.2601.11551


## References:

1. M. Gharahi, S. Mancini, and G. Ottaviani, Fine-structure classification of multiqubit entanglement by algebraic geometry, Phys. Rev. Research 2, 043003 (2020). https://doi.org/10.1103/PhysRevResearch.2.043003
2. M. Gharahi and S. Mancini, Algebraic-geometric characterization of tripartite entanglement, Phys. Rev. A 104, 042402 (2021). https://doi.org/10.1103/PhysRevA.104.042402
3. M. Gharahi, Classifying entanglement by algebraic geometry, Int. J. Quant. Inf. 22, 2350047 (2024). https://doi.org/10.1142/S0219749923500478
4. M. Gharahi and S. Mancini, Entangled Subspaces through Algebraic Geometry, arXiv:2504.11525 (2025). https://doi.org/10.48550/arXiv.2504.11525
