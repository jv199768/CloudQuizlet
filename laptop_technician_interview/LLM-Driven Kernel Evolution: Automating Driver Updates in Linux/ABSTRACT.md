Abstract
Arina Kharlamova†
Jiawen Liu† Tianyi Zhang Xinrui Yang† Humaid Alqasimi†
Youcheng Sun† Chun Jason Xue†
† Mohamed bin Zayed University of Artificial Intelligence (MBZUAI)
Linux kernel evolution breaks drivers through API/ABI
changes, semantic shifts, and security-hardening updates.
We introduce DRIVEBENCH, an executable corpus of
kernel→driver co-evolution cases, and AUTODRIVER, a
closed-loop, LLM-driven system for automating driver maintenance. The system integrates prompt engineering, multiagent collaboration, static analysis, and iterative validation
to ensure that generated patches are not only syntactically
correct but also functionally and semantically consistent with
kernel conventions. The corpus spans v5.10–v6.10 with 235
validated cases drawn from 612 candidates. In evaluation
across 55 cases, AUTODRIVER achieves 56.4% compilation
success; QEMU-based boot verification indicates that compiled patches preserve driver initialization in most instances.
By releasing DRIVEBENCH and tooling, we enable reproducible research and a practical route to continuous, safe
co-evolution of drivers with the Linux kernel.

The systemic layer restores causality and context, linking
driver updates to the precise kernel commits that necessitated
them. Together, these layers transform raw version-control
history into an executable representation of software evolution, supporting both interpretive analysis and deterministic
re-execution.
The design adheres to three principles typical of productiongrade system datasets: (I) Traceable provenance, ensuring that
every record can be reconstructed from verifiable Git sources;
(II) Semantic interpretability, enabling cross-layer reasoning
over developer intent and maintenance behaviour; and (III)
Experimental reproducibility, allowing each change event to
be replayed in isolation under controlled build environments.
By aligning these principles, DRIVEBENCH acts as the infrastructural substrate for causal and semantic studies of kernel
evolution (e.g., analogous in spirit to system benchmarks such
as Syzkaller for fuzzing or CSmith for compiler robustness,
but oriented toward longitudinal driver co-adaptation).
Figure 3 illustrates the conceptual architecture of
DRIVEBENCH, showing the interaction between the semantic
(meaning extraction), analytical (structuring and filtering),
and systemic (causality reconstruction) layers. Each layer
exposes a well-defined interface for data exchange and verification, enabling modular extension and consistent evaluation
across future kernel releases.

