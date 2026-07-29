import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean

structure ExtensiveCategory where
  C : Type u
  [instCategory : Category C]
  [instFiniteLimits : HasFiniteLimits C]
  [instFiniteColimits : HasFiniteColimits C]
  [instBinaryCoproducts : HasBinaryCoproducts C]
  disjointCoproducts : Prop
  pullbackStability : Prop

def ExtensiveCategoryClosed (E : ExtensiveCategory) : Prop :=
  E.disjointCoproducts ∧ E.pullbackStability

structure ExtensiveCategoryEvidence (E : ExtensiveCategory) where
  disjointCoproductsClosed : E.disjointCoproducts
  pullbackStabilityClosed : E.pullbackStability

theorem extensive_category_closed_from_evidence (E : ExtensiveCategory) (Ev : ExtensiveCategoryEvidence E) :
    ExtensiveCategoryClosed E := by
  exact And.intro Ev.disjointCoproductsClosed Ev.pullbackStabilityClosed

end ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean
end HautevilleHouse