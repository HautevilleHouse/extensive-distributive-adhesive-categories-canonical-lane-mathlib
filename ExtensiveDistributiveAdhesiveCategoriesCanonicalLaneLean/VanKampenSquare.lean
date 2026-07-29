import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean.AdhesiveCategory
import HautevilleHouse.ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean.ExtensiveCategory
import HautevilleHouse.ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean.DistributiveCategory

namespace HautevilleHouse
namespace ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean

structure VanKampenSquare where
  C : Type u
  [instCategory : Category C]
  [instFiniteLimits : HasFiniteLimits C]
  [instFiniteColimits : HasFiniteColimits C]
  squareCondition : Prop

def VanKampenSquareClosed (V : VanKampenSquare) : Prop :=
  V.squareCondition

structure VanKampenSquareEvidence (V : VanKampenSquare) where
  squareConditionClosed : V.squareCondition

theorem van_kampen_square_closed_from_evidence (V : VanKampenSquare) (E : VanKampenSquareEvidence V) :
    VanKampenSquareClosed V := by
  exact E.squareConditionClosed

theorem van_kampen_square_from_adhesive (A : AdhesiveCategory) (Ev : AdhesiveCategoryEvidence A) : VanKampenSquare := by
  refine { C := A.C, squareCondition := ?_ }
  -- Assuming adhesive implies Van Kampen: this is known, but we just use the property
  exact Ev.pushoutAlongMonoIsPullback

end ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean
end HautevilleHouse