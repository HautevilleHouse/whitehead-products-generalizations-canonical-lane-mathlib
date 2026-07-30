import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WhiteheadProductsGeneralizationsCanonicalLaneLean.GeneralizedWhiteheadProducts

/-!
# Samelson Products
Defines Samelson products in homotopy groups of Lie groups and their relation to Whitehead products.
-/

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

open SimplicialSet

structure SamelsonProduct (G : Type u) [LieGroup G] (n m : ℕ) where
  domain : (HomotopyGroup G n) × (HomotopyGroup G m)
  codomain : HomotopyGroup G (n + m)
  samelsonMap : domain → codomain
  antiSymmetric : Prop
  jacobiIdentity : Prop
  relationToWhitehead : Prop

def samelson_antisymmetric (S : SamelsonProduct G n m) : Prop := S.antiSymmetric

def samelson_jacobi (S : SamelsonProduct G n m) : Prop := S.jacobiIdentity

def samelson_whitehead_relation (S : SamelsonProduct G n m) : Prop := S.relationToWhitehead

structure WhiteheadSamelsonCorrespondence (G : Type u) [LieGroup G] where
  whiteheadProduct : (n m : ℕ) → WhiteheadProduct (classifyingSpace G) n m
  samelsonProduct : (n m : ℕ) → SamelsonProduct G n m
  correspondence : ∀ n m, (whiteheadProduct n m).bilinearity ↔ (samelsonProduct n m).antiSymmetric

def correspondence_holds (C : WhiteheadSamelsonCorrespondence G) : Prop :=
  C.correspondence 1 1

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse