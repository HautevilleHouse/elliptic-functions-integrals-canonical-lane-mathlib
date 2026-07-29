import canonicalLaneMathlib.AdmissibleClass
import EllipticFunctionsIntegralsCanonicalLaneLean.EllipticIntegralFundamentals

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

structure JacobiEllipticData (m : ℂ) where
  sn : ℂ → ℂ
  cn : ℂ → ℂ
  dn : ℂ → ℂ
  identity : sn^2 + cn^2 = 1
  identity2 : m*sn^2 + dn^2 = 1
  derivatives : (sn)' = cn*dn ∧ (cn)' = -sn*dn ∧ (dn)' = -m*sn*cn

structure JacobiModulus (m : ℂ) where
  delta : ℂ
  nome : ℂ

def JacobiEllipticClosed (m : ℂ) (J : JacobiEllipticData m) : Prop :=
  J.identity ∧ J.identity2

theorem jacobi_elliptic_closed (m : ℂ) (J : JacobiEllipticData m) (h1 : J.identity) (h2 : J.identity2) :
    JacobiEllipticClosed m J := by
  exact And.intro h1 h2

structure JacobiEllipticEvidence (m : ℂ) (J : JacobiEllipticData m) where
  identityClosed : J.identity
  identity2Closed : J.identity2

theorem jacobi_elliptic_closed_from_evidence (m : ℂ) (J : JacobiEllipticData m) (E : JacobiEllipticEvidence m J) :
    JacobiEllipticClosed m J := by
  exact And.intro E.identityClosed E.identity2Closed

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse