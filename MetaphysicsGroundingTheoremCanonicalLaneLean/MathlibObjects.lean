import MetaphysicsGroundingTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GroundingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GroundingAdmittedObject where
  space : GroundingSpace
  entity : Prop
  groundRelation : Prop
  conclusion : groundRelation

structure GroundingEndgameState where
  object : GroundingAdmittedObject

def GroundingWitnessClosed (O : GroundingAdmittedObject) : Prop :=
  O.groundRelation

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse