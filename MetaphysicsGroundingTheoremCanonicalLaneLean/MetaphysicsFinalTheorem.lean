import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsGroundingTheoremCanonicalLaneLean.GroundingBridge
import HautevilleHouse.MetaphysicsGroundingTheoremCanonicalLaneLean.GroundingGate

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

def ConstrainedMetaphysicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_metaphysics_endgame (A : AdmissibleClass) : ConstrainedMetaphysicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse