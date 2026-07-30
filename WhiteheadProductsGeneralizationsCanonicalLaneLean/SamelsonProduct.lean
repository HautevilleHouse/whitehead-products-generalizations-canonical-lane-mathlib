import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

structure SamelsonProduct where
  lieGroupInput : Prop
  whiteheadBracketEquivalent : Prop
  homotopyGroupAction : Prop
  classificationInLowDim : Prop
  spectralSequenceEdge : Prop
  lieGroupInputClosed : lieGroupInput
  whiteheadBracketEquivalentClosed : whiteheadBracketEquivalent
  homotopyGroupActionClosed : homotopyGroupAction
  classificationInLowDimClosed : classificationInLowDim
  spectralSequenceEdgeClosed : spectralSequenceEdge

def SamelsonProductClosed (S : SamelsonProduct) : Prop :=
  S.lieGroupInput ∧ S.whiteheadBracketEquivalent ∧
  S.homotopyGroupAction ∧ S.classificationInLowDim ∧ S.spectralSequenceEdge

theorem samelson_product_closed (S : SamelsonProduct) :
    SamelsonProductClosed S := by
  exact And.intro S.lieGroupInputClosed
    (And.intro S.whiteheadBracketEquivalentClosed
      (And.intro S.homotopyGroupActionClosed
        (And.intro S.classificationInLowDimClosed S.spectralSequenceEdgeClosed)))

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse