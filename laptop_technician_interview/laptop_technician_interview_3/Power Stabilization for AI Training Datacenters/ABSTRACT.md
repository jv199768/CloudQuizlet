Abstract— Large Artificial Intelligence (AI) training workloads spanning several tens of thousands of GPUs present
unique power management challenges. These arise due to the
high variability in power consumption during the training.
Given the synchronous nature of these jobs, during every
iteration there is a computation-heavy phase, where each GPU
works on the local data, and a communication-heavy phase
where all the GPUs synchronize on the data. Because computeheavy phases require much more power than communication
phases, large power swings occur. The amplitude of these
power swings is ever increasing with the increase in the size
of training jobs. An even bigger challenge arises from the
frequency spectrum of these power swings which, if harmonized
with critical frequencies of utilities, can cause physical damage
to the power grid infrastructure. Therefore, to continue scaling
AI training workloads safely, we need to stabilize the power
of such workloads. This paper introduces the challenge with
production data and explores innovative solutions across the
stack: software, GPU hardware, and datacenter infrastructure.
We present the pros and cons of each of these approaches
and finally present a multi-pronged approach to solving the
challenge. The proposed solutions are rigorously tested using a
combination of real hardware and Microsoft’s in-house cloud
power simulator, providing critical insights into the efficacy of
these interventions under real-world conditions.
