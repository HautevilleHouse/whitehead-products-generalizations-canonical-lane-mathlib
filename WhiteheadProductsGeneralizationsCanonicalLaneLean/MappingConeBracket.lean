import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

structure MappingConeBracket where
  coneConstruction : Prop
  inducedBracket : Prop
  longExactSequence : Prop
  excisionProperty : Prop
  suspensionCompatibility : Prop
  coneConstructionClosed : coneConstruction
  inducedBracketClosed : inducedBracket
  longExactSequenceClosed : longExactSequence
  excisionPropertyClosed : excisionProperty
  suspensionCompatibilityClosed : suspensionCompatibility

def MappingConeBracketClosed (M : MappingConeBracket) : Prop :=
  M.coneConstruction ∧ M.inducedBracket ∧
  M.longExactSequence ∧ M.excisionProperty ∧ M.suspensionCompatibility

theorem mapping_cone_bracket_closed (M : MappingConeBracket) :
    MappingConeBracketClosed M := by
  exact And.intro M.coneConstructionClosed
    (And.intro M.inducedBracketClosed
      (And.intro M.longExactSequenceClosed
        (And.intro M.excisionPropertyClosed M.suspensionCompatibilityClosed)))

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse