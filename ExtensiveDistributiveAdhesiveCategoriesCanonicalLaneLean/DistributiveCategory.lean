import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean.AdhesiveCategory

namespace HautevilleHouse
namespace ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean

structure DistributiveCategory where
  C : Type u
  [instCategory : Category C]
  [instFiniteLimits : HasFiniteLimits C]
  [instFiniteColimits : HasFiniteColimits C]
  [instBinaryCoproducts : HasBinaryCoproducts C]
  [instBinaryProducts : HasBinaryProducts C]
  canonicalDistribution : Prop

def DistributiveCategoryClosed (D : DistributiveCategory) : Prop :=
  D.canonicalDistribution

structure DistributiveCategoryEvidence (D : DistributiveCategory) where
  canonicalDistributionClosed : D.canonicalDistribution

theorem distributive_category_closed_from_evidence (D : DistributiveCategory) (E : DistributiveCategoryEvidence D) :
    DistributiveCategoryClosed D := by
  exact E.canonicalDistributionClosed

end ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean
end HautevilleHouse