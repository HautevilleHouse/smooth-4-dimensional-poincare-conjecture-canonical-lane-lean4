import Smooth4DimensionalPoincareConjectureCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace Smooth4DimensionalPoincareConjectureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.sourceKeyChecked A.object.theoremObjectChecked

end Smooth4DimensionalPoincareConjectureCanonicalLaneLean
end HautevilleHouse
