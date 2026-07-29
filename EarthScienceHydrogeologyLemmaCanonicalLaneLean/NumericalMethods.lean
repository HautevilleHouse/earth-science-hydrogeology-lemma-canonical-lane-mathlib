import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyLemmaCanonicalLaneLean

structure NumericalMethodsPackage {A : AdmissibleClass}
    (F : AquiferFlowPackage A) (U : UnsaturatedZonePackage F) where
  finiteDifferenceScheme : Prop
  finiteElementScheme : Prop
  timeSteppingStability : Prop
  convergenceCriterion : Prop
  massConservation : Prop
  boundaryConditionImplementation : Prop
  iterativeSolver : Prop

structure NumericalMethodsEvidence {A : AdmissibleClass}
    {F : AquiferFlowPackage A} {U : UnsaturatedZonePackage F}
    (N : NumericalMethodsPackage F U) where
  finiteDifferenceSchemeClosed : N.finiteDifferenceScheme
  finiteElementSchemeClosed : N.finiteElementScheme
  timeSteppingStabilityClosed : N.timeSteppingStability
  convergenceCriterionClosed : N.convergenceCriterion
  massConservationClosed : N.massConservation
  boundaryConditionImplementationClosed : N.boundaryConditionImplementation
  iterativeSolverClosed : N.iterativeSolver

def NumericalMethodsClosed {A : AdmissibleClass}
    {F : AquiferFlowPackage A} {U : UnsaturatedZonePackage F}
    (N : NumericalMethodsPackage F U) : Prop :=
  N.finiteDifferenceScheme ∧ N.finiteElementScheme ∧
  N.timeSteppingStability ∧ N.convergenceCriterion ∧
  N.massConservation ∧ N.boundaryConditionImplementation ∧ N.iterativeSolver

theorem numerical_methods_closed_from_evidence
    {A : AdmissibleClass} {F : AquiferFlowPackage A} {U : UnsaturatedZonePackage F}
    (N : NumericalMethodsPackage F U) (E : NumericalMethodsEvidence N) :
    NumericalMethodsClosed N := by
  exact And.intro E.finiteDifferenceSchemeClosed
    (And.intro E.finiteElementSchemeClosed
      (And.intro E.timeSteppingStabilityClosed
        (And.intro E.convergenceCriterionClosed
          (And.intro E.massConservationClosed
            (And.intro E.boundaryConditionImplementationClosed E.iterativeSolverClosed)))))

end EarthScienceHydrogeologyLemmaCanonicalLaneLean
end HautevilleHouse
