---
layout: default
title: "Horizon Summary: 2026-06-05 (EN)"
date: 2026-06-05
lang: en
---

> From 15 items, 11 important content pieces were selected

---

1. [Microsoft open-sources pg_durable for Postgres durable execution](#item-1) ⭐️ 8.0/10
2. [Google Releases Gemma 4 QAT Models for Efficient On-Device AI](#item-2) ⭐️ 8.0/10
3. [IP KVM Comparison: PiKVM V4 Plus Tops Homelab Testing](#item-3) ⭐️ 8.0/10
4. [Research Traces Massive GNSS Jamming Source Over Europe](#item-4) ⭐️ 8.0/10
5. [Ladybird Browser Ends Public Pull Requests Over AI Code Concerns](#item-5) ⭐️ 8.0/10
6. [UK government replaces Stripe with Adyen for Gov.uk Pay](#item-6) ⭐️ 7.0/10
7. [Claude AI Contributions May Increase Bugs in rsync](#item-7) ⭐️ 7.0/10
8. [AI Enthusiasts vs. Skeptics: Race Against Time or Entropy?](#item-8) ⭐️ 7.0/10
9. [Is capture-time semantic annotation for robot trajectories a solved problem?](#item-9) ⭐️ 7.0/10
10. [Astronauts Shelter During ISS Leak Repair](#item-10) ⭐️ 6.0/10
11. [Critique: Conventional Commits Miss the Point](#item-11) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [Microsoft open-sources pg_durable for Postgres durable execution](https://github.com/microsoft/pg_durable) ⭐️ 8.0/10

Microsoft has open-sourced pg_durable, a PostgreSQL extension that provides in-database durable execution for workflows, leveraging a SQL DSL and a background worker written in Rust. This brings durable execution capabilities directly into PostgreSQL, reducing the need for external workflow orchestrators like Temporal or DBOS, and enabling simpler, more reliable application architectures. pg_durable uses a SQL DSL to define function graphs and runs a background worker using two lower-level Rust libraries: duroxide for orchestration runtime and pg_durable_utils for utilities. The project is under MIT license.

hackernews · coffeemug · Jun 5, 15:59 · [Discussion](https://news.ycombinator.com/item?id=48414367)

**Background**: Durable execution is a pattern that ensures workflows survive crashes and continue seamlessly, similar to garbage collection for distributed systems. Traditionally, this requires external services like Temporal or Azure Durable Functions. pg_durable embeds this pattern directly into PostgreSQL, allowing developers to manage workflows within the database itself.

<details><summary>References</summary>
<ul>
<li><a href="https://github.com/microsoft/pg_durable">GitHub - microsoft/pg_durable: PostgreSQL in-database durable execution · GitHub</a></li>
<li><a href="https://temporal.io/blog/what-is-durable-execution">temporal.io › blog › what-is- durable - execution The definitive guide to Durable Execution | Temporal</a></li>
<li><a href="https://learn.microsoft.com/en-us/azure/durable-task/common/what-is-durable-task">learn.microsoft.com › en-us › azure What is Durable Task? - Durable Task | Microsoft Learn</a></li>

</ul>
</details>

**Discussion**: The community discussion highlights interest in Postgres-based queues and durable execution, with comparisons to DBOS and pgque. Some commenters raise concerns about idempotency of calls like df.wait_for_schedule(), and question how pg_durable compares to Temporal when workflows span heterogeneous systems. Others note limitations on Azure PostgreSQL.

**Tags**: `#postgresql`, `#durable-execution`, `#microsoft`, `#workflow-orchestration`, `#open-source`

---

<a id="item-2"></a>
## [Google Releases Gemma 4 QAT Models for Efficient On-Device AI](https://blog.google/innovation-and-ai/technology/developers-tools/quantization-aware-training-gemma-4/) ⭐️ 8.0/10

Google released Gemma 4 QAT quantized models optimized for on-device inference, using quantization-aware training to compress models for mobile and laptop deployment. This enables efficient local inference of Gemma 4 models on consumer devices with reduced memory footprint, expanding edge AI capabilities and privacy-preserving applications. The release includes QAT checkpoints for the Q4_0 quantization format and a novel mobile-specific format, reducing Gemma 4 E2B's memory footprint to 1GB.

hackernews · theanonymousone · Jun 5, 16:18 · [Discussion](https://news.ycombinator.com/item?id=48414653)

**Background**: Quantization-aware training (QAT) simulates quantization during training to minimize accuracy loss when compressing models. It differs from post-training quantization (PTQ) by integrating precision reduction into the training process. Gemma 4 is Google's latest open LLM family, and QAT versions aim to balance performance and efficiency for local deployment.

<details><summary>References</summary>
<ul>
<li><a href="https://blog.google/innovation-and-ai/technology/developers-tools/quantization-aware-training-gemma-4/">Gemma 4 QAT models: Optimizing model compression for mobile and laptop efficiency</a></li>
<li><a href="https://www.ibm.com/think/topics/quantization-aware-training">www.ibm.com › think › topics What is quantization aware training? - IBM</a></li>
<li><a href="https://pytorch.org/blog/quantization-aware-training/">pytorch.org › blog › quantization - aware - training Quantization-Aware Training for Large Language Models with ... -...</a></li>

</ul>
</details>

**Discussion**: Simon Willison demonstrated running a QAT model locally on a Mac, noting it handles audio and image input. Users compared Unsloth's quantizations to Google's official ones, with some claiming Unsloth's versions achieve near-100% accuracy relative to the unquantized BF16 model. Others noted that only quantized models fit within 16GB VRAM, and there is anticipation for MTP layer support on older GPUs.

**Tags**: `#gemma`, `#quantization`, `#edge-ai`, `#model-compression`, `#google`

---

<a id="item-3"></a>
## [IP KVM Comparison: PiKVM V4 Plus Tops Homelab Testing](https://www.jeffgeerling.com/blog/2026/i-tested-every-ip-kvm/) ⭐️ 8.0/10

Jeff Geerling published a comprehensive hands-on comparison of multiple IP KVM solutions for homelab environments, identifying PiKVM V4 Plus as the top performer while noting trade-offs with other devices like GL.iNet and JetKVM. This review provides invaluable guidance for sysadmins and homelab enthusiasts who need reliable remote BIOS-level access to servers, helping them make informed purchasing decisions in a niche but critical hardware category. The comparison includes key features such as HDMI vs USB-C video capture, PoE support, and hardware revisions, with JetKVM issues reportedly fixed in a later revision but poorly distinguished from older units.

hackernews · vquemener · Jun 5, 14:30 · [Discussion](https://news.ycombinator.com/item?id=48413072)

**Background**: An IP KVM (Keyboard, Video, Mouse) over IP device allows remote control of a computer's BIOS and OS via network, essential for managing headless servers. Homelab refers to a personal server lab used for learning and testing, often employing multiple computers that require remote management.

<details><summary>References</summary>
<ul>
<li><a href="https://tinypilotkvm.com/pages/guide-to-kvm-over-ip">tinypilotkvm.com › pages › guide-to- kvm -over- ip The Complete Guide to KVM over IP | TinyPilot</a></li>
<li><a href="https://en.wikipedia.org/wiki/IPKVM">IPKVM</a></li>

</ul>
</details>

**Discussion**: Commenters praised PiKVM V4 Plus, with one YC company sharing real-world use for AI-driven laptop refurbishing. Another noted that JetKVM's hardware revision fixes issues but model differentiation is unclear. Some highlighted the lack of multi-computer KVM switches in these devices.

**Tags**: `#IP KVM`, `#homelab`, `#hardware review`, `#remote management`, `#sysadmin`

---

<a id="item-4"></a>
## [Research Traces Massive GNSS Jamming Source Over Europe](https://arxiv.org/abs/2606.03673) ⭐️ 8.0/10

A new research paper published on arXiv presents a method to trace a powerful GNSS interference source affecting large areas of Europe, identifying the specific satellite frequency and signal characteristics involved. This work highlights the growing threat of intentional GNSS jamming, often linked to military activities, and could improve monitoring and mitigation strategies for navigation-dependent infrastructure. The interference source was found to transmit ~5 MHz bandwidth bursts with a 12 ms cyclic prefix and a spacing related to 150-second multiples, causing roughly 10 dB reduction in carrier-to-noise ratio (CNR) for GPS receivers.

hackernews · mimorigasaka · Jun 5, 08:32 · [Discussion](https://news.ycombinator.com/item?id=48409664)

**Background**: Global Navigation Satellite Systems (GNSS) like GPS rely on extremely weak signals from satellites, making them vulnerable to radio frequency interference (RFI) from both unintentional sources and deliberate jamming. Military forces increasingly deploy electronic warfare (EW) systems that jam or spoof GNSS signals to disrupt enemy navigation and drone operations. Recent incidents over the Baltic Sea and Black Sea have raised concerns about the safety of aviation and maritime navigation.

<details><summary>References</summary>
<ul>
<li><a href="https://www.frontiersin.org/journals/physics/articles/10.3389/fphy.2023.1133316/full">A survey of GNSS interference monitoring technologies</a></li>
<li><a href="https://www.technologyreview.com/2025/12/16/1129887/quantum-navigation-militarys-gps-jamming-problem/">Quantum navigation could solve the military ’s GPS jamming problem</a></li>
<li><a href="https://link.springer.com/article/10.1007/s10291-023-01509-2">A GNSS interference source tracking method using the continuous ...</a></li>

</ul>
</details>

**Discussion**: Community members shared firsthand accounts of jamming affecting construction projects in the Black Sea and off Poland, and linked the paper to a recent incident where Ukrainian marine drones lost control near Constanta, possibly due to Russian EW. Some commenters questioned whether the observed signal truly constitutes 'jamming' given its low power (only 10 dB CNR reduction) and suggested it might be a sync signal with side effects. Others wondered about the power requirements for wide-area jamming, estimating it would need kilowatts.

**Tags**: `#GNSS`, `#GPS jamming`, `#interference`, `#geopolitics`, `#signal processing`

---

<a id="item-5"></a>
## [Ladybird Browser Ends Public Pull Requests Over AI Code Concerns](https://simonwillison.net/2026/Jun/5/andreas-kling/#atom-everything) ⭐️ 8.0/10

The Ladybird browser project announced it will no longer accept public pull requests, citing that AI-generated code undermines the assumption of effort as a proxy for good faith and emphasizing the need for clear responsibility for code entering the browser. This marks a significant shift in open-source governance for a notable browser project, highlighting growing tensions between AI-generated contributions and traditional open-source trust models. It could influence other projects to reconsider their contribution policies in the age of generative AI. The policy applies to all public pull requests; the project will instead rely on a smaller set of trusted contributors. The decision was announced in a blog post titled 'Changing How We Develop Ladybird' by Andreas Kling on June 5, 2026.

rss · Simon Willison · Jun 5, 11:10

**Background**: Ladybird is an open-source, privacy-focused web browser originally part of SerenityOS, now developed by the Ladybird Browser Initiative as a standalone project. It plans an alpha release in 2026 and aims to provide a truly independent browsing experience. The project has raised concerns about AI-generated code lacking human accountability, echoing broader discussions in the open-source community.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Ladybird_browser">Ladybird browser</a></li>
<li><a href="https://www.myrobertson.com/blog/reviewing-ai-generated-pull-requests-reliability-risk">Reviewing AI-Generated Pull Requests: Reliability, Risk, and the Human Bottleneck | Rich Robertson</a></li>

</ul>
</details>

**Tags**: `#ladybird`, `#open-source`, `#ai-ethics`, `#software-governance`

---

<a id="item-6"></a>
## [UK government replaces Stripe with Adyen for Gov.uk Pay](https://www.theregister.com/public-sector/2026/06/04/govuk-goes-dutch-on-payments-as-it-dumps-stripe/5250763) ⭐️ 7.0/10

The UK Government Digital Service (GDS) has announced it is replacing Stripe with Adyen as the payment provider for Gov.uk Pay, the centralized payment platform used by over 1,000 public services. This change signals a major shift in public sector payment infrastructure, potentially affecting millions of transactions across UK government services. It also highlights the growing importance of supporting diverse payment methods like Wero, which Adyen enables. The contract is reportedly small compared to typical enterprise deals, with Adyen selected over Stripe due to its ability to offer broader payment options and potentially better processing rates for non-card payments. Adyen's platform supports local payment methods like Wero, iDEAL, and other European schemes.

hackernews · toomuchtodo · Jun 5, 16:55 · [Discussion](https://news.ycombinator.com/item?id=48415217)

**Background**: Gov.uk Pay is a centralized payment service run by the UK Government Digital Service (GDS), allowing citizens to pay for things like council tax, passport applications, and other government fees online. Stripe had been the primary payment provider for many government services, but the new deal with Adyen is intended to expand payment options and potentially reduce costs for local authorities. Adyen is a Dutch fintech company known for handling payments for large global brands such as Meta, Uber, and eBay.

<details><summary>References</summary>
<ul>
<li><a href="https://ecommercenews.uk/story/adyen-wins-gov-uk-pay-deal-for-1-000-public-services">Adyen wins GOV . UK Pay deal for 1,000 public services</a></li>

</ul>
</details>

**Discussion**: Commenters noted the surprisingly small contract size and expressed interest in whether the switch will materially reduce costs for local authorities. Some pointed out that Stripe also supports alternative payment methods like Wero, while one user remarked that Adyen is known for refusing small clients under a million in volume.

**Tags**: `#gov.uk`, `#Adyen`, `#Stripe`, `#payments`, `#digital government`

---

<a id="item-7"></a>
## [Claude AI Contributions May Increase Bugs in rsync](https://alexispurslane.github.io/rsync-analysis/) ⭐️ 7.0/10

A blog post analyzes rsync commits and suggests that releases with Claude-coauthored commits have a higher bug rate, though the methodology has been criticized. This analysis fuels the ongoing debate about the quality of AI-assisted code in critical open-source projects, affecting trust in tools like Claude for software development. The analysis attributes the highest bug count to a release just before the first Claude-coauthored commit, which may indicate unattributed AI contributions. The methodology uses only two data points and does not control for commit complexity or bug severity.

hackernews · logicprog · Jun 5, 12:43 · [Discussion](https://news.ycombinator.com/item?id=48411635)

**Background**: rsync is a widely used tool for file synchronization and backup. Claude is an AI assistant that can generate code. The post examines whether using Claude leads to more bugs by comparing bug rates in rsync releases before and after AI contributions.

**Discussion**: Commenters criticize the analysis for having too few data points and weak methodology, worrying that such posts may discourage developers from disclosing AI use. Some suggest that unattributed AI commits could skew results.

**Tags**: `#AI-assisted coding`, `#open source`, `#software quality`, `#rsync`, `#bug analysis`

---

<a id="item-8"></a>
## [AI Enthusiasts vs. Skeptics: Race Against Time or Entropy?](https://simonwillison.net/2026/Jun/4/ai-enthusiasts-ai-skeptics/#atom-everything) ⭐️ 7.0/10

Charity Majors published an article analyzing the conflicting pressures between AI enthusiasts and skeptics, noting that both groups are trying to build great software but lack natural feedback loops. This tension is critical for software engineering teams, as it highlights the existential threats from both moving too fast and moving too slow with AI adoption, and the need for organizational design to bridge the gap. The article recommends treating this as both a leadership and engineering challenge, specifically designing feedback loops to mend the 'gap in shared reality' between enthusiasts and skeptics.

rss · Simon Willison · Jun 4, 23:55

**Background**: AI enthusiasts argue that rapid adoption is necessary to stay competitive, while skeptics warn that accelerated code output without proper review erodes trust and reliability. This dynamic is common in teams where both perspectives coexist, and the lack of communication can lead to systemic risks. The author suggests that without intentional feedback loops, the gap in shared understanding will widen.

**Tags**: `#AI`, `#software engineering`, `#technology adoption`, `#software development`

---

<a id="item-9"></a>
## [Is capture-time semantic annotation for robot trajectories a solved problem?](https://www.reddit.com/r/MachineLearning/comments/1txf4gg/would_you_say_capturetime_semantic_annotation_for/) ⭐️ 7.0/10

A Reddit post questions whether real-time semantic annotation during teleoperation can address the missing contextual information (affordance, contact intent, embodiment-specific kinematics) in robot trajectories for contact-rich tasks, and asks if anyone is working on enriching the stream at capture time. If capture-time annotation remains unsolved, it could bottleneck imitation learning in unstructured environments, as post-hoc methods fail to capture semantically rich information that is only available during recording, limiting the effectiveness of learned policies for contact-rich tasks. The post specifically identifies three types of missing information—affordance, contact intent, and embodiment-specific kinematic context—that cannot be reliably recovered after recording, and contrasts current approaches that filter data post-hoc or rely on simulation.

reddit · r/MachineLearning · /u/Several-Many9101 · Jun 5, 08:42

**Background**: Semantic annotation involves adding meaning to data, such as labeling objects with affordances (action possibilities) or specifying contact intent during robot manipulation. Capture-time annotation aims to perform this labeling in real time as data is collected, unlike post-hoc labeling which may miss context only available during the physical interaction. Affordances describe what actions an object or environment permits, and contact intent captures the goal of physical interactions, both critical for learning robust policies in contact-rich tasks.

<details><summary>References</summary>
<ul>
<li><a href="https://arxiv.org/pdf/2004.07400">Affordances in Robotic Tasks - A Survey</a></li>
<li><a href="https://uwspace.uwaterloo.ca/items/fa64e3d3-3f8a-40c5-8483-94da7b50d011">Intent Classification during Human- Robot Contact</a></li>
<li><a href="https://arxiv.org/html/2601.07284">AdaMorph: Unified Motion Retargeting via Embodiment -Aware...</a></li>

</ul>
</details>

**Tags**: `#robot learning`, `#semantic annotation`, `#teleoperation`, `#imitation learning`, `#data collection`

---

<a id="item-10"></a>
## [Astronauts Shelter During ISS Leak Repair](https://www.bbc.com/news/live/c4g44ew3g1kt) ⭐️ 6.0/10

NASA ordered five astronauts on the International Space Station to shelter in their SpaceX Dragon capsule while Russian cosmonauts repaired an air leak in the Zvezda service module. The sheltering occurred on Friday, November 15, 2024, as a precaution during the repair of a new leak. This event highlights the ongoing challenges of maintaining the aging ISS and the critical importance of robust safety protocols and leak detection technologies. It also underscores the reliance on commercial crew vehicles like SpaceX's Dragon as safe havens during emergencies. The leak was located in a tunnel area of the Russian segment, and repair attempts included applying sealant. Previously, NASA used tools like the Robotic External Leak Locator (RELL) for external ammonia leaks, while internal leaks are often found using ultrasonic detectors. Uncertainty remains about whether the leak is fully sealed, as pressure readings may indicate air escaping elsewhere.

hackernews · janpot · Jun 5, 15:00 · [Discussion](https://news.ycombinator.com/item?id=48413464)

**Background**: The International Space Station is a complex orbiting laboratory that must maintain a stable internal atmosphere. Leaks can occur due to micrometeoroid impacts or wear. To detect leaks, astronauts use ultrasonic probes that pick up the high-frequency sound of escaping air, or instruments like mass spectrometers (as in RELL) for specific gases. During repairs, crew members may be directed to shelter in a docked spacecraft as a safe haven in case the leak worsens or a rapid evacuation is needed.

<details><summary>References</summary>
<ul>
<li><a href="https://www.bbc.com/news/articles/c5y7yryg01mo">www.bbc.com › news › articles Nasa tells ISS astronauts to shelter during air leak repair...</a></li>
<li><a href="https://apnews.com/article/international-space-station-leak-ccc50acb3fbe2ab190dde3f1a7a26478">apnews.com › article › international-space-station- leak -ccc50 Astronauts briefly take shelter during repair to fix leak on the...</a></li>
<li><a href="https://en.wikipedia.org/wiki/Maintenance_of_the_International_Space_Station">Maintenance of the International Space Station - Wikipedia</a></li>

</ul>
</details>

**Discussion**: Community comments highlighted technical tools like NASA's RELL detector and raised questions about the repair process. One user was confused why pressure stabilization still left uncertainty, while others asked why airlocks aren't used to isolate sections. Another inquired about escape pods, noting the SpaceX Dragon serves that role.

**Tags**: `#ISS`, `#space`, `#leak detection`, `#NASA`, `#safety`

---

<a id="item-11"></a>
## [Critique: Conventional Commits Miss the Point](https://sumnerevans.com/posts/software-engineering/stop-using-conventional-commits/) ⭐️ 6.0/10

A blog post by Sumner Evans argues that Conventional Commits prioritize format over meaningful content, leading to commit messages that are structurally correct but semantically misleading. This critique is significant because Conventional Commits are widely adopted in open-source and enterprise projects; if the structure indeed obscures intent, it could reduce the value of commit histories for developers and automated tools. The author objects to types like 'chore' as vague, and notes that scope often duplicates information from the file tree. He advocates for Linux kernel-style commit subjects that describe the change's intent without forced categorization.

hackernews · jsve · Jun 5, 15:39 · [Discussion](https://news.ycombinator.com/item?id=48414027)

**Background**: Conventional Commits is a specification that standardizes commit messages with a structured format (e.g., 'feat: add new API') to automate changelog generation and semantic versioning. It is widely used in projects like Angular and many open-source tools, but some argue it can become a superficial ritual.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Conventional_Commits_Specification">Conventional Commits Specification</a></li>
<li><a href="https://www.conventionalcommits.org/en/v1.0.0/">Conventional Commits</a></li>

</ul>
</details>

**Discussion**: Commenters express mixed opinions: some agree that types like 'chore' are unhelpful and that scope often redundant, while others defend structure for consistency and automation. Several note that issue numbers are missing from the spec and are more valuable than types.

**Tags**: `#software engineering`, `#commit messages`, `#best practices`, `#conventional commits`, `#developer workflow`

---