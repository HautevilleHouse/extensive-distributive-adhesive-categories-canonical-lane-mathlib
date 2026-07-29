import canonicalLaneMathlib.AdmissibleClass
import ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean

structure ExtensivePackage where
  coproductsDisjoint : Prop
  coproductsUniversal : Prop
  pullbacksAlongCoproduct : Prop
  disjointnessEvidence : coproductsDisjoint
  universalityEvidence : coproductsUniversal
  pullbackEvidence : pullbacksAlongCoproduct

structure ExtensiveEvidence (E : ExtensivePackage) where
  disjointnessClosed : E.coproductsDisjoint
  universalityClosed : E.coproductsUniversal
  pullbackClosed : E.pullbacksAlongCoproduct

def ExtensiveClosed (E : ExtensivePackage) : Prop :=
  E.coproductsDisjoint ∧ E.coproductsUniversal ∧ E.pullbacksAlongCoproduct

theorem extensive_closed_from_evidence (E : ExtensivePackage) (Ev : ExtensiveEvidence E) :
    ExtensiveClosed E := by
  exact And.intro Ev.disjointnessClosed (And.intro Ev.universalityClosed Ev.pullbackClosed)

theorem extensive_bridge_closed (E : ExtensivePackage) :
    bridgeClosed (AdmissibleClass.mk (AdmittedObject.default) (ExtensiveClosed E) (ExtensiveClosed E) (Or.inl (ExtensiveClosed E))) := by
  exact bridge_from_admissible_class _

end ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean
end HautevilleHouse