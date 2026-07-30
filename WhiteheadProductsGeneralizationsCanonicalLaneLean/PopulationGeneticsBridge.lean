import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

structure PopulationGeneticsBridgePackage where
  hardyWeinberg : HardyWeinbergPackage
  linkage : LinkagePackage
  sequenceAlignment : SequenceAlignmentPackage
  phylogenetics : PhylogeneticsPackage
  bridgeCondition : Prop

structure PopulationGeneticsBridgeEvidence (B : PopulationGeneticsBridgePackage) where
  hardyWeinbergClosed : HardyWeinbergClosed B.hardyWeinberg
  linkageClosed : LinkageClosed B.linkage
  sequenceAlignmentClosed : SequenceAlignmentClosed B.sequenceAlignment
  phylogeneticsClosed : PhylogeneticsClosed B.phylogenetics
  bridgeConditionClosed : B.bridgeCondition

def PopulationGeneticsBridgeClosed (B : PopulationGeneticsBridgePackage) : Prop :=
  HardyWeinbergClosed B.hardyWeinberg ∧ LinkageClosed B.linkage ∧
  SequenceAlignmentClosed B.sequenceAlignment ∧ PhylogeneticsClosed B.phylogenetics ∧ B.bridgeCondition

theorem population_genetics_bridge_closed_from_evidence (B : PopulationGeneticsBridgePackage) (E : PopulationGeneticsBridgeEvidence B) :
    PopulationGeneticsBridgeClosed B := by
  exact And.intro E.hardyWeinbergClosed
    (And.intro E.linkageClosed (And.intro E.sequenceAlignmentClosed (And.intro E.phylogeneticsClosed E.bridgeConditionClosed)))

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse