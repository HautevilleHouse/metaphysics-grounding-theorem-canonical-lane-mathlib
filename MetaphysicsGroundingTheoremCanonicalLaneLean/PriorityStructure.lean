import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsGroundingTheoremCanonicalLaneLean.DependenceLatticePackage

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

structure PriorityStructurePackage (M : GroundingModel)
    (L : DependenceLatticePackage M) where
  priorityRelation : L.carrier → L.carrier → Prop
  asymmetric : Prop
  wellFounded : Prop
  priorityGrounding : Prop

structure PriorityStructureEvidence {M : GroundingModel}
    {L : DependenceLatticePackage M} (P : PriorityStructurePackage M L) where
  asymmetricClosed : P.asymmetric
  wellFoundedClosed : P.wellFounded
  priorityGroundingClosed : P.priorityGrounding

def PriorityStructureClosed {M : GroundingModel}
    {L : DependenceLatticePackage M} (P : PriorityStructurePackage M L) : Prop :=
  P.asymmetric ∧ P.wellFounded ∧ P.priorityGrounding

theorem priority_structure_closed_from_evidence {M : GroundingModel}
    {L : DependenceLatticePackage M} (P : PriorityStructurePackage M L)
    (E : PriorityStructureEvidence P) : PriorityStructureClosed P := by
  exact And.intro E.asymmetricClosed (And.intro E.wellFoundedClosed E.priorityGroundingClosed)

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse