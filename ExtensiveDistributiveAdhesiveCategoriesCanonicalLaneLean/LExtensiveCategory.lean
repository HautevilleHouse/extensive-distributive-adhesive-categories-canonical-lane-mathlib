import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean.ExtensiveCategory

namespace HautevilleHouse
namespace ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean

structure LExtensiveCategory where
  C : Type u
  [instCategory : Category C]
  [instFiniteLimits : HasFiniteLimits C]
  [instFiniteColimits : HasFiniteColimits C]
  [instBinaryCoproducts : HasBinaryCoproducts C]
  [instTerminal : HasTerminal C]
  disjointCoproducts : Prop
  pullbackStability : Prop
  terminalSeparator : Prop

def LExtensiveCategoryClosed (L : LExtensiveCategory) : Prop :=
  L.disjointCoproducts ∧ L.pullbackStability ∧ L.terminalSeparator

structure LExtensiveCategoryEvidence (L : LExtensiveCategory) where
  disjointCoproductsClosed : L.disjointCoproducts
  pullbackStabilityClosed : L.pullbackStability
  terminalSeparatorClosed : L.terminalSeparator

theorem l_extensive_category_closed_from_evidence (L : LExtensiveCategory) (E : LExtensiveCategoryEvidence L) :
    LExtensiveCategoryClosed L := by
  exact And.intro E.disjointCoproductsClosed (And.intro E.pullbackStabilityClosed E.terminalSeparatorClosed)

end ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean
end HautevilleHouse