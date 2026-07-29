import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyLemmaCanonicalLaneLean

structure AquiferTestingPackage where
  pumpingTestAnalysis : Prop
  drawdownCurve : Prop
  transmissivity : Prop
  storageCoefficient : Prop
  wellPerformance : Prop
  skinEffect : Prop

structure AquiferTestingEvidence (A : AquiferTestingPackage) where
  pumpingTestAnalysisClosed : A.pumpingTestAnalysis
  drawdownCurveClosed : A.drawdownCurve
  transmissivityClosed : A.transmissivity
  storageCoefficientClosed : A.storageCoefficient
  wellPerformanceClosed : A.wellPerformance
  skinEffectClosed : A.skinEffect

def AquiferTestingClosed (A : AquiferTestingPackage) : Prop :=
  A.pumpingTestAnalysis ∧ A.drawdownCurve ∧ A.transmissivity ∧
  A.storageCoefficient ∧ A.wellPerformance ∧ A.skinEffect

theorem aquifer_testing_closed_from_evidence (A : AquiferTestingPackage)
    (E : AquiferTestingEvidence A) : AquiferTestingClosed A := by
  exact And.intro E.pumpingTestAnalysisClosed
    (And.intro E.drawdownCurveClosed
      (And.intro E.transmissivityClosed
        (And.intro E.storageCoefficientClosed
          (And.intro E.wellPerformanceClosed E.skinEffectClosed))))

end EarthScienceHydrogeologyLemmaCanonicalLaneLean
end HautevilleHouse