import canonicalLaneMathlib.AdmissibleClass
import EllipticFunctionsIntegralsCanonicalLaneLean.BridgeLemmas
import EllipticFunctionsIntegralsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

def ConstrainedEllipticFunctionsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_elliptic_functions_endgame (A : AdmissibleClass) :
    ConstrainedEllipticFunctionsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse