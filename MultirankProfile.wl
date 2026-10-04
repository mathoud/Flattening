(* ::Package:: *)

(*
  PhysicsEducation_MultirankProfile.wl

  Companion code for the article:

  "Exploring Multipartite Entanglement through Tensor Flattening with Mathematica"

  Author: Masoud Gharahi

  Purpose:
  Compute and label the ranks of all bipartition-induced tensor
  flattenings of a pure multipartite quantum state.

  Notes:
  - Mathematica tensor indices start from 1.
  - Computational-basis labels in quantum information usually start from 0.
  - Exact amplitudes are recommended whenever possible.
  - For even n, complementary subsets at ell = n/2 are retained separately
    in the output for pedagogical transparency.
*)


ClearAll[MultirankProfile];

MultirankProfile[T_] := Module[
  {n = ArrayDepth[T]},
  
  Table[
    Table[
      With[
        {rest = Complement[Range[n], I]},
        
        {
          I,
          MatrixRank[
            Flatten[T, {I, rest}]
          ]
        }
      ],
      {I, Subsets[Range[n], {ell}]}
    ],
    {ell, 1, Floor[n/2]}
  ]
];


(* ================================================================ *)
(* Example 1: Three-qubit W state                                  *)
(* ================================================================ *)

WStateTensor = SparseArray[
  {
    {1, 1, 2} -> 1,
    {1, 2, 1} -> 1,
    {2, 1, 1} -> 1
  },
  {2, 2, 2}
];

WStateProfile = MultirankProfile[WStateTensor];

Print["Three-qubit W state:"];
Print[WStateProfile];

(*
Expected output:

{{{{1}, 2}, {{2}, 2}, {{3}, 2}}}

Interpretation:

1|23  -> rank 2
2|13  -> rank 2
3|12  -> rank 2

Hence the state is genuinely multipartite entangled.
*)


(* ================================================================ *)
(* Example 2: Four-qubit state                                     *)
(* ================================================================ *)

FourQubitTensor = SparseArray[
  {
    {1, 1, 1, 1} -> 1,
    {1, 1, 2, 2} -> 1,
    {2, 2, 1, 1} -> 1,
    {2, 2, 2, 2} -> -1
  },
  {2, 2, 2, 2}
];

FourQubitProfile = MultirankProfile[FourQubitTensor];

Print["Four-qubit example:"];
Print[FourQubitProfile];

(*
Expected output:

{
 {{{1}, 2}, {{2}, 2}, {{3}, 2}, {{4}, 2}},
 {{{1, 2}, 2}, {{1, 3}, 4}, {{1, 4}, 4},
  {{2, 3}, 4}, {{2, 4}, 4}, {{3, 4}, 2}}
}

Interpretation:

One-versus-three cuts:
1|234  -> rank 2
2|134  -> rank 2
3|124  -> rank 2
4|123  -> rank 2

Physically distinct two-versus-two cuts:
12|34  -> rank 2
13|24  -> rank 4
14|23  -> rank 4

The remaining entries correspond to complementary cuts:
23|14, 24|13, and 34|12.
*)


(* ================================================================ *)
(* Example 3: Three-qutrit state                                   *)
(* ================================================================ *)

p0 = {1, 0, 0};
p1 = {0, 1, 0};
p2 = {0, 0, 1};

ThreeQutritTensor =
    TensorProduct[p0, p0, p2] +
    TensorProduct[p0, p2, p0] +
    TensorProduct[p2, p0, p0] +
    TensorProduct[p0, p1, p1] +
    TensorProduct[p1, p0, p1] +
    TensorProduct[p1, p1, p0];

ThreeQutritProfile = MultirankProfile[ThreeQutritTensor];

Print["Three-qutrit example:"];
Print[ThreeQutritProfile];

(*
Expected output:

{{{{1}, 3}, {{2}, 3}, {{3}, 3}}}

Interpretation:

1|23  -> rank 3
2|13  -> rank 3
3|12  -> rank 3
*)


(* ================================================================ *)
(* Optional examples for classroom exploration                     *)
(* ================================================================ *)


(* Three-qubit GHZ state *)

GHZTensor = SparseArray[
  {
    {1, 1, 1} -> 1,
    {2, 2, 2} -> 1
  },
  {2, 2, 2}
];

GHZProfile = MultirankProfile[GHZTensor];

Print["Three-qubit GHZ state:"];
Print[GHZProfile];

(*
Expected output:

{{{{1}, 2}, {{2}, 2}, {{3}, 2}}}
*)


(* Biseparable state:
   |0> \[TensorProduct] (|00> + |11>)
*)

BiseparableTensor = SparseArray[
  {
    {1, 1, 1} -> 1,
    {1, 2, 2} -> 1
  },
  {2, 2, 2}
];

BiseparableProfile = MultirankProfile[BiseparableTensor];

Print["Biseparable state:"];
Print[BiseparableProfile];

(*
Expected output:

{{{{1}, 1}, {{2}, 2}, {{3}, 2}}}

Interpretation:

1|23  -> rank 1
2|13  -> rank 2
3|12  -> rank 2

The state is separable across 1|23 and therefore is not GME.
*)


(* Fully separable state |000> *)

FullySeparableTensor = SparseArray[
  {
    {1, 1, 1} -> 1
  },
  {2, 2, 2}
];

FullySeparableProfile = MultirankProfile[FullySeparableTensor];

Print["Fully separable state:"];
Print[FullySeparableProfile];

(*
Expected output:

{{{{1}, 1}, {{2}, 1}, {{3}, 1}}}
*)


(* ================================================================ *)
(* Numerical-rank note                                              *)
(* ================================================================ *)

(*
For exact rank calculations, exact integers, rational numbers,
or symbolic amplitudes are recommended.

For machine-precision numerical tensors, MatrixRank may depend on
the numerical tolerance if the matrix is close to rank deficient.

Example:

MatrixRank[matrix, Tolerance -> 10^-10]

may be used when an explicit numerical tolerance is appropriate.
*)
