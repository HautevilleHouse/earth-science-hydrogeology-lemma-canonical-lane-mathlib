import EarthScienceHydrogeologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyLemmaCanonicalLaneLean

structure GroundwaterFlowPDEPackage where
  aquiferDomain : Type u
  time : Type v
  hydraulicConductivity : Type w
  specificStorage : Type x
  darcyVelocity : Type y
  pdeContinuityEquation : Prop
  initialHeadCondition : Prop
  boundaryConditions : Prop

def GroundwaterFlowPDEClosed (F : GroundwaterFlowPDEPackage) : Prop :=
  F.pdeContinuityEquation ∧ F.initialHeadCondition ∧ F.boundaryConditions

theorem groundwater_flow_pde_closed_iff (F : GroundwaterFlowPDEPackage) :
    GroundwaterFlowPDEClosed F ↔ F.pdeContinuityEquation ∧ F.initialHeadCondition ∧ F.boundaryConditions := by
  rfl

end EarthScienceHydrogeologyLemmaCanonicalLaneLean
end HautevilleHouse