import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsGroundingTheoremCanonicalLaneLean

structure GroundingSourcePackage where
  packageName : String
  groundingVersion : Nat
  sourceData : Prop
  packageClosed : Prop

def package_closed (P : GroundingSourcePackage) : Prop :=
  P.sourceData ∧ P.packageClosed

end MetaphysicsGroundingTheoremCanonicalLaneLean
end HautevilleHouse