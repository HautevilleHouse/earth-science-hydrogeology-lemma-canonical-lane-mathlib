import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyLemmaCanonicalLaneLean

structure UnsaturatedZonePackage {A : AdmissibleClass} (F : AquiferFlowPackage A) where
  richardsEquation : Prop
  soilWaterRetentionCurve : Prop
  vanGenuchtenModel : Prop
  hydraulicConductivityFunction : Prop
  infiltrationBoundary : Prop
  evaporationFlux : Prop

structure UnsaturatedZoneEvidence {A : AdmissibleClass} {F : AquiferFlowPackage A}
    (U : UnsaturatedZonePackage F) where
  richardsEquationClosed : U.richardsEquation
  soilWaterRetentionCurveClosed : U.soilWaterRetentionCurve
  vanGenuchtenModelClosed : U.vanGenuchtenModel
  hydraulicConductivityFunctionClosed : U.hydraulicConductivityFunction
  infiltrationBoundaryClosed : U.infiltrationBoundary
  evaporationFluxClosed : U.evaporationFlux

def UnsaturatedZoneClosed {A : AdmissibleClass} {F : AquiferFlowPackage A}
    (U : UnsaturatedZonePackage F) : Prop :=
  U.richardsEquation ∧ U.soilWaterRetentionCurve ∧ U.vanGenuchtenModel ∧
  U.hydraulicConductivityFunction ∧ U.infiltrationBoundary ∧ U.evaporationFlux

theorem unsaturated_zone_closed_from_evidence
    {A : AdmissibleClass} {F : AquiferFlowPackage A}
    (U : UnsaturatedZonePackage F) (E : UnsaturatedZoneEvidence U) :
    UnsaturatedZoneClosed U := by
  exact And.intro E.richardsEquationClosed
    (And.intro E.soilWaterRetentionCurveClosed
      (And.intro E.vanGenuchtenModelClosed
        (And.intro E.hydraulicConductivityFunctionClosed
          (And.intro E.infiltrationBoundaryClosed E.evaporationFluxClosed))))

end EarthScienceHydrogeologyLemmaCanonicalLaneLean
end HautevilleHouse
