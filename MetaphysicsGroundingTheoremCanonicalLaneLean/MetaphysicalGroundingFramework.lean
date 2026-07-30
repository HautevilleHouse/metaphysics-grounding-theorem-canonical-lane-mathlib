import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

structure GroundingRelation where
  ground : Type u
  grounded : Type v
  explanation : Prop
  necessitation : Prop
  irreflexivity : Prop
  asymmetry : Prop
  transitivity : Prop

def GroundingRelationClosed (G : GroundingRelation) : Prop :=
  G.explanation ∧ G.necessitation ∧ G.irreflexivity ∧ G.asymmetry ∧ G.transitivity

structure GroundingEvidence (G : GroundingRelation) where
  explanationClosed : G.explanation
  necessitationClosed : G.necessitation
  irreflexivityClosed : G.irreflexivity
  asymmetryClosed : G.asymmetry
  transitivityClosed : G.transitivity

theorem grounding_relation_closed_from_evidence (G : GroundingRelation) (E : GroundingEvidence G) :
    GroundingRelationClosed G := by
  exact And.intro E.explanationClosed
    (And.intro E.necessitationClosed
      (And.intro E.irreflexivityClosed
        (And.intro E.asymmetryClosed E.transitivityClosed)))

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse
