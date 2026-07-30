import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

structure GroundingRelation (M : Type u) where
  grounded : M → M → Prop
  transitive : ∀ x y z, grounded x y → grounded y z → grounded x z
  reflexive : ∀ x, grounded x x

structure GroundingPackage (M : Type u) where
  baseEntities : Set M
  derivativeEntities : Set M
  grounding : GroundingRelation M
  baseGrounded : ∀ x ∈ baseEntities, ∀ y, grounding.grounded x y → y ∈ baseEntities
  derivativeDependence : ∀ y ∈ derivativeEntities, ∃ x ∈ baseEntities, grounding.grounded y x

structure GroundingEvidence {M : Type u} (G : GroundingPackage M) where
  baseGroundedClosed : G.baseGrounded
  derivativeDependenceClosed : G.derivativeDependence

def GroundingClosed {M : Type u} (G : GroundingPackage M) : Prop :=
  G.baseGrounded ∧ G.derivativeDependence

theorem grounding_closed_from_evidence {M : Type u} (G : GroundingPackage M) (E : GroundingEvidence G) : GroundingClosed G := by
  exact And.intro E.baseGroundedClosed E.derivativeDependenceClosed

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse