import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

structure SequenceAlignmentPackage where
  substitutionMatrix : Prop
  gapPenalty : Prop
  alignmentScore : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  substitutionMatrixClosed : S.substitutionMatrix
  gapPenaltyClosed : S.gapPenalty
  alignmentScoreClosed : S.alignmentScore

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.substitutionMatrix ∧ S.gapPenalty ∧ S.alignmentScore

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) :
    SequenceAlignmentClosed S := by
  exact And.intro E.substitutionMatrixClosed (And.intro E.gapPenaltyClosed E.alignmentScoreClosed)

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse