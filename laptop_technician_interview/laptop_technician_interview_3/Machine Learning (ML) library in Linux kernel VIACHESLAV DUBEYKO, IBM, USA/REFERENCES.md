4 Conclusion and Contribution
Suggested approach of kernel ML library has been implemented as
Proof Of Concept (PoC) project [3, 4] with the goal to demonstrate
feasibility of the suggestion and to design the interface of interaction the kernel-space ML model proxy and the ML model user-space
thread. The repository [3, 4] contains examples of generalized and
specialized ML model proxy. As the future work, we plan to implement ML-based GC subsystem for several kernel-space file systems
(F2FS, NILFS2, SSDFS) and ML-based DAMON extension with the
goal to check the approach in real-life applications and to show the
capability to achieve better efficiency by employing a “self-learning”
ML model(s) in Linux kernel.

Machine Learning (ML) library in Linux kernel • 3
References
[1] Adrian Brodzik, Tomasz Malec-Kruszyński, Wojciech Niewolski, Mikołaj Tkaczyk,
Krzysztof Bocianiak, and Sok-Yen Loui. 2024. Ransomware Detection Using Machine Learning in the Linux Kernel. arXiv:2409.06452 [cs.CR] https://arxiv.org/
abs/2409.06452
[2] Jingde Chen, Subho S. Banerjee, Zbigniew T. Kalbarczyk, and Ravishankar K. Iyer.
2020. Machine learning for load balancing in the Linux kernel. In Proceedings of
the 11th ACM SIGOPS Asia-Pacific Workshop on Systems (Tsukuba, Japan) (APSys
’20). Association for Computing Machinery, New York, NY, USA, 67–74. doi:10.
1145/3409963.3410492
[3] Viacheslav Dubeyko. 2026. Linux kernel with ML library. Retrieved January 16,
2026 from https://github.com/kernel-ml-lib/ml-lib-linux
[4] Viacheslav Dubeyko. 2026. ML library source code. Retrieved January 16, 2026
from https://github.com/kernel-ml-lib/ml-lib
[5] Jorge Gallego-Madrid, Irene Bru-Santa, Ramon Sanchez-Iborra, and Antonio
Skarmeta. 2024. Integrating Machine Learning Models into the Linux Kernel: Opportunities and Challenges. In Mobile Internet Security, Ilsun You, Michał Choraś,
Seonghan Shin, Hwankuk Kim, and Philip Virgil Astillo (Eds.). Springer Nature
Singapore, Singapore, 209–219.
[6] Vasuki Shankar. 2025. Machine Learning for Linux Kernel Optimization: Current
Trends and Future Directions. International Journal of Computer Sciences and
Engineering 13 (03 2025), 56–64. doi:10.26438/ijcse/v13i3.5664
[7] Prabhpreet Singh Sodhi, Georgios Liargkovas, and Kostis Kaffes. 2025. Empowering machine-learning assisted kernel decisions with eBPFML. In Proceedings of the 3rd Workshop on EBPF and Kernel Extensions (Coimbra, Portugal)
(eBPF ’25). Association for Computing Machinery, New York, NY, USA, 28–30.
doi:10.1145/3748355.3748363
[8] Zicheng Wang, Tiejin Chen, Qinrun Dai, Yueqi Chen, Hua Wei, and Qingkai Zeng.
2024. When eBPF Meets Machine Learning: On-the-fly OS Kernel Compartmentalization. arXiv:2401.05641 [cs.OS] https://arxiv.org/abs/2401.05641
[9] Junxue Zhang, Chaoliang Zeng, Hong Zhang, Shuihai Hu, and Kai Chen. 2022. LiteFlow: towards high-performance adaptive neural networks for kernel datapath. In
Proceedings of the ACM SIGCOMM 2022 Conference (Amsterdam, Netherlands) (SIGCOMM ’22). Association for Computing Machinery, New York, NY, USA, 414–427.
doi:10.1145/3544216.3544229
