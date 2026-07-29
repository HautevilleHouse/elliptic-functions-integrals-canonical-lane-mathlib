import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

structure EllipticSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier

default instance : TopologicalSpace (EllipticSpace.carrier) := inferInstance

structure EllipticAdmittedObject where
  space : EllipticSpace
  lattice : Type
  latticeDiscrete : Prop
  latticeRankTwo : Prop
  conclusion : Prop

default instance : TopologicalSpace (EllipticAdmittedObject.space.carrier) := inferInstance

structure EllipticEndgameState where
  object : EllipticAdmittedObject

def EllipticWitnessClosed (O : EllipticAdmittedObject) : Prop := O.conclusion

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse