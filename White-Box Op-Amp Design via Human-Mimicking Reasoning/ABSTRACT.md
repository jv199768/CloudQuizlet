Abstract—This brief proposes White-Op, an interpretable operational amplifier (op-amp) parameter design framework based on
the human-mimicking reasoning of large-language-model agents.
We formalize the implicit human reasoning mechanism into
explicit steps of introducing hypothetical constraints, and develop
an iterative, human-like hypothesis-verification-decision workflow.
Specifically, the agent is guided to introduce hypothetical constraints to derive and properly regulate positions of symbolically
tractable poles and zeros, thus formulating a closed-form mathematical optimization problem, which is then solved programmatically and verified via simulation. Theory-simulation result
analysis guides the decision-making for refinement. Experiments
on 9 op-amp topologies show that, unlike the uninterpretable
black-box baseline which finally fails in 5 topologies, White-Op
achieves reliable, interpretable behavioral-level designs with only
8.52% theoretical prediction error and the design functionality
retains after transistor-level mapping for all topologies. White-Op
is open-sourced at https://github.com/zhchenfdu/whiteop.

Index Terms - analog circuit, operational amplifier, parameter design, large language model, mathematical reasoning 

I. INTRODUCTION 

Operational amplifiers (op-amps) are fundamental building
blocks in analog circuits. Their parameter design directly determines the circuit performance. Given the diverse application
scenarios and stringent specifications (specs), op-amps often
require labor-intensive manual parameter customization.
Automated black-box optimizers like Bayesian optimization
(BO) [1]–[3] can discover high-score parameter combinations,
but the pure score-driven search without physical grounding,
presents key limitations on their non-interpretability, which
(i) often harbors severe latent design defects and even failures
manifesting in downstream implementation, and (ii) hinders
human designers from understanding, adopting, or refining the
solution. Therefore, interpretable, or so-called white-box opamp design tools remain desirable.
Symbolic derivation is crucial for white-box op-amp design.
Rule-based symbolic circuit derivation tools like GPDD [4]
yield unbiased but lengthy transfer functions (TFs), rendering
pole-zero (PZ) extraction hard. In practice, experts typically
rely on their mathematical-physical intuition to simplify TFs
and solve PZs, where experience-driven human reasoning are
opaque and implicit, and thereby, is hard to encode in software.
Follow-up works [5], [6] hard-code some TF simplification
rules to bridge this gap, yet the transparency of PZ extraction
and the adaptability of the fixed rules remain open challenges.
Beyond TF and PZ derivation, the flexible, reliable regulation of PZ positions ensures both functionality and performance, which is more nuanced, remaining largely unsolved by
developing rule-based symbolic derivation tools.

Large language models (LLMs), with human-like learning
and task execution capacity, have shown potential for whitebox op-amp design. Existing efforts focus on two methods: (i)
equipping LLMs with carefully curated knowledge bases of
ready-made parameter calculation recipes for specific topologies [7], [8], to enable the reproduction of typical designs
[9], while the LLM itself functions primarily as a procedural
executor; (ii) integrating LLMs as parameter predictors within
conventional sizing loops [10]–[12], where sizing experience
accumulates but the real rationale remains opaque. These
methods do not fully enable human-like op-amp design, partly
constrained by limited reasoning capabilities of earlier LLMs.
Recent advances in reasoning LLMs [13], [14], achieving
or exceeding human parity in mathematics, suggest that LLMassisted symbolic derivation is within reach.
However, human-like op-amp design presents harder challenges than derivation: it relies heavily on the implicit reasoning mechanism that experts apply but rarely articulate. For
example, (i) TF simplification requires discarding negligible
terms, but which terms qualify is usually judged informally;
(ii) PZ extraction often needs approximate solving techniques
like root separation, but their suitablitity conditions are usually unspoken in literature; (iii) PZ positioning often follows
unstated insights like how far poles separates, why this separation, and so on. Such implicit reasoning processes resist
formalization into explicit, LLM-executable reasoning tasks.
To this end, this brief proposes White-Op, an op-amp design
framework via human-mimicking reasoning of agents. The key
idea is that the above reasoning mechanism is distilled as explicit reasoning steps of introducing hypothetical constraints
(e.g., ...≫...), enabling tractable TF simplification, reasonable
PZ extraction, and deliberate positioning of PZs.
Since such hypotheses may not always correct, we devevlop
an iterative hypothesis-verification-decision workflow to validate and adjust the constraints, where the agent: (i) proposes
hypothetical constraints to extract and position PZs, thus
formulating a closed-form optimization problem; (ii) solves
it programmatically and validates the solution via simulation;
(iii) analyzes theory-simulation results and makes refinements.
White-Op offers op-amp designs with interpretability and
reliability through LLM reasoning, without referring to predefined parameter calculation recipes for specific topologies,
black-box sizers or rule-based symbolic derivation tools.
