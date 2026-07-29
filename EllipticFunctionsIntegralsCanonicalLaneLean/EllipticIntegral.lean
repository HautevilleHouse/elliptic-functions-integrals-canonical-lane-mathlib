import canonicalLaneMathlib.AdmissibleClass
import EllipticFunctionsIntegralsCanonicalLaneLean.WeierstrassPFunction

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

structure EllipticIntegralPackage (E : EllipticCurvePackage) (W : WeierstrassPFunctionPackage E) where
  firstKind : Prop
  secondKind : Prop
  thirdKind : Prop
  periodRelations : Prop
  firstKindClosed : firstKind
  secondKindClosed : secondKind
  thirdKindClosed : thirdKind
  periodRelationsClosed : periodRelations

def EllipticIntegralClosed (E : EllipticCurvePackage) (W : WeierstrassPFunctionPackage E) (I : EllipticIntegralPackage E W) : Prop :=
  I.firstKind ∧ I.secondKind ∧ I.thirdKind ∧ I.periodRelations

theorem elliptic_integral_closed_from_evidence (E : EllipticCurvePackage) (W : WeierstrassPFunctionPackage E) (I : EllipticIntegralPackage E W) :
    EllipticIntegralClosed E W I := by
  exact And.intro I.firstKindClosed (And.intro I.secondKindClosed (And.intro I.thirdKindClosed I.periodRelationsClosed))

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse