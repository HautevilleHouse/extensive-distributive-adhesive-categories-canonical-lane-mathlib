import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean

structure DistributivePackage where
  finiteProducts : Prop
  finiteCoproducts : Prop
  distributivityLaw : Prop
  finiteProductsEvidence : finiteProducts
  finiteCoproductsEvidence : finiteCoproducts
  distributivityEvidence : distributivityLaw

structure DistributiveEvidence (D : DistributivePackage) where
  productsClosed : D.finiteProducts
  coproductsClosed : D.finiteCoproducts
  distributivityClosed : D.distributivityLaw

def DistributiveClosed (D : DistributivePackage) : Prop :=
  D.finiteProducts ∧ D.finiteCoproducts ∧ D.distributivityLaw

theorem distributive_closed_from_evidence (D : DistributivePackage) (Ev : DistributiveEvidence D) :
    DistributiveClosed D := by
  exact And.intro Ev.productsClosed (And.intro Ev.coproductsClosed Ev.distributivityClosed)

end ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean
end HautevilleHouse