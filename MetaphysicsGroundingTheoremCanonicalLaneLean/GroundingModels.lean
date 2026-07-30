import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

structure GroundingModel where
  base : Type u
  groundedIn : Type v
  groundingRelation : base → groundedIn → Prop
  directed : Prop
  transitive : Prop

structure GroundingModelEvidence (M : GroundingModel) where
  directedClosed : M.directed
  transitiveClosed : M.transitive

def GroundingModelClosed (M : GroundingModel) : Prop :=
  M.directed ∧ M.transitive

theorem grounding_model_closed_from_evidence (M : GroundingModel)
    (E : GroundingModelEvidence M) : GroundingModelClosed M := by
  exact And.intro E.directedClosed E.transitiveClosed

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse