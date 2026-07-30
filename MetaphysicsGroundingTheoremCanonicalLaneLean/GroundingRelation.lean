import HautevilleHouse.MetaphysicsGroundingTheoremCanonicalLaneLean.AdmissibleClass
import Mathlib.Logic.Relation

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

structure GroundingRelation where
  ground : Type u
  grounded : Type v
  relation : ground → grounded → Prop
  isWellFounded : Prop
  isPartialOrder : Prop

structure GroundingEvidence (G : GroundingRelation) where
  wellFoundedClosed : G.isWellFounded
  partialOrderClosed : G.isPartialOrder

def GroundingClosed (G : GroundingRelation) : Prop :=
  G.isWellFounded ∧ G.isPartialOrder

theorem grounding_closed_from_evidence (G : GroundingRelation) (E : GroundingEvidence G) : GroundingClosed G := by
  exact And.intro E.wellFoundedClosed E.partialOrderClosed

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse