import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

structure WhiteheadGenome where
  locusSet : Type
  alleleFrequencies : locusSet → ℝ → Prop

def HardyWeinbergEquilibrium (G : WhiteheadGenome) : Prop :=
  ∀ locus, ∃ p, G.alleleFrequencies locus p ∧ p * (1 - p) = 0.25

structure WhiteheadAdmittedObject where
  genome : WhiteheadGenome
  equilibriumReached : HardyWeinbergEquilibrium genome
  linkageAnalysis : Prop
  sequenceAlignment : Prop
  phylogenyConsistent : Prop
  conclusion : equilibriumReached ∧ linkageAnalysis ∧ sequenceAlignment ∧ phylogenyConsistent

def WhiteheadWitnessClosed (O : WhiteheadAdmittedObject) : Prop :=
  O.equilibriumReached ∧ O.linkageAnalysis ∧ O.sequenceAlignment ∧ O.phylogenyConsistent

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse