import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

structure LinkagePackage where
  recombinationFraction : Prop
  lodScore : Prop
  linkageEvidence : Prop

structure LinkageEvidence (L : LinkagePackage) where
  recombinationFractionClosed : L.recombinationFraction
  lodScoreClosed : L.lodScore
  linkageEvidenceClosed : L.linkageEvidence

def LinkageClosed (L : LinkagePackage) : Prop :=
  L.recombinationFraction ∧ L.lodScore ∧ L.linkageEvidence

theorem linkage_closed_from_evidence (L : LinkagePackage) (E : LinkageEvidence L) :
    LinkageClosed L := by
  exact And.intro E.recombinationFractionClosed (And.intro E.lodScoreClosed E.linkageEvidenceClosed)

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse