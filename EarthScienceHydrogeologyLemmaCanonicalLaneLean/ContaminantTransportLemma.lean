import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyLemmaCanonicalLaneLean

structure ContaminantTransportPackage where
  advectionEquation : Prop
  dispersionModel : Prop
  sorptionCoefficient : Prop
  retardationFactor : Prop
  reactionKinetics : Prop
  massBalanceClosed : Prop

structure ContaminantTransportEvidence (C : ContaminantTransportPackage) where
  advectionEquationClosed : C.advectionEquation
  dispersionModelClosed : C.dispersionModel
  sorptionCoefficientClosed : C.sorptionCoefficient
  retardationFactorClosed : C.retardationFactor
  reactionKineticsClosed : C.reactionKinetics
  massBalanceClosed : C.massBalanceClosed

def ContaminantTransportClosed (C : ContaminantTransportPackage) : Prop :=
  C.advectionEquation ∧ C.dispersionModel ∧ C.sorptionCoefficient ∧
  C.retardationFactor ∧ C.reactionKinetics ∧ C.massBalanceClosed

theorem contaminant_transport_closed_from_evidence (C : ContaminantTransportPackage)
    (E : ContaminantTransportEvidence C) : ContaminantTransportClosed C := by
  exact And.intro E.advectionEquationClosed
    (And.intro E.dispersionModelClosed
      (And.intro E.sorptionCoefficientClosed
        (And.intro E.retardationFactorClosed
          (And.intro E.reactionKineticsClosed E.massBalanceClosed))))

end EarthScienceHydrogeologyLemmaCanonicalLaneLean
end HautevilleHouse