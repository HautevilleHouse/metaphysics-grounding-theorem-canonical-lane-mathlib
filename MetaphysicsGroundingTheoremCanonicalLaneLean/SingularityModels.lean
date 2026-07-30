import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

structure GroundingSingularity where
  singularityType : String
  groundingFails : Prop
  residualOntology : Prop
  singularityEvidence : Prop

def grounding_singularity_closed (S : GroundingSingularity) : Prop :=
  S.groundingFails ∧ S.residualOntology ∧ S.singularityEvidence

def grounding_singularity_evidence (S : GroundingSingularity) : Prop :=
  S.singularityEvidence

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse