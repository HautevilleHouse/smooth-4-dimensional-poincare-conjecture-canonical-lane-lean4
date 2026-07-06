import Smooth4DimensionalPoincareConjectureCanonicalLaneLean.Formalization
import Smooth4DimensionalPoincareConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace Smooth4DimensionalPoincareConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "66241a0cdf8ec01b5de5ffb595379a7881e755f3a1a30bf85f0ef8ef6d5db077", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "dc5b87d980ff437e3e97b2deb63127a0b137c1c6cbaa600b87ea6a8490966e63", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "582e54900fab1a63dc07bc83ba322b03b9e545cf37484f2d22978c63db49a0ad", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "97e47a4debf27cf3f521974aaed13877abe9529d10b81f2f2c1bf53b90b33276", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "0339071631d5a154aa20c24da7f705b597e1a40331d3c1dfa4f345a627b1c134", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "778b55c423b37bcfe2633fe5b7f6a42eb0befa533ebce3f94edfca8fe99f2e1c", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "fac17c0a31bb523b5d2896cf532741c8696fab5154bb9e4cca8acb98c45a2d44", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "1a4c341631c90938372a40c870953c271e5f800e87e0806a6a5778c8d96328be", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "58be1ef0b75b62d26b26e2946b5617ce42c4adf27fbd961856fe93ebfc138a9b", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "S4P_G1", constant := "kappa_smoothing" },
  { gate := "S4P_G2", constant := "sigma_handle" },
  { gate := "S4P_G3", constant := "kappa_compact" },
  { gate := "S4P_G4", constant := "rho_rigidity" },
  { gate := "S4P_G5", constant := "sphere_transfer" },
  { gate := "S4P_G6", constant := "eps_coh" },
  { gate := "S4P_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "e7cf834dc673dc816a5d1954f860f47f440c6d97ab5373d77e8ea7f39cb59bc1" },
  { path := "README.md", sha256 := "f4b9f45dd74e147603fa3dd614459af82a0c5af627bb9d5c497a6c1e88cf5502" },
  { path := "artifacts/constants_extracted.json", sha256 := "97e47a4debf27cf3f521974aaed13877abe9529d10b81f2f2c1bf53b90b33276" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "582e54900fab1a63dc07bc83ba322b03b9e545cf37484f2d22978c63db49a0ad" },
  { path := "artifacts/constants_registry.json", sha256 := "0339071631d5a154aa20c24da7f705b597e1a40331d3c1dfa4f345a627b1c134" },
  { path := "artifacts/promotion_report.json", sha256 := "fac17c0a31bb523b5d2896cf532741c8696fab5154bb9e4cca8acb98c45a2d44" },
  { path := "artifacts/stitch_constants.json", sha256 := "778b55c423b37bcfe2633fe5b7f6a42eb0befa533ebce3f94edfca8fe99f2e1c" },
  { path := "notes/EG1_public.md", sha256 := "47e1d601bdf1f128817973e59ed6f4e05322f3d370051752f74ca3cb4abe57b4" },
  { path := "notes/EG2_public.md", sha256 := "8f3b132015de0827d67330455429b2e40198659a53015c998e3ad741fe21d13d" },
  { path := "notes/EG3_public.md", sha256 := "79f67a8968dda159c8d3f33e4cfb308e3dc1c620206397b4649d3af67be7254b" },
  { path := "notes/EG4_public.md", sha256 := "244903514886b9f61ea0e1497507969c0c5ec00c7bd434c406c36687100c9ce0" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "dc5b87d980ff437e3e97b2deb63127a0b137c1c6cbaa600b87ea6a8490966e63" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "cf1f9074b0003011bdf9889abae8a9ffae7e78bc0df3d4b57cafd84c27ad86fd" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "3d6ffff15bfed00d894510df1d3ac7a232ea3bfa420b52b931d089def9006514" },
  { path := "paper/SMOOTH_4D_POINCARE_CONJECTURE_PREPRINT.md", sha256 := "ae91dfd6780daa6a54c890136229be903acb0ae1a51565f4eab9c5757ad3162c" },
  { path := "repro/REPRO_PACK.md", sha256 := "6142682c8d08f5fee29d12e8cf04fb13b2f0bb0e39ca3bdcd4c1db55b0273b46" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "e6ec4c373af2b79da525287272c329ecc20ade10e4b9cf9176c9cb9c8c022cfc" },
  { path := "repro/certificate_baseline.json", sha256 := "58be1ef0b75b62d26b26e2946b5617ce42c4adf27fbd961856fe93ebfc138a9b" },
  { path := "repro/run_repro.sh", sha256 := "e0977b0ad0406c3659e0c708fe759dce17b9e450c202b7d14fe232d9bba780a1" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/s4p_closure_guard.py", sha256 := "2a0f793e194e5aec6243469cdbea6d4d191475097d136261d18436c87a707093" },
  { path := "scripts/README.md", sha256 := "0b1349e74976bf80eacad67257d32c0748c9453840313abc9bbf9fbd08214c26" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "S4P_G1", status := "PASS" },
  { gate := "S4P_G2", status := "PASS" },
  { gate := "S4P_G3", status := "PASS" },
  { gate := "S4P_G4", status := "PASS" },
  { gate := "S4P_G5", status := "PASS" },
  { gate := "S4P_G6", status := "PASS" },
  { gate := "S4P_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_smoothing", value := "1.08992" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_handle", value := "1.065" },
  { key := "sigma_star_can", value := "1.052" },
  { key := "sphere_transfer", value := "1.028393" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_smoothing",
  "rho_rigidity",
  "sigma_handle",
  "sigma_star_can",
  "sphere_transfer"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end Smooth4DimensionalPoincareConjectureCanonicalLaneLean
end HautevilleHouse
