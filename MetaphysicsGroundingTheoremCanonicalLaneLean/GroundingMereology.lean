import HautevilleHouse.MetaphysicsGroundingTheoremCanonicalLaneLean.DependenceChain

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

structure GroundingMereologyPackage {G : GroundingRelation} {E : EssenceExistencePackage G} (D : DependenceChain E) where
  partRelation : D.chain → D.chain → Prop
  partTransitive : ∀ a b c, partRelation a b → partRelation b c → partRelation a c
  partAntisymmetric : ∀ a b, partRelation a b → partRelation b a → a = b
  groundPart : ∀ a b, partRelation a b → G.relation (D.chainGrounds a) (D.chainGrounded a)

structure GroundingMereologyEvidence {G : GroundingRelation} {E : EssenceExistencePackage G} {D : DependenceChain E} (M : GroundingMereologyPackage D) where
  partTransitiveClosed : M.partTransitive
  partAntisymmetricClosed : M.partAntisymmetric
  groundPartClosed : ∀ a b, M.partRelation a b → G.relation (D.chainGrounds a) (D.chainGrounded a)

def GroundingMereologyClosed {G : GroundingRelation} {E : EssenceExistencePackage G} {D : DependenceChain E} (M : GroundingMereologyPackage D) : Prop :=
  M.partTransitive ∧ M.partAntisymmetric ∧ (∀ a b, M.partRelation a b → G.relation (D.chainGrounds a) (D.chainGrounded a))

theorem grounding_mereology_closed_from_evidence {G : GroundingRelation} {E : EssenceExistencePackage G} {D : DependenceChain E} (M : GroundingMereologyPackage D) (Ev : GroundingMereologyEvidence M) : GroundingMereologyClosed M := by
  exact And.intro Ev.partTransitiveClosed (And.intro Ev.partAntisymmetricClosed Ev.groundPartClosed)

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse