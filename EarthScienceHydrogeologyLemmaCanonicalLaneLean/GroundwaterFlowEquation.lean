import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyLemmaCanonicalLaneLean

structure GroundwaterFlowPackage where
  aquiferType : Prop
  darcyVelocity : Prop
  hydraulicConductivity : Prop
  porosity : Prop
  storativity : Prop
  continuityEquation : Prop

structure GroundwaterFlowEvidence (G : GroundwaterFlowPackage) where
  aquiferTypeClosed : G.aquiferType
  darcyVelocityClosed : G.darcyVelocity
  hydraulicConductivityClosed : G.hydraulicConductivity
  porosityClosed : G.porosity
  storativityClosed : G.storativity
  continuityEquationClosed : G.continuityEquation

def GroundwaterFlowClosed (G : GroundwaterFlowPackage) : Prop :=
  G.aquiferType ∧ G.darcyVelocity ∧ G.hydraulicConductivity ∧
  G.porosity ∧ G.storativity ∧ G.continuityEquation

theorem groundwater_flow_closed_from_evidence (G : GroundwaterFlowPackage)
    (E : GroundwaterFlowEvidence G) : GroundwaterFlowClosed G := by
  exact And.intro E.aquiferTypeClosed
    (And.intro E.darcyVelocityClosed
      (And.intro E.hydraulicConductivityClosed
        (And.intro E.porosityClosed
          (And.intro E.storativityClosed E.continuityEquationClosed))))

end EarthScienceHydrogeologyLemmaCanonicalLaneLean
end HautevilleHouse