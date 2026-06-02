---
layout: default
title: "Horizon Summary: 2026-06-02 (EN)"
date: 2026-06-02
lang: en
---

> From 16 items, 12 important content pieces were selected

---

1. [Hackers Tricked Meta AI Bot to Steal Instagram Accounts](#item-1) ⭐️ 9.0/10
2. [Backprop destroys V1 brain alignment in one epoch](#item-2) ⭐️ 9.0/10
3. [Walking tour of Seattle surveillance infrastructure](#item-3) ⭐️ 8.0/10
4. [Adafruit Receives Demand Letter from Flux.ai's Law Firm](#item-4) ⭐️ 8.0/10
5. [Janet Language: Design Trade-offs and Unique Features Explored](#item-5) ⭐️ 8.0/10
6. [Microsoft Launches MAI-Code-1-Flash, a 137B Code Model](#item-6) ⭐️ 7.0/10
7. [Anthropic Expands Project Glasswing AI Safety Scanning](#item-7) ⭐️ 7.0/10
8. [Three Ways to Get Paid: Truth vs. Manipulation](#item-8) ⭐️ 7.0/10
9. [Microsoft Releases Official GNU Coreutils Port for Windows](#item-9) ⭐️ 7.0/10
10. [systemd timers vs cron: a compelling upgrade](#item-10) ⭐️ 7.0/10
11. [Hugging Face Revives PapersWithCode with Conference Support for CVPR 2026](#item-11) ⭐️ 7.0/10
12. [Fidonet: Technology, Use, and History Revisited (1993)](#item-12) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [Hackers Tricked Meta AI Bot to Steal Instagram Accounts](https://simonwillison.net/2026/Jun/1/hackers-simply-asked-meta-ai/#atom-everything) ⭐️ 9.0/10

In late May 2026, attackers exploited a vulnerability in Meta's AI support chatbot to hijack high-profile Instagram accounts by simply asking the bot to link a new email address, bypassing the entire account recovery process. This incident highlights a critical design failure in integrating AI chatbots with sensitive support systems, as a straightforward prompt allowed unauthorized account takeovers. It underscores the urgent need for robust safeguards in AI-driven customer service tools. The attack used direct language like 'Just link my new email address...' without requiring verification or exploiting complex prompt injection. Affected accounts included the Obama White House and the Chief Master Sergeant of the U.S. Space Force.

rss · Simon Willison · Jun 1, 21:14

**Background**: Prompt injection is a cybersecurity exploit where carefully crafted inputs cause AI models to behave unintendedly. In this case, Meta's AI support bot had the ability to execute account recovery actions directly, and attackers simply asked it to change the email, which the bot did without verifying the user's identity. This is a classic example of failing to separate AI capabilities from critical authorization workflows.

<details><summary>References</summary>
<ul>
<li><a href="https://cybersecuritynews.com/instagram-meta-ai-vulnerability/">Instagram Meta AI Vulnerability Allegedly Enables Password Reset for ...</a></li>
<li><a href="https://en.wikipedia.org/wiki/Prompt_injection">Prompt injection - Wikipedia</a></li>

</ul>
</details>

**Tags**: `#security`, `#AI`, `#vulnerability`, `#Instagram`, `#Meta`

---

<a id="item-2"></a>
## [Backprop destroys V1 brain alignment in one epoch](https://www.reddit.com/r/MachineLearning/comments/1tupu9z/backpropagation_destroys_v1_brain_alignment_in/) ⭐️ 9.0/10

A new study shows that backpropagation (BP) causes a 90% drop in V1 representational similarity alignment (RSA) to human fMRI after just one training epoch, while local learning rules like predictive coding (PC) and spike-timing-dependent plasticity (STDP) preserve alignment much better. This work reveals a fundamental trade-off between global error signals that build higher-level representations and the integrity of early visual features, with implications for designing brain-like learning algorithms and understanding neural computation. The degradation rate correlates with error signal globality: exact gradients (BP) > random feedback (FA) > local prediction errors (PC, STDP). By epoch 40, PC (r=0.064) and STDP (r=0.059) significantly outperform BP (r=0.022) and FA (r=0.019) with Cohen's d > 5.

reddit · r/MachineLearning · /u/ConfusionSpiritual19 · Jun 2, 12:43

**Background**: Representational Similarity Analysis (RSA) compares activity patterns across stimuli to measure alignment between neural network layers and brain regions. Backpropagation uses global error signals, while biologically inspired rules like feedback alignment (FA), predictive coding (PC), and spike-timing-dependent plasticity (STDP) rely on more local information. This study tracks RSA alignment over training to understand how different learning rules affect brain-like representations.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Spike-timing-dependent_plasticity">Spike - timing - dependent plasticity - Wikipedia</a></li>
<li><a href="https://arxiv.org/abs/2306.01870">[2306.01870] Implicit Regularization in Feedback Alignment Learning Mechanisms for Neural Networks</a></li>
<li><a href="https://deeplearning-jupyterbook.github.io/notebooks/intro-to-rsa.html">7.4. Representational Similarity Analysis — Deep Learning for...</a></li>

</ul>
</details>

**Tags**: `#backpropagation`, `#brain alignment`, `#predictive coding`, `#STDP`, `#fMRI`

---

<a id="item-3"></a>
## [Walking tour of Seattle surveillance infrastructure](https://coveillance.org/a-walking-tour-of-surveillance-infrastructure-in-seattle/) ⭐️ 8.0/10

A detailed walking tour explores Seattle's surveillance infrastructure, including CCTV cameras, automatic license plate readers (ALPRs), and facial recognition systems, and discusses their societal implications. This analysis highlights the growing pervasiveness of surveillance in urban environments and sparks crucial debates about privacy, civil liberties, and the trade-off between safety and freedom. The tour covers specific technologies like ALPRs mounted on street poles and police cars, as well as public CCTV cameras authorized by the Seattle City Council in September 2025. It also examines how cameras can encode social norms about 'normal' behavior.

hackernews · eustoria · Jun 2, 13:24 · [Discussion](https://news.ycombinator.com/item?id=48369980)

**Background**: Automatic license plate readers (ALPRs) are high-speed camera systems used to capture license plate data, often mounted on fixed infrastructure or police vehicles. Seattle's CCTV program aims to prevent crime and collect evidence, especially given staffing shortages. Facial recognition algorithms are increasingly integrated into urban surveillance networks for real-time monitoring.

<details><summary>References</summary>
<ul>
<li><a href="https://www.seattle.gov/police/community-policing/community-programs/cctv">www. seattle .gov › police › community-policing Public Space Cameras (CCTV) - Police | seattle.gov</a></li>
<li><a href="https://en.wikipedia.org/wiki/Automatic_number-plate_recognition">Automatic number-plate recognition - Wikipedia</a></li>
<li><a href="https://sls.eff.org/technologies/automated-license-plate-readers-alprs">Automated License Plate Readers - Street Level Surveillance</a></li>

</ul>
</details>

**Discussion**: Commenters are polarized: some argue that surveillance is necessary for public safety, citing cases where cameras help solve crimes, while others decry the erosion of privacy and civil liberties. There is also criticism of the article's academic language, with one commenter questioning the phrase 'kinds of gazes' as opaque.

**Tags**: `#surveillance`, `#privacy`, `#civil liberties`, `#urban infrastructure`, `#Seattle`

---

<a id="item-4"></a>
## [Adafruit Receives Demand Letter from Flux.ai's Law Firm](https://blog.adafruit.com/) ⭐️ 8.0/10

Adafruit, a prominent open-source hardware company, received a demand letter from Fenwick legal counsel on behalf of Flux.ai, a browser-based PCB design tool startup. Adafruit's founder, ladyada, has publicly stated her intention to resolve the matter amicably, possibly through a podcast discussion. This legal dispute underscores the growing tension between the open-source hardware community and funded startups over intellectual property and criticism. The outcome may set a precedent for how similar conflicts are handled in the electronics design ecosystem. The demand letter was sent by Fenwick, a well-known law firm, and appears to be related to a planned Adafruit blog post reviewing or criticizing Flux.ai. Flux.ai is a cloud-based EDA tool that has received mixed reviews from users, with complaints about token consumption and product quality.

hackernews · semanser · Jun 2, 10:00 · [Discussion](https://news.ycombinator.com/item?id=48368121)

**Background**: Adafruit is a well-respected open-source hardware company known for its educational content and community involvement. Flux.ai is a browser-based electronic design automation (EDA) tool that recently secured funding from Bain and others. A demand letter is a formal legal notice requesting specific action, often a precursor to litigation.

<details><summary>References</summary>
<ul>
<li><a href="https://grokipedia.com/page/Comparison_of_KiCad_and_Fluxai">Comparison of KiCad and Flux.ai</a></li>
<li><a href="https://en.wikipedia.org/wiki/Demand_letter">Demand letter</a></li>

</ul>
</details>

**Discussion**: The community has shown overwhelming support for Adafruit, with many users criticizing Flux.ai's product quality and billing practices. Some commenters noted that Flux.ai's legal action appears to be an attempt to suppress negative reviews. Adafruit's founder has been praised for seeking a collaborative resolution.

**Tags**: `#hardware`, `#electronics`, `#open source`, `#legal`, `#community`

---

<a id="item-5"></a>
## [Janet Language: Design Trade-offs and Unique Features Explored](https://ianthehenry.com/posts/why-janet/) ⭐️ 8.0/10

A detailed blog post titled "Why Janet? (2023)" delves into the design decisions, strengths (portability, sandboxing, binary creation), and weaknesses (package management, library ecosystem) of the Janet programming language, sparking substantial community discussion. This analysis matters because it highlights the growing interest in lightweight, embeddable scripting languages for system automation and constrained environments, helping developers understand the practical trade-offs when choosing Janet over alternatives like Lua or Common Lisp. Janet compiles to bytecode and can create standalone binaries, and it features a built-in sandbox to disable certain features permanently. However, the community notes a lack of versioning in package management and a sparse library ecosystem for tasks like advanced HTTP routing.

hackernews · yacin · Jun 2, 09:34 · [Discussion](https://news.ycombinator.com/item?id=48367907)

**Background**: Janet is a functional and imperative programming language designed for system scripting, expressive automation, and extending C/C++ programs. It runs on Windows, Linux, macOS, and BSDs. It is a Lisp dialect with its own syntax, emphasizing simplicity, portability, and a small footprint.

<details><summary>References</summary>
<ul>
<li><a href="https://janet-lang.org/">Janet Programming Language</a></li>
<li><a href="https://github.com/janet-lang/janet">GitHub - janet -lang/ janet : A dynamic language and bytecode vm</a></li>

</ul>
</details>

**Discussion**: Commenters praised Janet's portability, binary creation, and sandboxing feature, but expressed frustration over missing package versioning and limited libraries. Some compared it to Fennel, while one commenter corrected a factual error about SETQ vs def in the article. Overall sentiment is cautiously positive.

**Tags**: `#janet`, `#lisp`, `#programming languages`, `#software engineering`

---

<a id="item-6"></a>
## [Microsoft Launches MAI-Code-1-Flash, a 137B Code Model](https://microsoft.ai/news/introducingmai-code-1-flash/) ⭐️ 7.0/10

Microsoft announced MAI-Code-1-Flash, a 137B-parameter (5B active) code generation model, as part of a suite of seven new MAI models. The model is integrated into GitHub Copilot and VS Code, featuring adaptive solution length control. This release signals Microsoft's continued investment in specialized code models, potentially reducing reliance on OpenAI. However, community benchmarks show it performs comparably to much smaller models like Qwen3.6-35B-A3B, raising questions about cost-effectiveness and practical utility. The model uses a mixture-of-experts architecture with 137B total parameters but only 5B active per token, similar to other MoE models. It scores 51% on SWE-bench Pro, compared to 49.5% for Qwen3.6-35B-A3B, which is much smaller and cheaper.

hackernews · EvanZhouDev · Jun 2, 18:47 · [Discussion](https://news.ycombinator.com/item?id=48374466)

**Background**: Code generation models are a competitive area with releases from companies like OpenAI (GPT-4), Anthropic (Claude), and others. Microsoft's MAI series represents its push to build in-house models alongside its partnership with OpenAI. Adaptive solution length control allows the model to adjust reasoning depth based on task complexity.

<details><summary>References</summary>
<ul>
<li><a href="https://microsoft.ai/news/introducingmai-code-1-flash/">Introducing MAI - Code - 1 - Flash | Microsoft AI</a></li>
<li><a href="https://microsoft.ai/models/mai-code-1-flash/">MAI - Code - 1 - Flash | Microsoft AI</a></li>

</ul>
</details>

**Discussion**: Comments are largely skeptical: one user notes the model's 51% on SWE-bench Pro is not impressive compared to Qwen's 49.5% from a model with far fewer parameters. Another questions the value of such large models for coding, suggesting focusing on system design instead. Overall sentiment is that Microsoft's benchmarks are underwhelming and the model may not justify its cost.

**Tags**: `#AI`, `#code generation`, `#Microsoft`, `#model release`, `#benchmarks`

---

<a id="item-7"></a>
## [Anthropic Expands Project Glasswing AI Safety Scanning](https://www.anthropic.com/news/expanding-project-glasswing) ⭐️ 7.0/10

Anthropic is expanding Project Glasswing, its privacy-preserving AI safety scanning tool, to 150 organizations across 15 countries, targeting critical infrastructure in power, water, and other sectors. The expansion follows an initial release to about 50 partners in April 2026. This expansion brings AI-powered vulnerability scanning to critical infrastructure, potentially improving security for essential services worldwide. However, community feedback raises concerns about false positives and the tool's effectiveness, which could affect trust and adoption. Partners will use Mythos Preview, a precursor model, as part of their defensive security work, and Anthropic plans to share learnings industry-wide. The tool is designed to be privacy-preserving, but community reports indicate significant noise and false positive issues.

hackernews · surprisetalk · Jun 2, 13:15 · [Discussion](https://news.ycombinator.com/item?id=48369863)

**Background**: Project Glasswing is an AI safety scanning tool that uses large language models to find vulnerabilities in critical software. It was announced by Anthropic in April 2026 with about 50 partners. The tool aims to proactively identify cybersecurity flaws before they are exploited, particularly focusing on memory safety issues in infrastructure code.

<details><summary>References</summary>
<ul>
<li><a href="https://www.anthropic.com/glasswing">www. anthropic .com › glasswing Project Glasswing: Securing critical software for the AI era</a></li>
<li><a href="https://www.cnbc.com/2026/06/02/anthropic-mythos-ai-project-glasswing.html">www.cnbc.com › 02 › anthropic -mythos-ai- project - glasswing Anthropic expands Mythos to 150 additional organizations - CNBC</a></li>
<li><a href="https://techcrunch.com/2026/06/02/anthropic-scales-claude-mythos-to-critical-infrastructure-in-15-countries/">techcrunch.com › 2026/06/02 › anthropic -scales-claude-mythos Anthropic scales Claude Mythos to critical infrastructure in 15...</a></li>

</ul>
</details>

**Discussion**: Community comments are mixed: some users report the tool generates hundreds of false positives, causing 'noise,' while others skeptically view the rollout as a cover for compute capacity issues or ethical concerns. A few commenters also note broader lessons about using AI for memory safety in infrastructure projects.

**Tags**: `#AI safety`, `#security scanning`, `#Anthropic`, `#privacy`

---

<a id="item-8"></a>
## [Three Ways to Get Paid: Truth vs. Manipulation](https://jasonzweig.com/three-ways-to-get-paid/) ⭐️ 7.0/10

Jason Zweig's 2018 article outlines three fundamental strategies for earning income, contrasting truth-telling with manipulation, and has reignited discussion on business ethics. This piece matters because it forces professionals to confront the trade-offs between integrity and financial success, a perennial issue in the tech and business worlds. The article presents three archetypal ways to get paid, and community member kuanbutts proposed a 2x2 matrix adding self-deception as a dimension, enriching the analysis.

hackernews · nate · Jun 2, 17:09 · [Discussion](https://news.ycombinator.com/item?id=48373054)

**Background**: The article is part of a broader conversation on business ethics, where the tension between honesty and persuasion is central. Many professionals face the dilemma of promising more than they can deliver to win clients.

**Discussion**: Community discussion reveals a divided sentiment: some justify exaggeration as pragmatic (beej71), while others condemn it as immoral (WorkerBee28474). The 2x2 matrix by kuanbutts introduces self-deception as a further complexity.

**Tags**: `#business`, `#ethics`, `#career`, `#philosophy`, `#hackernews-discussion`

---

<a id="item-9"></a>
## [Microsoft Releases Official GNU Coreutils Port for Windows](https://github.com/microsoft/coreutils) ⭐️ 7.0/10

Microsoft has officially released a port of GNU Coreutils to Windows, providing native Windows versions of common Unix commands like cat, ls, cp, and rm. The project is available on GitHub under the Microsoft organization. This development improves cross-platform workflows for developers on Windows, reducing reliance on WSL or third-party ports. It also signals Microsoft's continued investment in developer tools and compatibility with Unix-like environments. Some commands like dir are not shipped due to conflicts with CMD built-ins, while echo and rmdir are shipped despite conflicts. The project aims to provide a subset of coreutils with native Windows integration.

hackernews · gigel82 · Jun 2, 16:55 · [Discussion](https://news.ycombinator.com/item?id=48372853)

**Background**: GNU Coreutils is a collection of essential command-line utilities for Unix-like systems, including file management, text processing, and shell operations. Previous Windows ports existed via third parties like GnuWin32 or via WSL, but this is Microsoft's official effort.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/GNU_Coreutils">GNU Coreutils</a></li>

</ul>
</details>

**Discussion**: Community comments express mixed feelings: some appreciate the effort but note conflicts with existing Windows commands, while others question the motivation, suspecting it may be for AI agents. Users also wish for additional commands like head, tail, and uniq.

**Tags**: `#windows`, `#coreutils`, `#microsoft`, `#developer-tools`, `#command-line`

---

<a id="item-10"></a>
## [systemd timers vs cron: a compelling upgrade](https://blog.tjll.net/you-dont-love-systemd-timers-enough/) ⭐️ 7.0/10

A blog post argues that systemd timers are superior to cron for scheduling tasks, highlighting their reliability, logging integration, and flexibility. This matters because many system administrators still rely on cron, but systemd timers offer better integration with modern Linux systems, reducing debugging effort and improving reliability. systemd timers can automatically catch up on missed executions after system downtime, integrate seamlessly with journalctl for logging, and support calendar-based scheduling beyond traditional cron syntax.

hackernews · yacin · Jun 2, 09:34 · [Discussion](https://news.ycombinator.com/item?id=48367904)

**Background**: systemd is a system and service manager for Linux, widely adopted as the init system. Timers are a feature that trigger services at specified times, similar to cron jobs but with tighter integration into systemd's ecosystem.

<details><summary>References</summary>
<ul>
<li><a href="https://wiki.archlinux.org/title/Systemd/Timers">systemd/Timers - ArchWiki</a></li>
<li><a href="https://opensource.com/article/20/7/systemd-timers">Use systemd timers instead of cronjobs | Opensource.com</a></li>
<li><a href="https://en.wikipedia.org/wiki/Systemd-timesync">Systemd-timesync</a></li>

</ul>
</details>

**Discussion**: Commenters shared positive experiences: one noted timers are resilient to system startup times, another praised journalctl integration. A minor debate arose over PATH handling, but overall sentiment favored systemd timers.

**Tags**: `#systemd`, `#linux`, `#cron`, `#scheduling`, `#devops`

---

<a id="item-11"></a>
## [Hugging Face Revives PapersWithCode with Conference Support for CVPR 2026](https://www.reddit.com/r/MachineLearning/comments/1tukrf4/browse_cvpr_2026_papers_on_paperswithcode_p/) ⭐️ 7.0/10

Niels from Hugging Face's open-source team launched paperswithcode.co two weeks ago as a revival of the original Papers with Code, and has now added conference support enabling users to browse CVPR 2026 papers categorized by task with links to code, project pages, and Hugging Face artifacts. This fills a critical gap for the ML community, providing a reliable, community-maintained benchmark tracker with easy access to state-of-the-art models and code, which was lost after Meta's acquisition of the original site. The conference feature allows browsing papers accepted for Oral presentations and Spotlights, and supports future conferences like NeurIPS and ICML. The site also tracks state-of-the-art across domains including agents, computer vision, and time-series forecasting.

reddit · r/MachineLearning · /u/NielsRogge · Jun 2, 08:32

**Background**: Papers with Code was a widely-used platform that aggregated ML papers with their code and benchmarks, enabling easy tracking of state-of-the-art results. After Meta acquired it in 2019, it became unmaintained, leaving the community without a neutral, reliable benchmark tracker. Hugging Face is a leading AI platform hosting models, datasets, and applications, and its open-source team member independently revived the concept.

<details><summary>References</summary>
<ul>
<li><a href="https://quasa.io/media/papers-with-code-is-back-the-revival-every-ml-engineer-and-researcher-has-been-waiting-for">quasa.io › media › papers - with - code -is-back-the- revival -every Papers with Code is Back! The Revival Every ML Engineer and...</a></li>
<li><a href="https://www.ultralytics.com/glossary/hugging-face">What is Hugging Face? AI Model Hub & YOLO26 | Ultralytics</a></li>

</ul>
</details>

**Tags**: `#paperswithcode`, `#CVPR2026`, `#machine learning`, `#conference papers`, `#Hugging Face`

---

<a id="item-12"></a>
## [Fidonet: Technology, Use, and History Revisited (1993)](https://www.fidonet.org/inet92_Randy_Bush.txt) ⭐️ 6.0/10

A 1993 article by Randy Bush detailing Fidonet's technology, use, and history has been shared on Hacker News, sparking nostalgic discussion about the early networking system. Fidonet was a pivotal pre-Internet network that connected millions of users via dial-up BBS systems, and this article provides a historical snapshot of its architecture and community, relevant for understanding the evolution of decentralized networking. The article explains Fidonet's four-level address hierarchy (zone:net/node.point) and the role of 'points' as power users. It also notes that by the mid-1990s, Fidonet had nearly 40,000 systems.

hackernews · BruceEel · Jun 2, 13:53 · [Discussion](https://news.ycombinator.com/item?id=48370291)

**Background**: Fidonet was a worldwide network of Bulletin Board Systems (BBS) that used dial-up modem connections to exchange messages and files. It operated as a store-and-forward network, with nodes polling each other during scheduled 'mail hours.' The network was highly decentralized and relied on volunteer-run nodes. By the mid-1990s, it had nearly 40,000 systems and millions of users.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/FidoNet">FidoNet - Wikipedia</a></li>
<li><a href="https://www.fidonet.org/inet92_Randy_Bush.txt">FidoNet: Technology, Use, Tools, and History Randy Bush randy@psg.com</a></li>

</ul>
</details>

**Discussion**: Commenters shared personal memories, including a clone called HitNet in Turkey and a netmail server developed in 1995. Some noted that Fidonet is still active via alternate nets like fsxNet. Others nostalgically compared the efficiency of polling mail over ISDN to modern IMAP.

**Tags**: `#fidonet`, `#history`, `#retro`, `#networking`, `#technology`

---