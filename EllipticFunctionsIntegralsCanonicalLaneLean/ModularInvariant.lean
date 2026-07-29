import canonicalLaneMathlib.AdmissibleClass
import EllipticFunctionsIntegralsCanonicalLaneLean.EllipticCurve

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

structure ModularInvariantPackage (E : EllipticCurvePackage) where
  jValue : E.baseField
  modularProperty : Prop
  cuspCondition : Prop
  modularPropertyClosed : modularProperty
  cuspConditionClosed : cuspCondition

def ModularInvariantClosed (E : EllipticCurvePackage) (M : ModularInvariantPackage E) : Prop :=
  M.modularProperty ∧ M.cuspCondition

theorem modular_invariant_closed_from_evidence (E : EllipticCurvePackage) (M : ModularInvariantPackage E) :
    ModularInvariantClosed E M := by
  exact And.intro M.modularPropertyClosed M.cuspConditionClosed

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse