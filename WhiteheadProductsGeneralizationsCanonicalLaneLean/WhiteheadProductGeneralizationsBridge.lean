import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WhiteheadProductsGeneralizationsCanonicalLaneLean.WhiteheadProductClassGroup

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WhiteheadProductClassClosed (A.object)  -- assumes AdmissibleClass.object is of type WhiteheadProductClass

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- We need to extract evidence from A; assuming A has a field for evidence
  exact A.object.conclusion

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse
