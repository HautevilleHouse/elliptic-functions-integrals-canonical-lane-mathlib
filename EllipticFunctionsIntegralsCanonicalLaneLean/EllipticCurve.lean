import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.EllipticCurve

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

structure EllipticCurvePackage where
  baseField : Type
  a1 a2 a3 a4 a6 : baseField
  discriminant : baseField
  nonsingular : Prop
  jInvariant : baseField
  nonsingularClosed : nonsingular

def EllipticCurveClosed (E : EllipticCurvePackage) : Prop :=
  E.nonsingular

theorem elliptic_curve_closed_from_evidence (E : EllipticCurvePackage) :
    EllipticCurveClosed E := by
  exact E.nonsingularClosed

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse