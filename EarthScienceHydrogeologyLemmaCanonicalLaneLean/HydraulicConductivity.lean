import EarthScienceHydrogeologyLemmaCanonicalLaneLean.GroundwaterFlowPDE

namespace HautevilleHouse
namespace EarthScienceHydrogeologyLemmaCanonicalLaneLean

structure HydraulicConductivityPackage where
  saturatedConductivity : Prop
  unsaturatedConductivity : Prop
  anisotropyTensor : Prop
  permeabilityRelation : Prop

def HydraulicConductivityClosed (K : HydraulicConductivityPackage) : Prop :=
  K.saturatedConductivity ∧ K.unsaturatedConductivity ∧ K.anisotropyTensor ∧ K.permeabilityRelation

end EarthScienceHydrogeologyLemmaCanonicalLaneLean
end HautevilleHouse