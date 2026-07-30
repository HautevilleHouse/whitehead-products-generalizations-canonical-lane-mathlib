import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

structure WhiteheadObject where
  space : Type
  basepoint : space
  loopSpace : Type
  whiteheadProduct : loopSpace × loopSpace → loopSpace

def WhiteheadWitnessClosed (O : WhiteheadObject) : Prop :=
  True

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse