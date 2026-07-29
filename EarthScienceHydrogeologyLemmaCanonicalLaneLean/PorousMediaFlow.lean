import EarthScienceHydrogeologyLemmaCanonicalLaneLean.HydraulicConductivity

namespace HautevilleHouse
namespace EarthScienceHydrogeologyLemmaCanonicalLaneLean

structure PorousMediaFlowPackage where
  porosity : Prop
  compressibility : Prop
  saturationDependence : Prop
  darcyLawValidity : Prop

def PorousMediaFlowClosed (P : PorousMediaFlowPackage) : Prop :=
  P.porosity ∧ P.compressibility ∧ P.saturationDependence ∧ P.darcyLawValidity

end EarthScienceHydrogeologyLemmaCanonicalLaneLean
end HautevilleHouse