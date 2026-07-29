import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

structure EllipticLattice where
  omega1 : ℂ
  omega2 : ℂ
  nondegenerate : omega1 / omega2 ∉ ℝ

def fundamentalParallelogram (L : EllipticLattice) : Set ℂ :=
  {z : ℂ | ∃ a b : ℝ, 0 ≤ a ∧ a < 1 ∧ 0 ≤ b ∧ b < 1 ∧ z = a * L.omega1 + b * L.omega2}

structure EllipticIntegralData where
  lattice : EllipticLattice
  modularParameter : ℂ
  modulus : ℂ
  periods : ℂ × ℂ

structure EllipticIntegralEvidence (D : EllipticIntegralData) where
  latticeNondegenerate : D.lattice.nondegenerate
  modularParameterInUpperHalfPlane : D.modularParameter.im > 0
  periodsClosed : Prop

def EllipticIntegralClosed (D : EllipticIntegralData) : Prop :=
  D.lattice.nondegenerate ∧ D.modularParameter.im > 0

theorem elliptic_integral_closed_from_evidence (D : EllipticIntegralData) (E : EllipticIntegralEvidence D) :
    EllipticIntegralClosed D := by
  exact And.intro E.latticeNondegenerate E.modularParameterInUpperHalfPlane

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse