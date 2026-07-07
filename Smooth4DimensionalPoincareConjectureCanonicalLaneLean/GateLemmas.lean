import Smooth4DimensionalPoincareConjectureCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace Smooth4DimensionalPoincareConjectureCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end Smooth4DimensionalPoincareConjectureCanonicalLaneLean
end HautevilleHouse
