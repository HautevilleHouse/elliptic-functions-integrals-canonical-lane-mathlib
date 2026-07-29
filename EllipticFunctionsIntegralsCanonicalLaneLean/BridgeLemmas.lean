import canonicalLaneMathlib.AdmissibleClass
import EllipticFunctionsIntegralsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EllipticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse