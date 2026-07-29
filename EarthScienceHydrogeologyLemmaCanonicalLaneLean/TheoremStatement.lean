import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyLemmaCanonicalLaneLean

structure HydrogeologyAdmittedObject where
  aquiferModel : Type
  darcyLawSatisfied : Prop
  conclusion : darcyLawSatisfied

def HydrogeologyWitnessClosed (O : HydrogeologyAdmittedObject) : Prop :=
  O.darcyLawSatisfied

end EarthScienceHydrogeologyLemmaCanonicalLaneLean
end HautevilleHouse