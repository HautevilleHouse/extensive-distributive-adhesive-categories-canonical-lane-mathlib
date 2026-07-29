import canonicaLaneMathlib.AdmissibleClass
import Mathlib.CategoryTheory.Limits.Shapes.Pullbacks
import Mathlib.CategoryTheory.Limits.Shapes.Pushouts
import Mathlib.CategoryTheory.Limits.Shapes.Coproducts
import Mathlib.CategoryTheory.Limits.Shapes.Products
import Mathlib.CategoryTheory.Morphism

namespace HautevilleHouse
namespace ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean

open CategoryTheory

structure AdmittedCategory where
  C : Type u
  [inst : Category C]
  hasFiniteCoproducts : HasFiniteCoproducts C
  hasPullbacks : HasPullbacks C
  hasPushouts : HasPushouts C
  hasFiniteProducts : HasFiniteProducts C

structure AdmittedObject where
  category : AdmittedCategory
  universality : Prop
  distributivity : Prop
  adhesiveness : Prop
  conclusion : universality ∧ distributivity ∧ adhesiveness

end ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean
end HautevilleHouse