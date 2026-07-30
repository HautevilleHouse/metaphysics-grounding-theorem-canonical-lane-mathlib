import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

structure GroundingProcedure where
  initialConditions : Prop
  stepWiseGrounding : Prop
  terminationCondition : Prop
  proceduralEvidence : Prop

def grounding_procedure_closed (P : GroundingProcedure) : Prop :=
  P.initialConditions ∧ P.stepWiseGrounding ∧ P.terminationCondition ∧ P.proceduralEvidence

def grounding_procedure_evidence (P : GroundingProcedure) : Prop :=
  by exact P.proceduralEvidence

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse