import HautevilleHouse.WhiteheadProductsGeneralizationsCanonicalLaneLean.LoopSpace

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

open LoopSpacePackage

structure WhiteheadProductPackage (L : LoopSpacePackage) where
  product : L.loopSpace → L.loopSpace → L.loopSpace
  naturality : Prop
  bilinearity : Prop
  JacobiIdentity : Prop

def WhiteheadProductClosed {L : LoopSpacePackage} (W : WhiteheadProductPackage L) : Prop :=
  W.naturality ∧ W.bilinearity ∧ W.JacobiIdentity

theorem whitehead_product_closed {L : LoopSpacePackage} (W : WhiteheadProductPackage L)
    (nat : W.naturality) (bil : W.bilinearity) (jac : W.JacobiIdentity) :
    WhiteheadProductClosed W := by
  exact And.intro nat (And.intro bil jac)

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse