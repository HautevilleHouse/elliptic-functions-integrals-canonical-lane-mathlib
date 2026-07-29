import EllipticFunctionsIntegralsCanonicalLaneLean.AdmissibleClass

/-!
# Modular Forms Package
-/

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

structure ModularFormsPackage where
  modularGroup : Prop
  weightOneForms : Prop
  discriminantFunction : Prop
  etaFunction : Prop

structure ModularFormsEvidence (M : ModularFormsPackage) where
  modularGroupClosed : M.modularGroup
  weightOneFormsClosed : M.weightOneForms
  discriminantFunctionClosed : M.discriminantFunction
  etaFunctionClosed : M.etaFunction

def ModularFormsClosed (M : ModularFormsPackage) : Prop :=
  M.modularGroup ∧ M.weightOneForms ∧ M.discriminantFunction ∧ M.etaFunction

theorem modular_forms_closed_from_evidence (M : ModularFormsPackage)
    (Ev : ModularFormsEvidence M) : ModularFormsClosed M := by
  exact And.intro Ev.modularGroupClosed
    (And.intro Ev.weightOneFormsClosed
      (And.intro Ev.discriminantFunctionClosed Ev.etaFunctionClosed))

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse