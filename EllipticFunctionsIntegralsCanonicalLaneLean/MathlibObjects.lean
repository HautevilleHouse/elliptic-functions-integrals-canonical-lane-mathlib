import EllipticFunctionsIntegralsCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

structure EllipticSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EllipticAdmittedObject where
  space : EllipticSpace
  complexPlane : Prop
  doublyPeriodic : Prop
  genusOne : Prop
  curveModel : Type
  curveTopology : TopologicalSpace curveModel
  isomorphicToTorus : Prop
  conclusion : isomorphicToTorus

structure EllipticEndgameState where
  object : EllipticAdmittedObject

def EllipticWitnessClosed (O : EllipticAdmittedObject) : Prop :=
  O.isomorphicToTorus

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse