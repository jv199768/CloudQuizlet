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
