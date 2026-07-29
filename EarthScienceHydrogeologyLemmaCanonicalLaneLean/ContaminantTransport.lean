import EarthScienceHydrogeologyLemmaCanonicalLaneLean.WellHydraulics

namespace HautevilleHouse
namespace EarthScienceHydrogeologyLemmaCanonicalLaneLean

structure ContaminantTransportPackage where
  advectionDispersionEquation : Prop
  sorptionIsotherm : Prop
  degradationKinetics : Prop
  retardationFactor : Prop
  sourceTerm : Prop

def ContaminantTransportClosed (C : ContaminantTransportPackage) : Prop :=
  C.advectionDispersionEquation ∧ C.sorptionIsotherm ∧ C.degradationKinetics ∧ C.retardationFactor ∧ C.sourceTerm

end EarthScienceHydrogeologyLemmaCanonicalLaneLean
end HautevilleHouse