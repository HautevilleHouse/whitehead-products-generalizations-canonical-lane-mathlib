import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WhiteheadProductsGeneralizationsCanonicalLaneLean.WhiteheadProductGeneralizationsBridge

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse
