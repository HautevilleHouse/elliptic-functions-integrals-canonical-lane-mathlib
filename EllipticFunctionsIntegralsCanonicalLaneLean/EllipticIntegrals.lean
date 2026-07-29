import EllipticFunctionsIntegralsCanonicalLaneLean.ThetaFunctions

/-!
# Elliptic Integrals Package
-/

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

structure EllipticIntegralsPackage {T : ThetaFunctionsPackage} where
  incompleteIntegrals : Prop
  completeIntegrals : Prop
  legendreRelation : Prop
  reductionToStandardForm : Prop

structure EllipticIntegralsEvidence {T : ThetaFunctionsPackage} (E : EllipticIntegralsPackage T) where
  incompleteIntegralsClosed : E.incompleteIntegrals
  completeIntegralsClosed : E.completeIntegrals
  legendreRelationClosed : E.legendreRelation
  reductionToStandardFormClosed : E.reductionToStandardForm

def EllipticIntegralsClosed {T : ThetaFunctionsPackage} (E : EllipticIntegralsPackage T) : Prop :=
  E.incompleteIntegrals ∧ E.completeIntegrals ∧ E.legendreRelation ∧ E.reductionToStandardForm

theorem elliptic_integrals_closed_from_evidence
    {T : ThetaFunctionsPackage} (E : EllipticIntegralsPackage T)
    (Ev : EllipticIntegralsEvidence E) : EllipticIntegralsClosed E := by
  exact And.intro Ev.incompleteIntegralsClosed
    (And.intro Ev.completeIntegralsClosed
      (And.intro Ev.legendreRelationClosed Ev.reductionToStandardFormClosed))

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse