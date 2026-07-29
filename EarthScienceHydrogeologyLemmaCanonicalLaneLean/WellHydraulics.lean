import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyLemmaCanonicalLaneLean

structure WellHydraulicsPackage {A : AdmissibleClass} {F : AquiferFlowPackage A} where
  theisSolution : Prop
  cooperJacobApproximation : Prop
  skinEffect : Prop
  wellboreStorage : Prop
  partialPenetration : Prop
  boundaryEffects : Prop

structure WellHydraulicsEvidence {A : AdmissibleClass} {F : AquiferFlowPackage A}
    (W : WellHydraulicsPackage F) where
  theisSolutionClosed : W.theisSolution
  cooperJacobApproximationClosed : W.cooperJacobApproximation
  skinEffectClosed : W.skinEffect
  wellboreStorageClosed : W.wellboreStorage
  partialPenetrationClosed : W.partialPenetration
  boundaryEffectsClosed : W.boundaryEffects

def WellHydraulicsClosed {A : AdmissibleClass} {F : AquiferFlowPackage A}
    (W : WellHydraulicsPackage F) : Prop :=
  W.theisSolution ∧ W.cooperJacobApproximation ∧ W.skinEffect ∧
  W.wellboreStorage ∧ W.partialPenetration ∧ W.boundaryEffects

theorem well_hydraulics_closed_from_evidence
    {A : AdmissibleClass} {F : AquiferFlowPackage A}
    (W : WellHydraulicsPackage F) (E : WellHydraulicsEvidence W) :
    WellHydraulicsClosed W := by
  exact And.intro E.theisSolutionClosed
    (And.intro E.cooperJacobApproximationClosed
      (And.intro E.skinEffectClosed
        (And.intro E.wellboreStorageClosed
          (And.intro E.partialPenetrationClosed E.boundaryEffectsClosed))))

end EarthScienceHydrogeologyLemmaCanonicalLaneLean
end HautevilleHouse
