import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsGroundingTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.MetaphysicsGroundingTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

def ConstrainedGroundingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_grounding_endgame (A : AdmissibleClass) :
    ConstrainedGroundingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse
