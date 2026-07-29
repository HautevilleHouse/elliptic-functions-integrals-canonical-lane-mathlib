import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

structure EllipticAdmittedObject where
  lattice : Type
  latticeAdd : Add lattice
  latticeTopology : TopologicalSpace lattice
  periodicFunctions : Prop
  doublyPeriodic : Prop
  meromorphic : Prop
  conclusion : periodicFunctions

structure AdmissibleClass where
  object : EllipticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EllipticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse