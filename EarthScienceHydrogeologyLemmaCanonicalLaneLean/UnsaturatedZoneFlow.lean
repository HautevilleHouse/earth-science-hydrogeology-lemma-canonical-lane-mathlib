import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyLemmaCanonicalLaneLean

structure UnsaturatedZoneFlowPackage where
  moistureContent : Prop
  pressureHead : Prop
  hydraulicConductivityFunction : Prop
  richardsEquation : Prop
  vanGenuchtenModel : Prop
  moistureContentClosed : moistureContent
  pressureHeadClosed : pressureHead
  hydraulicConductivityFunctionClosed : hydraulicConductivityFunction
  richardsEquationClosed : richardsEquation
  vanGenuchtenModelClosed : vanGenuchtenModel

structure UnsaturatedZoneFlowEvidence (U : UnsaturatedZoneFlowPackage) where
  moistureContentClosed : U.moistureContent
  pressureHeadClosed : U.pressureHead
  hydraulicConductivityFunctionClosed : U.hydraulicConductivityFunction
  richardsEquationClosed : U.richardsEquation
  vanGenuchtenModelClosed : U.vanGenuchtenModel

def UnsaturatedZoneFlowClosed (U : UnsaturatedZoneFlowPackage) : Prop :=
  U.moistureContent ∧ U.pressureHead ∧ U.hydraulicConductivityFunction ∧
  U.richardsEquation ∧ U.vanGenuchtenModel

theorem unsaturated_zone_flow_closed_from_evidence (U : UnsaturatedZoneFlowPackage) (E : UnsaturatedZoneFlowEvidence U) : UnsaturatedZoneFlowClosed U := by
  exact And.intro E.moistureContentClosed
    (And.intro E.pressureHeadClosed
      (And.intro E.hydraulicConductivityFunctionClosed
        (And.intro E.richardsEquationClosed E.vanGenuchtenModelClosed)))

end EarthScienceHydrogeologyLemmaCanonicalLaneLean
end HautevilleHouse