import EllipticFunctionsIntegralsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

structure CompleteEllipticIntegral where
  modulus : ℂ
  completeFirstKind : ℂ
  completeSecondKind : ℂ
  modulusSquare : ℂ
  legendreRelation : Prop

def completeFirstKindDefined (c : CompleteEllipticIntegral) : Prop :=
  c.completeFirstKind = c.completeFirstKind

structure IncompleteEllipticIntegral where
  amplitude : ℂ
  modulus : ℂ
  incompleteFirstKind : ℂ
  incompleteSecondKind : ℂ
  incompleteThirdKind : ℂ
  amplitudeModulusRelation : Prop

def incompleteFirstKindDefined (i : IncompleteEllipticIntegral) : Prop :=
  i.incompleteFirstKind = i.incompleteFirstKind

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse