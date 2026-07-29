import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyLemmaCanonicalLaneLean

structure GroundwaterTransportPackage {A : AdmissibleClass} (F : AquiferFlowPackage A) where
  advectionDispersionEquation : Prop
  sorptionModel : Prop
  decayCoefficient : Prop
  sourceTerm : Prop
  initialConcentration : Prop
  boundaryConcentration : Prop

structure GroundwaterTransportEvidence {A : AdmissibleClass} {F : AquiferFlowPackage A}
    (T : GroundwaterTransportPackage F) where
  advectionDispersionEquationClosed : T.advectionDispersionEquation
  sorptionModelClosed : T.sorptionModel
  decayCoefficientClosed : T.decayCoefficient
  sourceTermClosed : T.sourceTerm
  initialConcentrationClosed : T.initialConcentration
  boundaryConcentrationClosed : T.boundaryConcentration

def GroundwaterTransportClosed {A : AdmissibleClass} {F : AquiferFlowPackage A}
    (T : GroundwaterTransportPackage F) : Prop :=
  T.advectionDispersionEquation ∧ T.sorptionModel ∧ T.decayCoefficient ∧
  T.sourceTerm ∧ T.initialConcentration ∧ T.boundaryConcentration

theorem groundwater_transport_closed_from_evidence
    {A : AdmissibleClass} {F : AquiferFlowPackage A}
    (T : GroundwaterTransportPackage F) (E : GroundwaterTransportEvidence T) :
    GroundwaterTransportClosed T := by
  exact And.intro E.advectionDispersionEquationClosed
    (And.intro E.sorptionModelClosed
      (And.intro E.decayCoefficientClosed
        (And.intro E.sourceTermClosed
          (And.intro E.initialConcentrationClosed E.boundaryConcentrationClosed))))

end EarthScienceHydrogeologyLemmaCanonicalLaneLean
end HautevilleHouse
