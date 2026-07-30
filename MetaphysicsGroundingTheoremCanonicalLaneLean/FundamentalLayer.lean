import HautevilleHouse.MetaphysicsGroundingTheoremCanonicalLaneLean.GroundingMereology

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

structure FundamentalLayerPackage {G : GroundingRelation} {E : EssenceExistencePackage G} {D : DependenceChain E} (M : GroundingMereologyPackage D) where
  foundationalEntity : D.chain
  isGroundMeter : ∀ (c : D.chain), M.partRelation c foundationalEntity → c = foundationalEntity
  foundationExists : ∃ (f : D.chain), ∀ (c : D.chain), M.partRelation c f → c = f

structure FundamentalLayerEvidence {G : GroundingRelation} {E : EssenceExistencePackage G} {D : DependenceChain E} {M : GroundingMereologyPackage D} (F : FundamentalLayerPackage M) where
  foundationExistsClosed : ∃ (f : D.chain), ∀ (c : D.chain), M.partRelation c f → c = f

def FundamentalLayerClosed {G : GroundingRelation} {E : EssenceExistencePackage G} {D : DependenceChain E} {M : GroundingMereologyPackage D} (F : FundamentalLayerPackage M) : Prop :=
  ∃ (f : D.chain), ∀ (c : D.chain), M.partRelation c f → c = f

theorem fundamental_layer_closed_from_evidence {G : GroundingRelation} {E : EssenceExistencePackage G} {D : DependenceChain E} {M : GroundingMereologyPackage D} (F : FundamentalLayerPackage M) (Ev : FundamentalLayerEvidence F) : FundamentalLayerClosed F := by
  exact Ev.foundationExistsClosed

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse