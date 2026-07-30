import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WhiteheadProductsGeneralizationsCanonicalLaneLean.WhiteheadAlgebraicTopologyFoundation

/-!
# Whitehead Product Structure
Defines the Whitehead product and its generalizations in homotopy groups.
-/

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

open SimplicialSet

structure WhiteheadProduct (X : SimplicialSet) (n m : ℕ) where
  domain : (HomotopyGroup X n) × (HomotopyGroup X m)
  codomain : HomotopyGroup X (n + m - 1)
  productMap : domain → codomain
  bilinearity : Prop
  gradedCommutativity : Prop
  JacobiIdentity : Prop

def whitehead_product_bilinear (W : WhiteheadProduct X n m) : Prop := W.bilinearity

def whitehead_product_commutative (W : WhiteheadProduct X n m) : Prop := W.gradedCommutativity

def whitehead_product_jacobi (W : WhiteheadProduct X n m) : Prop := W.JacobiIdentity

structure WhiteheadAlgebra (X : SimplicialSet) where
  products : (n m : ℕ) → WhiteheadProduct X n m
  productConsistency : ∀ n m, (products n m).bilinearity
  productConsistency2 : ∀ n m, (products n m).gradedCommutativity
  productConsistency3 : ∀ n m, (products n m).JacobiIdentity

def whitehead_algebra_consistent (W : WhiteheadAlgebra X) : Prop :=
  W.productConsistency 1 1 ∧ W.productConsistency2 1 1 ∧ W.productConsistency3 1 1

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse