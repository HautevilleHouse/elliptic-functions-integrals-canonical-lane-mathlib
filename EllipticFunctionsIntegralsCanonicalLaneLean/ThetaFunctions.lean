import EllipticFunctionsIntegralsCanonicalLaneLean.ModularForms

/-!
# Theta Functions Package
-/

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

structure ThetaFunctionsPackage {M : ModularFormsPackage} where
  jacobiTheta : Prop
  thetaNullSeries : Prop
  transformationFormula : Prop
  productRepresentation : Prop

structure ThetaFunctionsEvidence {M : ModularFormsPackage} (T : ThetaFunctionsPackage M) where
  jacobiThetaClosed : T.jacobiTheta
  thetaNullSeriesClosed : T.thetaNullSeries
  transformationFormulaClosed : T.transformationFormula
  productRepresentationClosed : T.productRepresentation

def ThetaFunctionsClosed {M : ModularFormsPackage} (T : ThetaFunctionsPackage M) : Prop :=
  T.jacobiTheta ∧ T.thetaNullSeries ∧ T.transformationFormula ∧ T.productRepresentation

theorem theta_functions_closed_from_evidence
    {M : ModularFormsPackage} (T : ThetaFunctionsPackage M)
    (Ev : ThetaFunctionsEvidence T) : ThetaFunctionsClosed T := by
  exact And.intro Ev.jacobiThetaClosed
    (And.intro Ev.thetaNullSeriesClosed
      (And.intro Ev.transformationFormulaClosed Ev.productRepresentationClosed))

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse