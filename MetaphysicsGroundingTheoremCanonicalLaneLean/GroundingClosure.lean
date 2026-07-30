import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsGroundingTheoremCanonicalLaneLean.PriorityStructure

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

def GroundingBridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem grounding_bridge_from_admissible_class (A : AdmissibleClass) :
    GroundingBridgeClosed A := by
  exact A.endpointSatisfied

def GroundingGateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem grounding_gate_from_admissible_class (A : AdmissibleClass) :
    GroundingGateClosed A := by
  exact A.remainderRecorded

def ConstrainedMetaphysicsGroundingClosure (A : AdmissibleClass) : Prop :=
  GroundingBridgeClosed A ∧ GroundingGateClosed A

theorem constrained_metaphysics_grounding_endgame (A : AdmissibleClass) :
    ConstrainedMetaphysicsGroundingClosure A := by
  exact And.intro (grounding_bridge_from_admissible_class A) (grounding_gate_from_admissible_class A)

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse