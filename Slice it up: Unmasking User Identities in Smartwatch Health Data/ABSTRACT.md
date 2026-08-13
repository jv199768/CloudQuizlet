'''
Wearables are widely used for health data collection due to their
availability and advanced sensors, enabling smart health applica-
tions like stress detection. However, the sensitivity of personal
health data raises significant privacy concerns. While user de-
identification by removing direct identifiers such as names and
addresses is commonly employed to protect privacy, the data it-
self can still be exploited to re-identify individuals. We introduce
a novel framework for similarity-based Dynamic Time Warping
(DTW) re-identification attacks on time series health data. Using
the WESAD dataset and two larger synthetic datasets, we demon-
strate that even short segments of sensor data can achieve perfect
re-identification with our Slicing-DTW-Attack. Our attack is in-
dependent of training data and computes similarity rankings in
about 2 minutes for 10,000 subjects on a single CPU core. These
findings highlight that de-identification alone is insufficient to pro-
tect privacy. As a defense, we show that adding random noise to
the signals significantly reduces re-identification risk while only
moderately affecting usability in stress detection tasks, offering a
promising approach to balancing privacy and utility.
CCS Concepts
• Security and privacy → Usability in security and privacy;
Privacy protections; • Human-centered computing → Ubiq-
uitous and mobile devices.
"*"
