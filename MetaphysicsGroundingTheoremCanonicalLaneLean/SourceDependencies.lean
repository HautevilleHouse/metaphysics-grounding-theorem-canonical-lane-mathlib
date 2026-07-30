import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

structure GroundingSourceDependency where
  sourceKey : String
  groundingKey : String
  dependencyType : String
  dependencyClosed : Prop

def src_dep_closed (D : GroundingSourceDependency) : Prop :=
  D.dependencyClosed

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse