import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyLemmaCanonicalLaneLean

def HydraulicAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem hydraulic_admissible_endgame (A : AdmissibleClass) :
    HydraulicAdmissibleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceHydrogeologyLemmaCanonicalLaneLean
end HautevilleHouse