import canonicalLaneMathlib.AdmissibleClass
import ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean.BridgeLemmas
import ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean

def ConstrainedAdhesiveClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_adhesive_endgame (A : AdmissibleClass) :
    ConstrainedAdhesiveClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean
end HautevilleHouse