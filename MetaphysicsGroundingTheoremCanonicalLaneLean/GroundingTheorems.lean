import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsGroundingTheoremCanonicalLaneLean.MetaphysicalGroundingFramework

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

structure GroundingTheorem where
  groundObject : Type u
  groundedObject : Type v
  groundingRelation : GroundingRelation
  fundamentalGround : Prop
  fullExplanatoryPower : Prop
  wellFoundedness : Prop

def GroundingTheoremClosed (T : GroundingTheorem) : Prop :=
  GroundingRelationClosed T.groundingRelation ∧ T.fundamentalGround ∧ T.fullExplanatoryPower ∧ T.wellFoundedness

structure GroundingTheoremEvidence (T : GroundingTheorem) where
  groundingRelationClosed : GroundingRelationClosed T.groundingRelation
  fundamentalGroundClosed : T.fundamentalGround
  fullExplanatoryPowerClosed : T.fullExplanatoryPower
  wellFoundednessClosed : T.wellFoundedness

theorem grounding_theorem_closed_from_evidence (T : GroundingTheorem) (E : GroundingTheoremEvidence T) :
    GroundingTheoremClosed T := by
  exact And.intro E.groundingRelationClosed
    (And.intro E.fundamentalGroundClosed
      (And.intro E.fullExplanatoryPowerClosed E.wellFoundednessClosed))

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse
