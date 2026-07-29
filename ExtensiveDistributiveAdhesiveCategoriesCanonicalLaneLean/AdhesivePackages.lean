import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean

structure AdhesivePackage where
  pushoutsAlongMono : Prop
  vanKampenSquare : Prop
  pushoutMonoEvidence : pushoutsAlongMono
  vanKampenEvidence : vanKampenSquare

structure AdhesiveEvidence (A : AdhesivePackage) where
  pushoutMonoClosed : A.pushoutsAlongMono
  vanKampenClosed : A.vanKampenSquare

def AdhesiveClosed (A : AdhesivePackage) : Prop :=
  A.pushoutsAlongMono ∧ A.vanKampenSquare

theorem adhesive_closed_from_evidence (A : AdhesivePackage) (Ev : AdhesiveEvidence A) :
    AdhesiveClosed A := by
  exact And.intro Ev.pushoutMonoClosed Ev.vanKampenClosed

end ExtensiveDistributiveAdhesiveCategoriesCanonicalLaneLean
end HautevilleHouse