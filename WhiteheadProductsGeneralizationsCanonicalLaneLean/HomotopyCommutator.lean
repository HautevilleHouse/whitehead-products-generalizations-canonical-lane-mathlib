import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

structure HomotopyCommutatorPackage where
  whiteheadProductDefined : Prop
  commutatorMap : Prop
  hurewiczMapRelation : Prop
  eilenbergMacLaneRealization : Prop
  spectralSequenceInput : Prop
  whiteheadProductDefinedClosed : whiteheadProductDefined
  commutatorMapClosed : commutatorMap
  hurewiczMapRelationClosed : hurewiczMapRelation
  eilenbergMacLaneRealizationClosed : eilenbergMacLaneRealization
  spectralSequenceInputClosed : spectralSequenceInput

def HomotopyCommutatorClosed (H : HomotopyCommutatorPackage) : Prop :=
  H.whiteheadProductDefined ∧ H.commutatorMap ∧
  H.hurewiczMapRelation ∧ H.eilenbergMacLaneRealization ∧ H.spectralSequenceInput

theorem homotopy_commutator_closed_from_package (H : HomotopyCommutatorPackage) :
    HomotopyCommutatorClosed H := by
  exact And.intro H.whiteheadProductDefinedClosed
    (And.intro H.commutatorMapClosed
      (And.intro H.hurewiczMapRelationClosed
        (And.intro H.eilenbergMacLaneRealizationClosed H.spectralSequenceInputClosed)))

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse