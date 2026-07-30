import HautevilleHouse.WhiteheadProductsGeneralizationsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

def ConstrainedWhiteheadClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_whitehead_endgame (A : AdmissibleClass) :
    ConstrainedWhiteheadClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse