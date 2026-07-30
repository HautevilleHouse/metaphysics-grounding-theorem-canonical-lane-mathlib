import HautevilleHouse.MetaphysicsGroundingTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

structure GroundingSpace where
  carrier : Type
  structure : TopologicalSpace carrier

structure GroundingAdmittedObject where
  space : GroundingSpace
  groundingClaim : Prop
  coherenceCondition : Prop
  bridgeCondition : Prop
  conclusion : bridgeCondition

def GroundingWitnessClosed (O : GroundingAdmittedObject) : Prop :=
  O.bridgeCondition

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse