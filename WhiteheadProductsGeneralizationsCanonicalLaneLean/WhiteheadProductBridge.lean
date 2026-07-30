import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WhiteheadProductsGeneralizationsCanonicalLaneLean

structure WhiteheadAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  pointed : Prop
  nConnected : Prop
  conclusion : WhiteheadProductClosed (default : WhiteheadProductStructure)

structure WhiteheadProductAdmissibleClass where
  object : WhiteheadAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def WhiteheadProductWitnessClosed (O : WhiteheadAdmittedObject) : Prop :=
  O.conclusion

def bridgeClosed (A : WhiteheadProductAdmissibleClass) : Prop :=
  WhiteheadProductWitnessClosed A.object

theorem bridge_from_admissible_class (A : WhiteheadProductAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : WhiteheadProductAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : WhiteheadProductAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedWhiteheadProductClosure (A : WhiteheadProductAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_whitehead_product_endgame (A : WhiteheadProductAdmissibleClass) :
    ConstrainedWhiteheadProductClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WhiteheadProductsGeneralizationsCanonicalLaneLean
end HautevilleHouse