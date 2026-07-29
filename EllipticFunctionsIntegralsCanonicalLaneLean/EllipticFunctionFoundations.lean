import EllipticFunctionsIntegralsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

structure WeierstrassPEllipticFunction where
  lattice : ℂ × ℂ
  weierstrassP : ℂ → ℂ
  doublyPeriodic : Prop
  meromorphic : Prop
  laurentExpansionKnown : Prop

def weierstrassPPeriodic (w : WeierstrassPEllipticFunction) : Prop :=
  w.doublyPeriodic

theorem weierstrassP_meromorphic (w : WeierstrassPEllipticFunction) : w.meromorphic := by
  exact w.meromorphic

structure JacobiThetaEllipticFunction where
  nome : ℂ
  theta1 : ℂ → ℂ
  theta2 : ℂ → ℂ
  theta3 : ℂ → ℂ
  theta4 : ℂ → ℂ
  quasiPeriodic : Prop
  entire : Prop

def jacobiThetaQuasiPeriodic (j : JacobiThetaEllipticFunction) : Prop :=
  j.quasiPeriodic

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse