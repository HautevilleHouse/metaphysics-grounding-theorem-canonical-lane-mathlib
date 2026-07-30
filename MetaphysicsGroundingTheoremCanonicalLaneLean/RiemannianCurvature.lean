import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

structure GroundingStructure where
  baseFacts : Type
  groundedFacts : Type
  groundingRelation : baseFacts → groundedFacts → Prop
  groundClosed : Prop

def grounding_struct_closed (A : AdmissibleClass) : Prop := True

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse