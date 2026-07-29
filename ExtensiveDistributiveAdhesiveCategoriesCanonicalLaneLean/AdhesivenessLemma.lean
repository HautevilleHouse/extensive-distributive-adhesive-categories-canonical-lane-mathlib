import HautevilleHouse.ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean

structure AdhesivenessEvidence (A : AdmissibleClass) where
  pushoutPullbackIso : ∀ {X Y Z : A.category.C} (f : X ⟶ Y) (g : Z ⟶ Y), (Monic f) → (Pushout f g) + (Pullback f g) ≅ Z
  evidenceClosed : pushoutPullbackIso = A.category.adhesiveness

theorem adhesiveness_closed (A : AdmissibleClass) (E : AdhesivenessEvidence A) :
    A.category.adhesiveness :=
  by
    unfold AdhesivenessEvidence at E
    exact E.evidenceClosed.symm ▸ E.pushoutPullbackIso

end ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean
end HautevilleHouse