import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyLemmaCanonicalLaneLean

structure AquiferFlowPackage where
  darcyVelocity : Prop
  hydraulicConductivity : Prop
  porosity : Prop
  storageCoefficient : Prop
  transmissivity : Prop
  flowEquation : Prop
  darcyVelocityClosed : darcyVelocity
  hydraulicConductivityClosed : hydraulicConductivity
  porosityClosed : porosity
  storageCoefficientClosed : storageCoefficient
  transmissivityClosed : transmissivity
  flowEquationClosed : flowEquation

structure AquiferFlowEvidence (A : AquiferFlowPackage) where
  darcyVelocityClosed : A.darcyVelocity
  hydraulicConductivityClosed : A.hydraulicConductivity
  porosityClosed : A.porosity
  storageCoefficientClosed : A.storageCoefficient
  transmissivityClosed : A.transmissivity
  flowEquationClosed : A.flowEquation

def AquiferFlowClosed (A : AquiferFlowPackage) : Prop :=
  A.darcyVelocity ∧ A.hydraulicConductivity ∧ A.porosity ∧
  A.storageCoefficient ∧ A.transmissivity ∧ A.flowEquation

theorem aquifer_flow_closed_from_evidence (A : AquiferFlowPackage) (E : AquiferFlowEvidence A) : AquiferFlowClosed A := by
  exact And.intro E.darcyVelocityClosed
    (And.intro E.hydraulicConductivityClosed
      (And.intro E.porosityClosed
        (And.intro E.storageCoefficientClosed
          (And.intro E.transmissivityClosed E.flowEquationClosed))))

end EarthScienceHydrogeologyLemmaCanonicalLaneLean
end HautevilleHouse