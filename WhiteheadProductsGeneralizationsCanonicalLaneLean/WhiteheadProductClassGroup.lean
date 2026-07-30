import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

structure WhiteheadProductClass (N : Type) [AddCommGroup N] where
  carrier : Type u
  addition : carrier → carrier → carrier
  zero : carrier
  additiveGroup : AddCommGroup carrier
  lieBracket : carrier → carrier → carrier
  bilinearity : Prop
  anticommutativity : Prop
  jacobiIdentity : Prop
  lieModuleStructure : Prop
  whiteheadProductDefined : Prop

structure WhiteheadProductEvidence (N : Type) [AddCommGroup N] (W : WhiteheadProductClass N) where
  bilinearityClosed : W.bilinearity
  anticommutativityClosed : W.anticommutativity
  jacobiIdentityClosed : W.jacobiIdentity
  lieModuleStructureClosed : W.lieModuleStructure
  whiteheadProductDefinedClosed : W.whiteheadProductDefined

def WhiteheadProductClassClosed (N : Type) [AddCommGroup N] (W : WhiteheadProductClass N) : Prop :=
  W.bilinearity ∧ W.anticommutativity ∧ W.jacobiIdentity ∧ W.lieModuleStructure ∧ W.whiteheadProductDefined

theorem whitehead_product_class_closed_from_evidence (N : Type) [AddCommGroup N] (W : WhiteheadProductClass N) (E : WhiteheadProductEvidence N W) : WhiteheadProductClassClosed N W := by
  exact And.intro E.bilinearityClosed (And.intro E.anticommutativityClosed (And.intro E.jacobiIdentityClosed (And.intro E.lieModuleStructureClosed E.whiteheadProductDefinedClosed)))

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse
