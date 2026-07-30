import HautevilleHouse.MetaphysicsGroundingTheoremCanonicalLaneLean.EssenceExistence

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

structure DependenceChain {G : GroundingRelation} (E : EssenceExistencePackage G) where
  chain : Type u
  chainOrder : PartialOrder chain
  chainWellFounded : WellFoundedLT chain
  chainGrounds : chain → G.ground
  chainGrounded : chain → G.grounded
  chainConsistent : ∀ (c : chain), G.relation (chainGrounds c) (chainGrounded c)

structure DependenceChainEvidence {G : GroundingRelation} {E : EssenceExistencePackage G} (D : DependenceChain E) where
  chainWellFoundedClosed : D.chainWellFounded
  chainConsistentClosed : ∀ (c : D.chain), G.relation (D.chainGrounds c) (D.chainGrounded c)

def DependenceChainClosed {G : GroundingRelation} {E : EssenceExistencePackage G} (D : DependenceChain E) : Prop :=
  D.chainWellFounded ∧ ∀ (c : D.chain), G.relation (D.chainGrounds c) (D.chainGrounded c)

theorem dependence_chain_closed_from_evidence {G : GroundingRelation} {E : EssenceExistencePackage G} (D : DependenceChain E) (Ev : DependenceChainEvidence D) : DependenceChainClosed D := by
  exact And.intro Ev.chainWellFoundedClosed Ev.chainConsistentClosed

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse