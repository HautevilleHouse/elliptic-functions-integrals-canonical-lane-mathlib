import EllipticFunctionsIntegralsCanonicalLaneLean.ComplexToriPackage

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

structure EllipticIntegralsPackage (T : ComplexToriPackage) where
  firstKindIntegral : Prop
  secondKindIntegral : Prop
  thirdKindIntegral : Prop
  completeIntegralsDefined : Prop
  nomeModularParameter : Prop

default instance : ComplexStructure T.torusManifold := T.complexStructure

structure EllipticIntegralsEvidence {T : ComplexToriPackage} (E : EllipticIntegralsPackage T) where
  firstKindIntegralClosed : E.firstKindIntegral
  secondKindIntegralClosed : E.secondKindIntegral
  thirdKindIntegralClosed : E.thirdKindIntegral
  completeIntegralsDefinedClosed : E.completeIntegralsDefined
  nomeModularParameterClosed : E.nomeModularParameter

def EllipticIntegralsClosed {T : ComplexToriPackage} (E : EllipticIntegralsPackage T) : Prop :=
  E.firstKindIntegral ∧ E.secondKindIntegral ∧ E.thirdKindIntegral ∧
  E.completeIntegralsDefined ∧ E.nomeModularParameter

theorem elliptic_integrals_closed_from_evidence {T : ComplexToriPackage}
    (E : EllipticIntegralsPackage T) (Ev : EllipticIntegralsEvidence E) :
    EllipticIntegralsClosed E := by
  exact And.intro Ev.firstKindIntegralClosed
    (And.intro Ev.secondKindIntegralClosed
      (And.intro Ev.thirdKindIntegralClosed
        (And.intro Ev.completeIntegralsDefinedClosed Ev.nomeModularParameterClosed)))

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse