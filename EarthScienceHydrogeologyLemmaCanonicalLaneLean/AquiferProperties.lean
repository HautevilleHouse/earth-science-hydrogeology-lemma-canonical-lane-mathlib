import canonicalLaneMathlib.AdmissibleClass
import EarthScienceHydrogeologyLemmaCanonicalLaneLean.GroundwaterFlowPDE

namespace HautevilleHouse
namespace EarthScienceHydrogeologyLemmaCanonicalLaneLean

structure AquiferProperties where
  porousMedium : Type u
  porosity : Prop
  hydraulicConductivityTensor : Prop
  specificStorage : Prop
  transmissivity : Prop
  storativity : Prop
  confinedOrUnconfined : Prop

structure AquiferPropertiesEvidence (A : AquiferProperties) where
  porosityClosed : A.porosity
  hydraulicConductivityTensorClosed : A.hydraulicConductivityTensor
  specificStorageClosed : A.specificStorage
  transmissivityClosed : A.transmissivity
  storativityClosed : A.storativity
  confinedOrUnconfinedClosed : A.confinedOrUnconfined

def AquiferPropertiesClosed (A : AquiferProperties) : Prop :=
  A.porosity ∧ A.hydraulicConductivityTensor ∧ A.specificStorage ∧ A.transmissivity ∧ A.storativity ∧ A.confinedOrUnconfined

theorem aquifer_properties_closed_from_evidence (A : AquiferProperties) (E : AquiferPropertiesEvidence A) :
    AquiferPropertiesClosed A := by
  exact And.intro E.porosityClosed
    (And.intro E.hydraulicConductivityTensorClosed
      (And.intro E.specificStorageClosed
        (And.intro E.transmissivityClosed
          (And.intro E.storativityClosed E.confinedOrUnconfinedClosed))))

end EarthScienceHydrogeologyLemmaCanonicalLaneLean
end HautevilleHouse
