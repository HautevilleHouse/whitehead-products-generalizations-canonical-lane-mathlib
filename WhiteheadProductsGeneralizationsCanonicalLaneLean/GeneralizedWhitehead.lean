import HautevilleHouse.WhiteheadProductsGeneralizationsCanonicalLaneLean.WhiteheadProduct

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

structure GeneralizedWhiteheadPackage {L : LoopSpacePackage} (W : WhiteheadProductPackage L) where
  higherBrackets : Nat → (List L.loopSpace) → L.loopSpace
  coherence : Prop
  stability : Prop

def GeneralizedWhiteheadClosed {L : LoopSpacePackage} {W : WhiteheadProductPackage L}
    (G : GeneralizedWhiteheadPackage W) : Prop :=
  G.coherence ∧ G.stability

theorem generalized_whitehead_closed {L : LoopSpacePackage} {W : WhiteheadProductPackage L}
    (G : GeneralizedWhiteheadPackage W) (coh : G.coherence) (stab : G.stability) :
    GeneralizedWhiteheadClosed G := by
  exact And.intro coh stab

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse