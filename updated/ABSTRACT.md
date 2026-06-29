'''
Abstract
In this paper, we present an experimental evaluation study of the Alternating Direction Method of Multipliers (ADMM), which is a widely used technique in the distributed optimization of power distribution networks. The focus of this study is on how real 5G communication performance affects ADMM in a fully experimental platform that features commercial 5G connectivity and real-time control. The ADMM-based Distributed Optimal Power Flow (DOPF) problem is solved using the IEEE 123-bus unbalanced distribution feeder subdivided into five areas, each managed by a local controller implemented on a Raspberry Pi. To mitigate the impact of the communication network variability, we propose a delay threshold-based mechanism that yields a 7.75% reduction in convergence time compared to a no-threshold baseline. We also devised a policy to dynamically update the threshold value based on communication and computation conditions, achieving a 26.42% reduction in the convergence time compared with the static optimal threshold. These results demonstrate the potential of adaptive, communication-aware control strategies for real-world Smart Grid (SG) deployments.

Index Terms: Distributed optimal power flow; Alternating direction method of multipliers (ADMM); 5G networks; Smart grid communication; Smart grid testbed; Distributed optimization; Experimental performance evaluation.
Acronyms


'''
