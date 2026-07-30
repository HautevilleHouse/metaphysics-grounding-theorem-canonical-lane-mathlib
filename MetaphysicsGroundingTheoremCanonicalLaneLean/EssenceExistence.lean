import HautevilleHouse.MetaphysicsGroundingTheoremCanonicalLaneLean.GroundingRelation

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

structure EssenceExistencePackage {G : GroundingRelation} where
  essentialProperty : Prop
  groundNecessary : G.ground → G.grounded → Prop
  existenceCondition : Prop
  uniquenessCondition : Prop

structure EssenceExistenceEvidence {G : GroundingRelation} (E : EssenceExistencePackage G) where
  essentialPropertyClosed : E.essentialProperty
  existenceConditionClosed : E.existenceCondition
  uniquenessConditionClosed : E.uniquenessCondition

def EssenceExistenceClosed {G : GroundingRelation} (E : EssenceExistencePackage G) : Prop :=
  E.essentialProperty ∧ E.existenceCondition ∧ E.uniquenessCondition

theorem essence_existence_closed_from_evidence {G : GroundingRelation} (E : EssenceExistencePackage G) (Ev : EssenceExistenceEvidence E) : EssenceExistenceClosed E := by
  exact And.intro Ev.essentialPropertyClosed (And.intro Ev.existenceConditionClosed Ev.uniquenessConditionClosed)

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse