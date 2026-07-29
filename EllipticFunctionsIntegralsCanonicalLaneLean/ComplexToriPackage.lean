import EllipticFunctionsIntegralsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

structure ComplexToriPackage where
  lattice : Type
  torusManifold : Type
  complexStructure : Type
  weierstrassPDefined : Prop
  weierstrassPDifferentialEquation : Prop
  spFunctionDefined : Prop
  zetaFunctionDefined : Prop

default instance : ComplexStructure ComplexToriPackage.torusManifold := by
  exact ComplexToriPackage.complexStructure

structure ComplexToriEvidence (T : ComplexToriPackage) where
  weierstrassPDefinedClosed : T.weierstrassPDefined
  weierstrassPDifferentialEquationClosed : T.weierstrassPDifferentialEquation
  spFunctionDefinedClosed : T.spFunctionDefined
  zetaFunctionDefinedClosed : T.zetaFunctionDefined

def ComplexToriClosed (T : ComplexToriPackage) : Prop :=
  T.weierstrassPDefined ∧ T.weierstrassPDifferentialEquation ∧
  T.spFunctionDefined ∧ T.zetaFunctionDefined

theorem complex_tori_closed_from_evidence (T : ComplexToriPackage) (E : ComplexToriEvidence T) : ComplexToriClosed T := by
  exact And.intro E.weierstrassPDefinedClosed
    (And.intro E.weierstrassPDifferentialEquationClosed
      (And.intro E.spFunctionDefinedClosed E.zetaFunctionDefinedClosed))

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse