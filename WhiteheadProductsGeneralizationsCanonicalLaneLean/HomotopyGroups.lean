import canonicalLaneMathlib.AdmissibleClass

/-!
# Homotopy Groups
Defines homotopy groups and their basic properties.
-/

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

open SimplicialSet

structure HomotopyGroup (X : SimplicialSet) (n : ℕ) where
  carrier : Type u
  groupStructure : Group carrier
  abelian : n ≥ 2 → CommGroup carrier

def homotopy_group_group (π : HomotopyGroup X n) : Group π.carrier := π.groupStructure

def homotopy_group_abelian (π : HomotopyGroup X n) (h : n ≥ 2) : CommGroup π.carrier := π.abelian h

structure HomotopyGroupMorphism (X Y : SimplicialSet) (n : ℕ) where
  source : HomotopyGroup X n
  target : HomotopyGroup Y n
  map : source.carrier → target.carrier
  isGroupHomomorphism : GroupHomomorphism map source.groupStructure target.groupStructure

def homotopy_group_morphism_hom (φ : HomotopyGroupMorphism X Y n) : GroupHomomorphism := φ.isGroupHomomorphism

structure LongExactSequence (X A : SimplicialSet) where
  inclusion : A → X
  groups : (n : ℕ) → HomotopyGroup X n × HomotopyGroup A n × HomotopyGroup (X/A) n
  exactness : ∀ n, exactnessCondition n

def exactness_condition (L : LongExactSequence X A) (n : ℕ) : Prop := L.exactness n

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse