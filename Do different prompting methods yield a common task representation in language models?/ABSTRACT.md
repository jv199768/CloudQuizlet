Demonstrations and instructions are two primary approaches for prompting lan-

guage models to perform in-context learning (ICL) tasks. Do identical tasks elicited

in different ways result in similar representations of the task? An improved under-

standing of task representation mechanisms would offer interpretability insights and

may aid in steering models. We study this through function vectors (FVs), recently

proposed as a mechanism to extract few-shot ICL task representations. We gen-

eralize FVs to alternative task presentations, focusing on short textual instruction

prompts, and successfully extract instruction function vectors that promote zero-

shot task accuracy. We find evidence that demonstration- and instruction-based

function vectors leverage different model components, and offer several controls to

dissociate their contributions to task performance. Our results suggest that different

task prompting forms do not induce a common task representation through FVs

but elicit different, partly overlapping mechanisms. Our findings offer principled

support to the practice of combining instructions and task demonstrations, imply

challenges in universally monitoring task inference across presentation forms, and

encourage further examinations of LLM task inference mechanisms.



If you prompt a large language model (LLM) with in-context examples “Q: Japan A: Tokyo Q: Chile

A: Santiago Q: France A: Paris Q: Egypt A:" or with instructions “Map a country to its capital city: Q:

Egypt A:", you expect to get the same answer (Figure 1). These two prompts share only the final query

in common, but imply the same underlying task for the network to perform. This paper explores how

these two prompting methods result in similar or different representations of the specified task in the

language model. We consider these representations task representations, as they reflect information

in the network that induces the correct mapping for a given task, rather than the answer itself.

We focus on two prevalent approaches to specifying tasks to LLMs: demonstrations and instruc-

tions. The ability of LLMs to perform in-context learning (ICL) from demonstrations has been of

considerable interest since GPT-3 (Brown et al., 2020; Lampinen et al., 2024). With appropriate

fine-tuning, language models can also follow textual instructions, facilitating a far broader range of

use cases (Chung et al., 2022). We follow a considerable literature studying the mechanisms that

govern ICL (e.g., Olsson et al., 2022; Chen et al., 2024; Akyürek et al., 2024) and those that promote

instruction-following (Stolfo et al., 2024; Wu et al., 2024). Prior work studied either ability by itself;

here, we examine to what extent the two share representations and mechanisms.

Hyperparameters. We match the settings used by Todd et al. (2024): we use 100 examples to

compute mean task-conditioned activations and 25 for the indirect effects. We do so over the J = 5

top textual instructions for each task, splitting the examples evenly between the top instructions.

Models. We focus on the base and instruction-tuned versions of the 3B Llama-3.2 and 8B Llama-3.1

models, with the full list in Table 4. We also report some results with the weaker 1B Llama-3.2 and

7B Llama-2 models (Touvron et al., 2023), the latter of which matches Todd et al.’s (2024). Finally,

to examine the roles of post-training stages, we evaluate four OLMo-2 models (OLMo et al., 2024).

Tasks. We consider the same set of tasks and datasets used by Todd et al. (2024). We omit a few

classification datasets where successfully predicting the next token requires an understanding of

the format that is facilitated by demonstrations but not necessarily by minimal textual instructions

(we retain a total of 50 datasets; see Section D for the full list). We follow Todd et al. (2024) in

computing the top sets of heads only over datasets where a model surpasses chance performance. As

our approach requires 20 successful prompts for each of the five best instructions to compute the

mean task-conditioned activations, we also omit tasks where a model fails to pass this number of

prompts (which, in most cases, means it is also below chance accuracy and was already omitted ).

Textual instructions and uninformative baselines. We evaluate each model on each task using

one random seed six separate times, for the short (≤ 16 tokens) vs. longer (unbounded) instructions

crossed with all three uninformative baseline approaches (§2.1). We observe minimal deviation in

top heads across these conditions (see Section H.3), so we average the causal effects across all six to

compute the top heads. We then report final evaluation accuracies averaged over the results with both

sets of mean activations, those generated with short instructions and those from longer ones.

Results using in-context demonstrations. To enable comparison, we also replicate the original,

demonstration-based function vector evaluation with all models we consider, using the same random

seeds (and therefore, same train-evaluation splits) as used in the textual instruction setting.

Evaluation and Comparison Logic. We structure our evaluations to facilitate comparison between

FVs derived from demonstrations and instructions. We use the |A| = 20 top heads in both settings,

consistent with Todd et al. (2024) for the 7B models. We follow Todd et al. (2024) in evaluating

function vectors as an additive intervention to the residual stream after the |L/3| layer (layer 9 for the

Llama-3.2-3B models and layer 11 for the Llama-3.1-8B and OLMo-2-1123-7B ones). We report

two evaluation settings: 10-shot with shuffled labels (p˜

t

i

in §2.1) and 0-shot (with no instructions).

We focus our assessment of each FV in the setting matching its extraction: shuffled 10-shot for

demonstration FVs and 0-shot for instruction FVs. In addition to the FV evaluations, we report a

baseline of the evaluation setting without adding the function vector. We report accuracies using

informative task presentations for each evaluation in Section F: instructed 0-shot (averaging over the

top J = 5 instructions for each model and task), and 10-shot (without label shuffling).

Hyperparameters. We match the settings used by Todd et al. (2024): we use 100 examples to
compute mean task-conditioned activations and 25 for the indirect effects. We do so over the J = 5
top textual instructions for each task, splitting the examples evenly between the top instructions.
Models. We focus on the base and instruction-tuned versions of the 3B Llama-3.2 and 8B Llama-3.1
models, with the full list in Table 4. We also report some results with the weaker 1B Llama-3.2 and
7B Llama-2 models (Touvron et al., 2023), the latter of which matches Todd et al.’s (2024). Finally,
to examine the roles of post-training stages, we evaluate four OLMo-2 models (OLMo et al., 2024).
Tasks. We consider the same set of tasks and datasets used by Todd et al. (2024). We omit a few
classification datasets where successfully predicting the next token requires an understanding of
the format that is facilitated by demonstrations but not necessarily by minimal textual instructions
(we retain a total of 50 datasets; see Section D for the full list). We follow Todd et al. (2024) in
computing the top sets of heads only over datasets where a model surpasses chance performance. As
our approach requires 20 successful prompts for each of the five best instructions to compute the
mean task-conditioned activations, we also omit tasks where a model fails to pass this number of
prompts (which, in most cases, means it is also below chance accuracy and was already omitted ).
Textual instructions and uninformative baselines. We evaluate each model on each task using
one random seed six separate times, for the short (≤ 16 tokens) vs. longer (unbounded) instructions
crossed with all three uninformative baseline approaches (§2.1). We observe minimal deviation in
top heads across these conditions (see Section H.3), so we average the causal effects across all six to
compute the top heads. We then report final evaluation accuracies averaged over the results with both
sets of mean activations, those generated with short instructions and those from longer ones.
Results using in-context demonstrations. To enable comparison, we also replicate the original,
demonstration-based function vector evaluation with all models we consider, using the same random
seeds (and therefore, same train-evaluation splits) as used in the textual instruction setting.
Evaluation and Comparison Logic. We structure our evaluations to facilitate comparison between
FVs derived from demonstrations and instructions. We use the |A| = 20 top heads in both settings,
consistent with Todd et al. (2024) for the 7B models. We follow Todd et al. (2024) in evaluating
function vectors as an additive intervention to the residual stream after the |L/3| layer (layer 9 for the
Llama-3.2-3B models and layer 11 for the Llama-3.1-8B and OLMo-2-1123-7B ones). We report
two evaluation settings: 10-shot with shuffled labels (p˜
t
i
in §2.1) and 0-shot (with no instructions).
We focus our assessment of each FV in the setting matching its extraction: shuffled 10-shot for
demonstration FVs and 0-shot for instruction FVs. In addition to the FV evaluations, we report a
baseline of the evaluation setting without adding the function vector. We report accuracies using
informative task presentations for each evaluation in Section F: instructed 0-shot (averaging over the
top J = 5 instructions for each model and task), and 10-shot (without label shuffling).

