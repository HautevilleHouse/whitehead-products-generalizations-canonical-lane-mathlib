import HautevilleHouse.WhiteheadProductsGeneralizationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

structure LoopSpacePackage where
  space : Type
  basepoint : space
  loopSpace : Type
  composition : loopSpace → loopSpace → loopSpace
  identity : loopSpace
  associativity : Prop
  identityLeft : Prop
  identityRight : Prop

def LoopSpaceClosed (L : LoopSpacePackage) : Prop :=
  L.associativity ∧ L.identityLeft ∧ L.identityRight

theorem loop_space_closed (L : LoopSpacePackage) (assoc : L.associativity) (idL : L.identityLeft) (idR : L.identityRight) :
    LoopSpaceClosed L := by
  exact And.intro assoc (And.intro idL idR)

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse