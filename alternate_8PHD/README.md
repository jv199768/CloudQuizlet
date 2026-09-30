"''Abstract—Real-Time Operating Systems (RTOSes) play a
crucial role in safety-critical domains, where deterministic and
predictable task execution is essential. Yet they are increas-
ingly exposed to ionizing radiation, which can compromise
system dependability. To assess FreeRTOS under such conditions,
we introduce KRONOS, a software-based, non-intrusive post-
propagation Fault Injection (FI) framework that injects transient
and permanent faults into Operating System (OS)-visible kernel
data structures without specialized hardware or debug interfaces.
Using KRONOS, we conduct an extensive FI campaign on core
FreeRTOS kernel components, including scheduler-related vari-
ables and Task Control Blocks (TCBs), characterizing the impact
of kernel-level corruptions on functional correctness, timing
behavior, and availability. The results show that corruption of
pointer and key scheduler-related variables frequently leads to
crashes, whereas many TCB fields have only a limited impact on
system availability.
Index Terms—Embedded Systems, Real-Time Operating Sys-
tem, Fault Injection, Reliability Assessment, Single Event Upset,
Harsh Environment
'''
