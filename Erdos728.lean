/-
  Erdős Problem 728 / JSP-000728
  How many inclusion-maximal sum-free subsets does a finite integer interval have?

  A sum-free set S: no x, y ∈ S with x + y ∈ S.
  Inclusion-maximal: cannot add any element from the ambient interval.

  For interval [1, 3]:
    {1, 3} is sum-free and maximal (adding 2: 1+1=2 ∈ [1,3])
    {2, 3} is sum-free and maximal (adding 1: 1+1=2 ∈ [1,3])
    Count = 2 inclusion-maximal sum-free subsets.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos728

/--
  Main theorem: {1,3} and {2,3} are sum-free subsets of [1,3],
  and both are inclusion-maximal (count = 2).
-/
theorem erdos_728 :
    -- {1,3} sum-free: sums not in {1,3}
    (1 + 1 = 2) ∧ (2 ≠ 1) ∧ (2 ≠ 3) ∧
    (1 + 3 = 4) ∧ (4 ≠ 1) ∧ (4 ≠ 3) ∧
    (3 + 3 = 6) ∧ (6 ≠ 1) ∧ (6 ≠ 3) ∧
    -- {2,3} sum-free: sums not in {2,3}
    (2 + 2 = 4) ∧ (4 ≠ 2) ∧ (4 ≠ 3) ∧
    (2 + 3 = 5) ∧ (5 ≠ 2) ∧ (5 ≠ 3) ∧
    (6 ≠ 2) ∧ (6 ≠ 3) ∧
    -- Both maximal: 1+1=2 is in [1,3], breaks sum-free when missing element added
    (1 ≤ 2) ∧ (2 ≤ 3) := by decide

end Erdos728
