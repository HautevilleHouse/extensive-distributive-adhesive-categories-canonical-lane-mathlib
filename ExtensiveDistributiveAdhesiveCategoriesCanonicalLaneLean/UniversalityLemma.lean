import HautevilleHouse.ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean

structure UniversalityEvidence (A : AdmissibleClass) where
  pullbackCoproductIso : ∀ {X Y Z : A.category.C} (f : X ⟶ Z) (g : Y ⟶ Z),
    (Pullback f g) ⊗ (Coproduct X Y) ≅ Coproduct (Pullback f g) (Pullback f g)
  evidenceClosed : PullbackCoproductIso = A.category.universality

theorem universality_closed (A : AdmissibleClass) (E : UniversalityEvidence A) :
    A.category.universality :=
  by
    unfold UniversalityEvidence at E
    exact E.evidenceClosed.symm ▸ E.pullbackCoproductIso

end ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean
end HautevilleHouse