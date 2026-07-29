import EllipticFunctionsIntegralsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace EllipticFunctionsIntegralsCanonicalLaneLean

def sourceRepository : String :=
  "elliptic-functions-integrals-canonical-lane"

def sourceDescription : String :=
  "Elliptic Functions Integrals"

structure SourceTheoremBoundary where
  claimBoundary : String
  boundaryOpen : Bool

def sourceTheoremBoundary : SourceTheoremBoundary :=
  { claimBoundary := "All elliptic integrals reduce to elementary functions and elliptic integrals of first, second, third kind.",
    boundaryOpen := true }

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := sourceTheoremBoundary.claimBoundary,
    certificateLane := "manifold_constrained",
    carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary" }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

end EllipticFunctionsIntegralsCanonicalLaneLean
end HautevilleHouse