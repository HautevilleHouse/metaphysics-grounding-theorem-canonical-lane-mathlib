import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsGroundingTheoremCanonicalLaneLean.GroundingModels

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

structure DependenceLatticePackage (M : GroundingModel) where
  carrier : Type u
  partialOrder : carrier → carrier → Prop
  joins : carrier → carrier → carrier
  meets : carrier → carrier → carrier
  bottom : carrier
  top : carrier
  groundingCompatible : Prop

structure DependenceLatticeEvidence {M : GroundingModel}
    (L : DependenceLatticePackage M) where
  partialOrderClosed : L.partialOrder L.bottom L.top
  joinsClosed : ∀ x y, L.joins x y = L.joins y x
  meetsClosed : ∀ x y, L.meets x y = L.meets y x
  groundingCompatibleClosed : L.groundingCompatible

def DependenceLatticeClosed {M : GroundingModel}
    (L : DependenceLatticePackage M) : Prop :=
  L.groundingCompatible

theorem dependence_lattice_closed_from_evidence {M : GroundingModel}
    (L : DependenceLatticePackage M) (E : DependenceLatticeEvidence L) :
    DependenceLatticeClosed L := by
  exact E.groundingCompatibleClosed

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse