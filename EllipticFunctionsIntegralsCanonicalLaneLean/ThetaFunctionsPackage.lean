import EllipticFunctionsIntegralsCanonicalLaneLean.EllipticIntegralsPackage

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

structure ThetaFunctionsPackage {T : ComplexToriPackage} (E : EllipticIntegralsPackage T) where
  thetaOneDefined : Prop
  thetaTwoDefined : Prop
  thetaThreeDefined : Prop
  thetaFourDefined : Prop
  jacobiIdentity : Prop
  thetaAdditionFormulas : Prop

default instance : ComplexStructure T.torusManifold := T.complexStructure

structure ThetaFunctionsEvidence {T : ComplexToriPackage} {E : EllipticIntegralsPackage T}
    (Th : ThetaFunctionsPackage E) where
  thetaOneDefinedClosed : Th.thetaOneDefined
  thetaTwoDefinedClosed : Th.thetaTwoDefined
  thetaThreeDefinedClosed : Th.thetaThreeDefined
  thetaFourDefinedClosed : Th.thetaFourDefined
  jacobiIdentityClosed : Th.jacobiIdentity
  thetaAdditionFormulasClosed : Th.thetaAdditionFormulas

def ThetaFunctionsClosed {T : ComplexToriPackage} {E : EllipticIntegralsPackage T}
    (Th : ThetaFunctionsPackage E) : Prop :=
  Th.thetaOneDefined ∧ Th.thetaTwoDefined ∧ Th.thetaThreeDefined ∧
  Th.thetaFourDefined ∧ Th.jacobiIdentity ∧ Th.thetaAdditionFormulas

theorem theta_functions_closed_from_evidence {T : ComplexToriPackage} {E : EllipticIntegralsPackage T}
    (Th : ThetaFunctionsPackage E) (Ev : ThetaFunctionsEvidence Th) :
    ThetaFunctionsClosed Th := by
  exact And.intro Ev.thetaOneDefinedClosed
    (And.intro Ev.thetaTwoDefinedClosed
      (And.intro Ev.thetaThreeDefinedClosed
        (And.intro Ev.thetaFourDefinedClosed
          (And.intro Ev.jacobiIdentityClosed Ev.thetaAdditionFormulasClosed))))

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse