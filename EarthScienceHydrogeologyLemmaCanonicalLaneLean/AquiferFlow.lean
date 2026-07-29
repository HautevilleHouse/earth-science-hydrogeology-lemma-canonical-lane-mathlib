import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyLemmaCanonicalLaneLean

structure AquiferFlowPackage (A : AdmissibleClass) where
  darcyVelocity : Prop
  hydraulicConductivity : Prop
  storativity : Prop
  continuityEquation : Prop
  initialHeadCondition : Prop
  boundaryConditions : Prop

structure AquiferFlowEvidence {A : AdmissibleClass} (F : AquiferFlowPackage A) where
  darcyVelocityClosed : F.darcyVelocity
  hydraulicConductivityClosed : F.hydraulicConductivity
  storativityClosed : F.storativity
  continuityEquationClosed : F.continuityEquation
  initialHeadConditionClosed : F.initialHeadCondition
  boundaryConditionsClosed : F.boundaryConditions

def AquiferFlowClosed {A : AdmissibleClass} (F : AquiferFlowPackage A) : Prop :=
  F.darcyVelocity ∧ F.hydraulicConductivity ∧ F.storativity ∧
  F.continuityEquation ∧ F.initialHeadCondition ∧ F.boundaryConditions

theorem aquifer_flow_closed_from_evidence
    {A : AdmissibleClass} (F : AquiferFlowPackage A) (E : AquiferFlowEvidence F) :
    AquiferFlowClosed F := by
  exact And.intro E.darcyVelocityClosed
    (And.intro E.hydraulicConductivityClosed
      (And.intro E.storativityClosed
        (And.intro E.continuityEquationClosed
          (And.intro E.initialHeadConditionClosed E.boundaryConditionsClosed))))

end EarthScienceHydrogeologyLemmaCanonicalLaneLean
end HautevilleHouse
