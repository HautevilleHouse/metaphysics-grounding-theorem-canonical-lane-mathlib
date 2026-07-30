import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsGroundingTheoremCanonicalLaneLean.GroundingModels

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

structure FundamentalMetaphysicsPackage where
  fundamentalEntities : Type u
  fundamentalProperty : fundamentalEntities → Prop
  supervenience : Prop
  minimality : Prop

structure FundamentalMetaphysicsEvidence (F : FundamentalMetaphysicsPackage) where
  fundamentalEntitiesClosed : ∀ e : F.fundamentalEntities, F.fundamentalProperty e
  supervenienceClosed : F.supervenience
  minimalityClosed : F.minimality

def FundamentalMetaphysicsClosed (F : FundamentalMetaphysicsPackage) : Prop :=
  F.supervenience ∧ F.minimality

theorem fundamental_metaphysics_closed_from_evidence
    (F : FundamentalMetaphysicsPackage) (E : FundamentalMetaphysicsEvidence F) :
    FundamentalMetaphysicsClosed F := by
  exact And.intro E.supervenienceClosed E.minimalityClosed

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse