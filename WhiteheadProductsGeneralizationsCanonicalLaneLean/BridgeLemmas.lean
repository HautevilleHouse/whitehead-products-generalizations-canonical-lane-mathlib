import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WhiteheadProductsGeneralizationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WhiteheadWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  trivial

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse