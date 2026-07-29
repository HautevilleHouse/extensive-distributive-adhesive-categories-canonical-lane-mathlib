import HautevilleHouse.ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean

structure DistributivityEvidence (A : AdmissibleClass) where
  productCoproductIso : ∀ {X Y Z : A.category.C}, A.category.C.product X (A.category.C.coproduct Y Z) ≅ A.category.C.coproduct (A.category.C.product X Y) (A.category.C.product X Z)
  evidenceClosed : productCoproductIso = A.category.distributivity

theorem distributivity_closed (A : AdmissibleClass) (E : DistributivityEvidence A) :
    A.category.distributivity :=
  by
    unfold DistributivityEvidence at E
    exact E.evidenceClosed.symm ▸ E.productCoproductIso

end ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean
end HautevilleHouse