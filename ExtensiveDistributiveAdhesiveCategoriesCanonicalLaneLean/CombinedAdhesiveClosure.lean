import canonicalLaneMathlib.AdmissibleClass
import ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean.ExtensivePackages
import ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean.DistributivePackages
import ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean.AdhesivePackages
import ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean

structure CombinedAdhesivePackage where
  extensive : ExtensivePackage
  distributive : DistributivePackage
  adhesive : AdhesivePackage
  compatibility : Prop
  compatibilityEvidence : compatibility

structure CombinedAdhesiveEvidence (C : CombinedAdhesivePackage) where
  extensiveClosed : ExtensiveClosed C.extensive
  distributiveClosed : DistributiveClosed C.distributive
  adhesiveClosed : AdhesiveClosed C.adhesive
  compatibilityClosed : C.compatibility

def CombinedAdhesiveClosed (C : CombinedAdhesivePackage) : Prop :=
  ExtensiveClosed C.extensive ∧
  DistributiveClosed C.distributive ∧
  AdhesiveClosed C.adhesive ∧
  C.compatibility

theorem combined_adhesive_closed_from_evidence (C : CombinedAdhesivePackage) (Ev : CombinedAdhesiveEvidence C) :
    CombinedAdhesiveClosed C := by
  exact And.intro Ev.extensiveClosed
    (And.intro Ev.distributiveClosed
      (And.intro Ev.adhesiveClosed Ev.compatibilityClosed))

theorem combined_adhesive_bridge_closed (C : CombinedAdhesivePackage) :
    bridgeClosed (AdmissibleClass.mk (AdmittedObject.default) (CombinedAdhesiveClosed C) (CombinedAdhesiveClosed C) (Or.inl (CombinedAdhesiveClosed C))) := by
  exact bridge_from_admissible_class _

end ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean
end HautevilleHouse