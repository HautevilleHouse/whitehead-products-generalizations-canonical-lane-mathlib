import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

structure GeneralizedWhiteheadBracket where
  sphereWhiteheadBracket : Prop
  torusWhiteheadBracket : Prop
  lieAlgebraExtension : Prop
  kunnethCompatibility : Prop
  boundaryOperator : Prop
  sphereWhiteheadBracketClosed : sphereWhiteheadBracket
  torusWhiteheadBracketClosed : torusWhiteheadBracket
  lieAlgebraExtensionClosed : lieAlgebraExtension
  kunnethCompatibilityClosed : kunnethCompatibility
  boundaryOperatorClosed : boundaryOperator

def GeneralizedWhiteheadBracketClosed (G : GeneralizedWhiteheadBracket) : Prop :=
  G.sphereWhiteheadBracket ∧ G.torusWhiteheadBracket ∧
  G.lieAlgebraExtension ∧ G.kunnethCompatibility ∧ G.boundaryOperator

theorem generalized_whitehead_bracket_closed (G : GeneralizedWhiteheadBracket) :
    GeneralizedWhiteheadBracketClosed G := by
  exact And.intro G.sphereWhiteheadBracketClosed
    (And.intro G.torusWhiteheadBracketClosed
      (And.intro G.lieAlgebraExtensionClosed
        (And.intro G.kunnethCompatibilityClosed G.boundaryOperatorClosed)))

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse