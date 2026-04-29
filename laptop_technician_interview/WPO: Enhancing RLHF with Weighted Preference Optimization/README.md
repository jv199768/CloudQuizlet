Wenxuan Zhou†

, Ravi Agrawal, Shujian Zhang, Sathish Reddy Indurthi

Sanqiang Zhao, Kaiqiang Song, Silei Xu, Chenguang Zhu

Zoom Video Communications

Abstract

Reinforcement learning from human feedback

(RLHF) is a promising solution to align large

language models (LLMs) more closely with

human values. Off-policy preference optimiza-

tion, where the preference data is obtained

from other models, is widely adopted due to

its cost efficiency and scalability. However,

off-policy preference optimization often suffers

from a distributional gap between the policy

used for data collection and the target policy,

leading to suboptimal optimization. In this pa-

per, we propose a novel strategy to mitigate

this problem by simulating on-policy learning

with off-policy preference data. Our Weighted

Preference Optimization (WPO) method adapts

off-policy data to resemble on-policy data more

closely by reweighting preference pairs accord-

ing to their probability under the current pol-

icy. This method not only addresses the dis-

tributional gap problem but also enhances the

optimization process without incurring addi-

tional costs. We validate our method on instruc-

tion following benchmarks including Alpaca

Eval 2 and MT-bench. WPO not only outper-

forms Direct Preference Optimization (DPO)

by up to 5.6% on Alpaca Eval 2 but also estab-

lishes a remarkable length-controlled winning

rate against GPT-4-turbo of 76.7% based on

Gemma-2-9b-it. We release the code and mod-

els at https://github.com/wzhouad/WPO.
