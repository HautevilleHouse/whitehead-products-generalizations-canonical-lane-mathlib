import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WhiteheadProductsGeneralizationsCanonicalLaneLean.WhiteheadProductStructure

/-!
# Generalized Whitehead Products
Extends Whitehead products to higher order and iterated constructions.
-/

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

open SimplicialSet

structure IteratedWhiteheadProduct (X : SimplicialSet) (indices : List ℕ) where
  domain : List (HomotopyGroup X n) -- n from indices
  codomain : HomotopyGroup X (sum(indices) - (length(indices) - 1))
  iteratedMap : domain → codomain
  generalizedJacobi : Prop
  naturality : Prop

def iterated_whitehead_jacobi (I : IteratedWhiteheadProduct X indices) : Prop := I.generalizedJacobi

def iterated_whitehead_natural (I : IteratedWhiteheadProduct X indices) : Prop := I.naturality

structure HigherWhiteheadProduct (X : SimplicialSet) (k : ℕ) where
  arity : ℕ
  source : (HomotopyGroup X arity) → HomotopyGroup X (k+arity-1)
  higherBilinearity : Prop
  higherCommutativity : Prop
  higherJacobi : Prop

def higher_whitehead_bilinear (H : HigherWhiteheadProduct X k) : Prop := H.higherBilinearity

def higher_whitehead_commutative (H : HigherWhiteheadProduct X k) : Prop := H.higherCommutativity

def higher_whitehead_jacobi (H : HigherWhiteheadProduct X k) : Prop := H.higherJacobi

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse