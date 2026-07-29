import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean

structure AdhesiveCategory where
  C : Type u
  [instCategory : Category C]
  [instFiniteLimits : HasFiniteLimits C]
  [instFiniteColimits : HasFiniteColimits C]
  pushoutAlongMonoIsPullback : Prop
  pullbackAlongMonoIsPushout : Prop

def AdhesiveCategoryClosed (A : AdhesiveCategory) : Prop :=
  A.pushoutAlongMonoIsPullback ∧ A.pullbackAlongMonoIsPushout

structure AdhesiveCategoryEvidence (A : AdhesiveCategory) where
  pushoutAlongMonoIsPullbackClosed : A.pushoutAlongMonoIsPullback
  pullbackAlongMonoIsPushoutClosed : A.pullbackAlongMonoIsPushout

theorem adhesive_category_closed_from_evidence (A : AdhesiveCategory) (E : AdhesiveCategoryEvidence A) :
    AdhesiveCategoryClosed A := by
  exact And.intro E.pushoutAlongMonoIsPullbackClosed E.pullbackAlongMonoIsPushoutClosed

end ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean
end HautevilleHouse