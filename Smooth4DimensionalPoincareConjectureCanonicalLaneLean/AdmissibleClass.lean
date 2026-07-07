import Smooth4DimensionalPoincareConjectureCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace Smooth4DimensionalPoincareConjectureCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end Smooth4DimensionalPoincareConjectureCanonicalLaneLean
end HautevilleHouse
