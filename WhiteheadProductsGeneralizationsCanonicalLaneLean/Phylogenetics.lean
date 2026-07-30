import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

structure PhylogeneticsPackage where
  evolutionaryModel : Prop
  treeTopology : Prop
  branchLengths : Prop
  likelihoodScore : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  evolutionaryModelClosed : P.evolutionaryModel
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  likelihoodScoreClosed : P.likelihoodScore

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.evolutionaryModel ∧ P.treeTopology ∧ P.branchLengths ∧ P.likelihoodScore

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) :
    PhylogeneticsClosed P := by
  exact And.intro E.evolutionaryModelClosed
    (And.intro E.treeTopologyClosed (And.intro E.branchLengthsClosed E.likelihoodScoreClosed))

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse