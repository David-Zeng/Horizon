---
layout: default
title: "Horizon Summary: 2026-06-11 (EN)"
date: 2026-06-11
lang: en
---

> From 24 items, 16 important content pieces were selected

---

1. [Homebrew 6.0.0 released with tap trust and Linux sandboxing](#item-1) ⭐️ 9.0/10
2. [AMD's RCE Fix: HTTPS Added, but CRC-32 Signing Trivializes Security](#item-2) ⭐️ 9.0/10
3. [Anthropic Reverses Secret Policy on Claude's AI Research Limits](#item-3) ⭐️ 9.0/10
4. [Google Releases DiffusionGemma, Open-Weight Diffusion Model](#item-4) ⭐️ 9.0/10
5. [Xiaomi Open-Sources MiMo Code, an AI Coding Assistant](#item-5) ⭐️ 8.0/10
6. [Petition Seeks Withdrawal of Canada's Bill C-22](#item-6) ⭐️ 8.0/10
7. [Lines of code as vanity metric criticized](#item-7) ⭐️ 8.0/10
8. [Solar surpasses coal in US electricity generation for first time](#item-8) ⭐️ 8.0/10
9. [Datasette 1.0a33 Extends JSON Extras to Queries and Rows](#item-9) ⭐️ 8.0/10
10. [Adaptive Video Tokenization via Temporal Redundancy Masking](#item-10) ⭐️ 8.0/10
11. [Zed Introduces DeltaDB for Between-Commit Collaboration](#item-11) ⭐️ 7.0/10
12. [Is Symbolic Regression Dead in the Age of LLMs?](#item-12) ⭐️ 7.0/10
13. [Pyrecall: Open-Source Tool to Detect Catastrophic Forgetting in LLM Fine-Tuning](#item-13) ⭐️ 7.0/10
14. [Pokémon Go Data Used to Train Military Drone Navigation](#item-14) ⭐️ 6.0/10
15. [datasette-agent 0.2a0 adds interactive tool questions and save_query](#item-15) ⭐️ 6.0/10
16. [Student Seeks Resources on AI Responses to Psychological Distress](#item-16) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [Homebrew 6.0.0 released with tap trust and Linux sandboxing](https://brew.sh/2026/06/11/homebrew-6.0.0/) ⭐️ 9.0/10

Homebrew 6.0.0 introduces a mandatory tap trust mechanism requiring explicit user approval for third-party taps, a faster default JSON API, and Linux sandboxing using Bubblewrap. It also brings improved defaults from a user survey, brew bundle enhancements, initial support for macOS 27 (Golden Gate), and general performance improvements. These changes significantly improve security by reducing the risk of malicious code from untrusted third-party taps, and enhance performance and user experience for millions of developers. The Linux sandboxing broadens Homebrew's appeal on Linux, while the JSON API reduces dependency on local Git clones, making operations faster and more reliable. The tap trust mechanism requires users to run `brew tap --trust` for each third-party tap before its code is executed; official Homebrew taps are trusted by default. The new default JSON API avoids cloning homebrew-core and homebrew-cask repositories for most operations, and Linux sandboxing uses Bubblewrap to isolate formula builds.

hackernews · mikemcquaid · Jun 11, 13:24 · [Discussion](https://news.ycombinator.com/item?id=48490024)

**Background**: Homebrew is a popular package manager for macOS and Linux, allowing users to install command-line tools and applications. Taps are third-party repositories that extend Homebrew's package selection. Previously, all tap code was evaluated by Homebrew without explicit consent, posing a security risk. The new tap trust mechanism addresses this by requiring user approval before evaluating or executing tap code. JSON API mode, introduced in Homebrew 4.0, fetches metadata over HTTPS instead of cloning entire Git repositories, making operations faster and less disk-intensive.

<details><summary>References</summary>
<ul>
<li><a href="https://docs.brew.sh/Tap-Trust">docs.brew.sh › Tap - Trust Homebrew Documentation: Tap Trust</a></li>
<li><a href="https://news.linxi.com.au/news/homebrew-600-introduces-mandatory-tap-trust-and-macos-27-support">news.linxi.com.au › news › homebrew -600-introduces-mandatory Homebrew 6.0.0 release: Tap trust, Linux sandboxing, macOS 27...</a></li>
<li><a href="https://deepwiki.com/Homebrew/brew/13-homebrew-api-and-json-backend">deepwiki.com › Homebrew › brew Homebrew API and JSON Backend | Homebrew/brew | DeepWiki</a></li>

</ul>
</details>

**Discussion**: The community largely praised the release, with long-time contributors expressing admiration for the maintainer's longevity and continued improvements. Some users discussed alternatives like Nix and mise, noting trade-offs in reproducibility versus ease of use. One user requested a 'cooldown mechanism' to slow down how quickly packages are updated.

**Tags**: `#homebrew`, `#package manager`, `#macOS`, `#dev tools`, `#open source`

---

<a id="item-2"></a>
## [AMD's RCE Fix: HTTPS Added, but CRC-32 Signing Trivializes Security](https://mrbruh.com/amd2/) ⭐️ 9.0/10

AMD disclosed a remote code execution vulnerability and patched it by switching from HTTP to HTTPS, but retained a CRC-32 checksum for signature verification on the downloaded executable, which is not cryptographically secure. The researcher demonstrated that if the webserver is compromised, trivial compromise of the payload is possible because CRC-32 can easily be forged. This vulnerability affects millions of AMD processors that rely on the vulnerable update mechanism, and the inadequate fix undermines trust in AMD's software security practices. It highlights the critical gap between adding transport encryption and properly authenticating updates, which could expose users to malware if a server is breached. The vulnerability, reported by researcher Terr_ (via mrbruh.com), allows a remote attacker to execute arbitrary code by intercepting HTTP traffic (MITM) or compromising the webserver. The fix uses HTTPS to prevent MITM, but the downloaded payload's integrity is checked only with CRC-32, which an attacker can trivially recalculate after modifying the executable.

hackernews · MrBruh · Jun 11, 16:03 · [Discussion](https://news.ycombinator.com/item?id=48492215)

**Background**: CRC-32 is a cyclic redundancy check designed to detect accidental data corruption, not intentional tampering. Unlike cryptographic hash functions (e.g., SHA-256), CRC-32 is easily reversible and can be forged with minimal computational effort. For secure software updates, vendors typically use digital signatures to ensure authenticity and integrity.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Cyclic_redundancy_check">en.wikipedia.org › wiki › Cyclic_redundancy_check Cyclic redundancy check - Wikipedia www.compu-tools.com › blog › 2026/03/15- crc -comparison Checksum vs CRC vs Hash: Which Should You Use for Data Integrity... www.codertools.net › tools › crc CRC Calculator Online - CRC-8, CRC-16, CRC-32 Checksum Generator... calcbin.com › tools › crc -calculator CRC Calculator — CRC-8, CRC-16, CRC-32 Checksum Online (2026) iotools.cloud › tool › crc - checksum -calculator CRC Checksum Calculator (CRC-8/16/32/64) - IO Tools tooladex.com › blog › crc32-calculator What Is CRC32? A Guide to Quick Checksums for Data Integrity</a></li>

</ul>
</details>

**Discussion**: Commenters expressed disbelief and criticism at AMD's response. Asveikau noted that 124 days to add HTTPS is too slow and that signing checks are essential. Tlb argued that MITM attacks should always be considered in scope. Dcminter called the CRC-32 signature verification "hilariously clueless."

**Tags**: `#security`, `#vulnerability`, `#AMD`, `#RCE`, `#HTTP`

---

<a id="item-3"></a>
## [Anthropic Reverses Secret Policy on Claude's AI Research Limits](https://simonwillison.net/2026/Jun/11/anthropic-walks-back-policy/#atom-everything) ⭐️ 9.0/10

Anthropic announced it will make visible the safeguards in Claude Fable 5 that previously would secretly limit effectiveness for users building frontier LLMs, and apologized for the lack of transparency. This reversal rebuilds trust with AI researchers who rely on Claude for cutting-edge work, and sets a precedent for transparency in AI safety policies. Flagged requests will now visibly fall back to Opus 4.8 instead of silently limiting output, and API requests will return a reason for refusal. Anthropic admitted the invisible approach was a wrong tradeoff to ship quickly.

rss · Simon Willison · Jun 11, 03:45

**Background**: Claude Fable 5 is Anthropic's most advanced model, designed for complex, long-running projects. The company had previously hidden safeguards that would detect and limit 'frontier LLM development' requests, meaning users trying to build or improve AI models would receive suboptimal responses without knowing why. This policy was buried in Claude's system card, which documents model safety measures. The community outcry prompted Anthropic to reverse course.

<details><summary>References</summary>
<ul>
<li><a href="https://www.anthropic.com/claude/fable">www.anthropic.com › claude › fable Claude Fable \ Anthropic</a></li>
<li><a href="https://www.anthropic.com/system-cards">www.anthropic.com › system -cards Model system cards \ Anthropic</a></li>
<li><a href="https://www.emergentmind.com/topics/frontier-llms">www.emergentmind.com › topics › frontier -llms Frontier LLMs: Innovation and Implications</a></li>

</ul>
</details>

**Tags**: `#Anthropic`, `#Claude`, `#AI policy`, `#transparency`, `#AI research`

---

<a id="item-4"></a>
## [Google Releases DiffusionGemma, Open-Weight Diffusion Model](https://simonwillison.net/2026/Jun/10/diffusiongemma/#atom-everything) ⭐️ 9.0/10

Google has released DiffusionGemma, a 26B-parameter (A4B) open-weight diffusion model for text generation under the Apache 2 license, and NVIDIA is hosting it for free on its NIM cloud API, achieving over 500 tokens per second in inference. This marks a paradigm shift in LLM deployment by combining diffusion-based parallel decoding with open weights, offering dramatically faster inference than autoregressive models and making cutting-edge AI freely accessible to developers. The model, google/diffusiongemma-26B-A4B-it, uses a diffusion process for text generation, enabling bidirectional context and self-correction; a test generated 2,409 tokens in 4.4 seconds, equating to about 547 tokens per second.

rss · Simon Willison · Jun 10, 20:00

**Background**: Diffusion models, popularized in image generation (e.g., Stable Diffusion), are now applied to text generation. Unlike traditional autoregressive LLMs that predict tokens one by one, diffusion models generate text by iteratively denoising a random tensor, enabling parallel token generation. Open-weight models make trained parameters publicly available, allowing developers to run, study, and fine-tune them freely. NVIDIA NIM provides optimized cloud microservices for deploying such models.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Diffusion_model">Diffusion model - Wikipedia</a></li>
<li><a href="https://deepmind.google/models/gemini-diffusion/">deepmind.google › models › gemini- diffusion Gemini Diffusion — Google DeepMind</a></li>
<li><a href="https://developers.googleblog.com/diffusiongemma-the-developer-guide/">developers.googleblog.com › diffusiongemma-the-developer-guide DiffusionGemma: The Developer Guide - Google Developers Blog</a></li>

</ul>
</details>

**Tags**: `#AI`, `#machine learning`, `#open-source`, `#diffusion models`, `#Gemma`

---

<a id="item-5"></a>
## [Xiaomi Open-Sources MiMo Code, an AI Coding Assistant](https://mimo.xiaomi.com/mimocode) ⭐️ 8.0/10

Xiaomi has released MiMo Code as an open-source project, a terminal-native AI coding assistant built as a fork of OpenCode. It includes features like persistent memory, subagent orchestration, and autonomous loops. This release validates the trend of open-sourcing AI coding tools, potentially reducing switching costs for developers. It also showcases Xiaomi's rapid AI progress, challenging established players like Claude Code and Gemini CLI. MiMo Code retains all core OpenCode capabilities (multiple providers, TUI, LSP, MCP, plugins) and adds persistent memory, intelligent context management, subagent orchestration, goal-driven autonomous loops, compose workflows, and self-improvement via dream/distill. It is available on GitHub.

hackernews · apeters · Jun 11, 14:27 · [Discussion](https://news.ycombinator.com/item?id=48490826)

**Background**: OpenCode is an open-source AI coding agent that operates in terminal, IDE, or desktop. Persistent memory allows AI assistants to retain project context across sessions, overcoming LLM statelessness. Xiaomi has been developing advanced AI models recently, including the MiMo series.

<details><summary>References</summary>
<ul>
<li><a href="https://opencode.ai/">opencode .ai OpenCode | The open source AI coding agent</a></li>
<li><a href="https://open-code.ai/en">open - code .ai › en OpenCode Docs: Free Open-Source AI Coding Agent | 75+ LLM...</a></li>
<li><a href="https://towardsdatascience.com/why-every-ai-coding-assistant-needs-a-memory-layer/">Why Every AI Coding Assistant Needs a Memory Layer | Towards Data Science</a></li>

</ul>
</details>

**Discussion**: The community feedback is positive, with praise for Xiaomi's open-source move and AI progress. Commenters highlight the importance of open-sourcing coding harnesses, and some note that MiMo Code's features like persistent memory and autonomous loops are notable improvements over other tools.

**Tags**: `#open-source`, `#coding assistant`, `#Xiaomi`, `#AI`, `#LLM`

---

<a id="item-6"></a>
## [Petition Seeks Withdrawal of Canada's Bill C-22](https://www.ourcommons.ca/petitions/en/Petition/Sign/e-7416) ⭐️ 8.0/10

A petition on the Canadian House of Commons website is gathering signatures to withdraw Bill C-22, the Lawful Access Act 2026, which critics argue threatens privacy and harms Canada's tech sector. Bill C-22 could expand police access to subscriber data without a warrant, setting a precedent for digital surveillance that undermines privacy rights and discourages innovation in Canada's tech sector. The bill would allow police to request subscriber information and transmission data from foreign service providers based on 'reasonable suspicion,' a threshold critics consider too low.

hackernews · hmokiguess · Jun 11, 15:37 · [Discussion](https://news.ycombinator.com/item?id=48491830)

**Background**: Bill C-22 is a government bill aimed at modernizing lawful access rules for digital crime investigations. Proponents say it closes investigative gaps, but opponents warn of overreach and harm to privacy. The petition is part of broader civil society opposition as the bill undergoes clause-by-clause review in committee.

<details><summary>References</summary>
<ul>
<li><a href="https://www.parl.ca/DocumentViewer/en/45-1/bill/C-22/first-reading">Government Bill (House of Commons) C-22 (45-1) - First Reading - Lawful Access Act, 2026 - Parliament of Canada</a></li>
<li><a href="https://openparliament.ca/bills/45-1/C-22/">Bill C-22 | openparliament.ca</a></li>

</ul>
</details>

**Discussion**: Comments on the news item express strong alarm, with users urging more public opposition. One commenter notes that the NDP is the only party raising real opposition, while the Conservatives want the bill split. Another provides live links to the committee meeting where amendments are being voted on.

**Tags**: `#Canada`, `#privacy`, `#legislation`, `#Bill C-22`, `#tech policy`

---

<a id="item-7"></a>
## [Lines of code as vanity metric criticized](https://curlewis.co.nz/posts/lines-of-code-got-a-better-publicist/) ⭐️ 8.0/10

A blog post and community discussion critique the revived use of lines of code as a productivity metric, especially in AI-generated code, calling it misleading and often used to justify layoffs. This matters because the misuse of lines of code can lead to poor engineering decisions, incentivize quantity over quality, and provide cover for corporate downsizing under the guise of AI-driven productivity gains. Community members reference an OpenAI blog post from February 2026 that repeatedly emphasizes the million lines of code generated by agents without describing the product's value, and a Microsoft executive's stated goal of 1 million lines of code per engineer per month.

hackernews · RyeCombinator · Jun 11, 12:26 · [Discussion](https://news.ycombinator.com/item?id=48489402)

**Background**: Lines of code (LoC) is a software metric that counts the number of lines in source code, often misused as a measure of programmer productivity. The metric has been widely discredited in software engineering because it rewards verbose, unmaintainable code and ignores quality, functionality, and maintainability. The recent surge in AI code generation tools like GitHub Copilot has revived interest in LoC, with some companies using it as evidence of AI-driven productivity gains to reduce headcount.

**Discussion**: The community largely agrees that using LoC as a metric is flawed, especially with AI-generated code. Commenters note that the OpenAI blog post fails to describe the product's value, and that the Microsoft executive's target is essentially satire. Some argue that the hype around unmaintainable LoC is dying down, while others see AI as an excuse for post-pandemic over-hiring corrections.

**Tags**: `#software engineering`, `#AI coding`, `#productivity metrics`, `#critique`, `#Hacker News discussion`

---

<a id="item-8"></a>
## [Solar surpasses coal in US electricity generation for first time](https://www.theguardian.com/us-news/2026/jun/11/solar-energy-us-coal) ⭐️ 8.0/10

In June 2026, solar energy generated more electricity than coal in the United States for the first time, marking a historic milestone in the nation's energy transition. This shift signals the accelerating decline of coal and the rapid growth of renewables, with solar now the cheapest source of new electricity, which will accelerate decarbonization and reshape energy markets. The milestone is attributed to both the rapid expansion of solar capacity and the ongoing retirement of coal plants, many of which have been converted to natural gas over the past two decades.

hackernews · neilfrndes · Jun 11, 16:10 · [Discussion](https://news.ycombinator.com/item?id=48492306)

**Background**: Coal has been a dominant source of US electricity for over a century, but its share has declined sharply due to competition from natural gas and renewables. Solar power has grown exponentially thanks to falling costs and policy support, and is now the cheapest form of electricity in many regions.

**Discussion**: Commenters noted the importance of data sources, with one linking to EMBER's electricity data explorer for verification. Another highlighted that coal's decline is more due to plant retirements than solar's growth, while a third praised solar's learning rate and predicted it would become the world's largest energy source by 2035. Questions about plug-and-play home solar systems also arose.

**Tags**: `#energy`, `#solar`, `#coal`, `#renewable energy`, `#climate change`

---

<a id="item-9"></a>
## [Datasette 1.0a33 Extends JSON Extras to Queries and Rows](https://simonwillison.net/2026/Jun/11/datasette/#atom-everything) ⭐️ 8.0/10

Datasette 1.0a33 extends the `?_extra=` pattern to queries and rows, now documented in the JSON API, and leverages AI tools like Claude Fable 5 and GPT-5.5 xhigh for development. This release is a significant step toward Datasette 1.0 stable, enhancing API flexibility for users. It also showcases AI-assisted programming in building a custom extras API explorer. The `?_extra=` pattern now works with tables, queries, and rows, allowing selective expansion of JSON responses. An interactive extras API explorer was built using Claude Code and Codex Desktop with GPT-5.5 xhigh.

rss · Simon Willison · Jun 11, 15:26

**Background**: Datasette is an open-source tool for exploring and publishing data, providing a JSON API for databases. The `?_extra=` pattern lets users request additional fields in JSON responses. This alpha release unifies the pattern across all API endpoints and documents it, while also demonstrating how large language models can accelerate development.

<details><summary>References</summary>
<ul>
<li><a href="https://www.anthropic.com/news/claude-fable-5-mythos-5">www.anthropic.com › news › claude - fable - 5 -mythos- 5 Claude Fable 5 and Claude Mythos 5 \ Anthropic</a></li>
<li><a href="https://openai.com/index/introducing-gpt-5-5/">Introducing GPT-5.5 | OpenAI</a></li>
<li><a href="https://claude.com/product/claude-code">claude .com › product › claude - code Claude Code by Anthropic | AI Coding Agent, Terminal, IDE</a></li>

</ul>
</details>

**Tags**: `#datasette`, `#json-api`, `#python`, `#alpha-release`, `#ai-assisted-development`

---

<a id="item-10"></a>
## [Adaptive Video Tokenization via Temporal Redundancy Masking](https://www.reddit.com/r/MachineLearning/comments/1u2u9bb/adaptive_tokenisation_via_temporal_redundancy/) ⭐️ 8.0/10

Researchers propose a parameter-free adaptive token allocation method that drops redundant latent positions based on temporal L1 differences, enabling efficient video compression without additional computational overhead. The approach uses a Latent Inpainting Transformer (LIT) to reconstruct dropped positions. This work significantly reduces computational cost for adaptive video tokenization, achieving up to 31x speedup over continuous adaptive baselines and 2x over discrete baselines. It enables content-driven compression without auxiliary networks, potentially benefiting video streaming, storage, and real-time processing. The method applies a fixed threshold to per-position temporal L1 differences in the latent space of a frozen continuous video tokenizer. The Latent Inpainting Transformer uses factorized spatial-temporal attention for lightweight reconstruction.

reddit · r/MachineLearning · /u/chhaya_35 · Jun 11, 09:32

**Background**: Video tokenization converts video frames into discrete tokens for efficient processing. Traditional adaptive methods require iterative searches or full-rate decoder passes, which are computationally expensive. This paper exploits temporal redundancy directly in latent space to avoid those costs.

<details><summary>References</summary>
<ul>
<li><a href="https://arxiv.org/abs/2606.06158">arxiv.org › abs › 2606 Adaptive Tokenisation Via Temporal Redundancy Masking And Latent...</a></li>
<li><a href="https://www.aimodels.fyi/papers/arxiv/adaptive-tokenisation-via-temporal-redundancy-masking-latent">www.aimodels.fyi › papers › arxiv Adaptive Tokenisation Via Temporal Redundancy Masking And Latent...</a></li>

</ul>
</details>

**Tags**: `#video tokenization`, `#temporal redundancy`, `#adaptive compression`, `#latent inpainting`, `#machine learning`

---

<a id="item-11"></a>
## [Zed Introduces DeltaDB for Between-Commit Collaboration](https://zed.dev/blog/introducing-deltadb) ⭐️ 7.0/10

Zed, the code editor, has announced DeltaDB, a new version control system that captures every operation between commits, not just the final commits. It uses CRDTs to incrementally record and synchronize changes in real time. DeltaDB moves beyond traditional pull-request-based workflows by allowing developers and AI agents to collaborate on the entire development process, including the messy in-between states. This could fundamentally change how software collaboration is done, especially in AI-augmented development environments. DeltaDB is built as an AI-native version control system and will be available in beta in the coming weeks. It records every keystroke and operation, enabling collaboration at the granularity of individual edits rather than commits.

hackernews · jeremy_k · Jun 11, 16:28 · [Discussion](https://news.ycombinator.com/item?id=48492533)

**Background**: Traditional version control systems like Git only record the state of code at commit points, leaving the development process between commits untracked. DeltaDB fills this gap by using Conflict-Free Replicated Data Types (CRDTs) to track all changes as they happen, similar to real-time collaborative editing. This is particularly relevant as AI coding agents increasingly participate in development, needing to understand not just the final code but how it evolved.

<details><summary>References</summary>
<ul>
<li><a href="https://zed.dev/blog/introducing-deltadb">zed.dev › blog › introducing- deltadb Software Is Made Between Commits — Zed's Blog</a></li>
<li><a href="https://shapeof.com/archives/2025/8/deltadb_from_zed.html">shapeof.com › archives › 2025 DeltaDB From Zed (the Code Editor) - shapeof.com</a></li>

</ul>
</details>

**Discussion**: Community responses are mixed. Some developers appreciate capturing the full development history for better collaboration with AI agents, while others express privacy concerns, arguing that the messy in-between code is a personal thinking process that should not be version-controlled or publicly accessible.

**Tags**: `#software engineering`, `#version control`, `#collaboration`, `#dev tools`, `#Zed editor`

---

<a id="item-12"></a>
## [Is Symbolic Regression Dead in the Age of LLMs?](https://www.reddit.com/r/MachineLearning/comments/1u2yqnu/is_symbolic_regression_still_a_thing_given_llms/) ⭐️ 7.0/10

A Reddit user questions whether traditional symbolic regression (SR) techniques are obsolete given the increasing capability of large language models (LLMs) in generating code and directly addressing symbolic regression tasks. This debate impacts the future of interpretable machine learning and scientific discovery, as symbolic regression offers transparency that black-box LLMs lack, but LLMs may automate expression finding more efficiently. Symbolic regression searches mathematical expression spaces using genetic programming or neural networks, is NP-hard, and emphasizes interpretability and simplicity.

reddit · r/MachineLearning · /u/omomom42 · Jun 11, 13:13

**Background**: Symbolic regression (SR) is a machine learning technique that discovers mathematical equations from data without pre-specified model forms, often using genetic programming. It prioritizes interpretability over pure predictive accuracy. LLMs, in contrast, are neural models trained on vast text and code corpora; they can generate code for symbolic operations but may lack the systematic search for simple, parsimonious expressions that SR provides.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Symbolic_regression">Symbolic regression</a></li>

</ul>
</details>

**Tags**: `#symbolic regression`, `#LLMs`, `#machine learning`, `#research discussion`

---

<a id="item-13"></a>
## [Pyrecall: Open-Source Tool to Detect Catastrophic Forgetting in LLM Fine-Tuning](https://www.reddit.com/r/MachineLearning/comments/1u2hjye/pyrecall_open_source_tool_for_detecting/) ⭐️ 7.0/10

Pyrecall (v0.1.0) is a new open-source tool, released under the MIT license, that detects catastrophic forgetting during fine-tuning of large language models by snapshotting skill scores before and after tuning, flagging regressions, and enabling rollback of specific LoRA adapters. It addresses a critical gap in tooling for LLM fine-tuning, as catastrophic forgetting can degrade model performance on previous tasks, and Pyrecall provides a lightweight, local solution for developers to safeguard model capabilities without relying on external APIs. The tool works fully locally, does not use any external APIs, and supports rolling back LoRA adapters by name. The current version is v0.1.0, and the author is seeking community feedback on the benchmark design.

reddit · r/MachineLearning · /u/Level_Frosting_7950 · Jun 10, 22:49

**Background**: Catastrophic forgetting, also known as catastrophic interference, is a phenomenon where neural networks abruptly forget previously learned information when learning new tasks. LoRA (Low-Rank Adaptation) is a popular parameter-efficient fine-tuning method that introduces lightweight trainable adapters while keeping the base model frozen. Pyrecall leverages these concepts to detect and mitigate forgetting during fine-tuning.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Catastrophic_interference">en.wikipedia.org › wiki › Catastrophic_interference Catastrophic interference - Wikipedia</a></li>
<li><a href="https://www.ibm.com/think/topics/catastrophic-forgetting">www.ibm.com › think › topics What is catastrophic forgetting? - IBM</a></li>
<li><a href="https://openinnovation.ai/lora-adapters-explained-efficient-fine-tuning-for-llms-without-retraining/">openinnovation.ai › lora -adapters-explained-efficient-fine LoRA Adapters Explained - openinnovation.ai</a></li>

</ul>
</details>

**Tags**: `#LLM`, `#fine-tuning`, `#catastrophic forgetting`, `#open-source`, `#continual learning`

---

<a id="item-14"></a>
## [Pokémon Go Data Used to Train Military Drone Navigation](https://dronexl.co/2026/06/09/pokemon-go-scans-niantic-vantor-military-drone-navigation/) ⭐️ 6.0/10

A report from Trouw, covered by DroneXL, claims that Niantic used Pokémon Go player scans to train visual navigation systems for military drones. However, community comments suggest the actual data overlap is minimal and the controversy is more ideological than technical. This story highlights the ethical and privacy concerns around user-generated data being repurposed for military applications. It also underscores the tension between commercial data collection and unintended uses by defense contractors. Niantic’s Visual Positioning System (VPS) uses over 50 million neural networks and 150 trillion parameters for centimeter-accurate localization. For drone navigation, domain adaptation techniques are required to bridge the gap between ground-level Pokémon Go scans and aerial views.

hackernews · vrganj · Jun 11, 06:42 · [Discussion](https://news.ycombinator.com/item?id=48487029)

**Background**: Simultaneous Localization and Mapping (SLAM) is a technique used by robots and drones to build a map of an unknown environment while tracking their own location. Niantic's VPS extends this concept to massive scale, using player-contributed photos to create detailed 3D maps. Domain adaptation refers to methods that allow a model trained in one domain (e.g., ground-level images) to perform well in another domain (e.g., aerial imagery), which is critical for repurposing Pokémon Go data for drone navigation.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Simultaneous_localization_and_mapping">en.wikipedia.org › wiki › Simultaneous_localization_and_mapping Simultaneous localization and mapping - Wikipedia</a></li>
<li><a href="https://www.nianticspatial.com/">www.nianticspatial.com Niantic Spatial | Real-world foundation models for physical AI...</a></li>
<li><a href="https://arxiv.org/abs/2603.02936">arxiv.org › abs › 2603 [2603.02936] Self-supervised Domain Adaptation for Visual 3D Pose... openaccess.thecvf.com › content › WACV2025 DrIFT: Autonomous Drone Dataset with Integrated Real and... mavlab.tudelft.nl › depth-transfer-learning-to-see-like-a Depth Transfer: Learning to See Like a Simulator for Real-World... ieeexplore.ieee.org › document › 10920826 Investigating Domain Adaptation Feasibility for Drone Detection:... thesis.unipd.it › handle › 20 Domain Adaptation Across Aerial Viewpoints in Semantic...</a></li>

</ul>
</details>

**Discussion**: Commenters largely dismissed the headline as hyperbolic, with one industry insider noting that the overlap between Pokémon Go data and active war zones is nearly zero. Another pointed out that the military contractor merely reserves the right to use the data, making this an ideological battle over data usage policies rather than a technical breakthrough.

**Tags**: `#privacy`, `#military tech`, `#data ethics`, `#augmented reality`

---

<a id="item-15"></a>
## [datasette-agent 0.2a0 adds interactive tool questions and save_query](https://simonwillison.net/2026/Jun/10/datasette-agent/#atom-everything) ⭐️ 6.0/10

datasette-agent 0.2a0 introduces tools that can ask users questions mid-execution via a ToolContext parameter, and adds a new built-in save_query tool that allows the agent to save SQL as a Datasette stored query after human approval. This release makes datasette-agent more interactive and safer by enabling user input during agent workflows and requiring human approval before saving queries, which enhances trust and usability for data exploration tasks. The ask_user() method supports yes/no, multiple-choice, and free-text questions; while a question is pending, the agent pauses and the question persists to the database, surviving server restarts. The save_query tool shows the full SQL, proposed name, database, and visibility before saving, and nothing is stored until the user clicks Yes.

rss · Simon Willison · Jun 10, 23:57

**Background**: Datasette Agent is an LLM-powered assistant for Datasette that can write and run SQL queries to explore data. ToolContext is a concept from agent frameworks that provides tools with access to runtime environment and flow control. Datasette stored queries allow saving frequently used SQL queries for reuse.

<details><summary>References</summary>
<ul>
<li><a href="https://simonwillison.net/2026/Jun/10/datasette-agent/">simonwillison.net › 2026 › Jun Release: datasette-agent 0.2a0 - simonwillison.net</a></li>
<li><a href="https://agent.datasette.io/">agent . datasette .io Datasette Agent: an AI assistant for Datasette to help explore...</a></li>
<li><a href="https://github.com/datasette/datasette-agent/blob/main/datasette_agent/query_tools.py">github.com › blob › main datasette-agent/datasette_agent/query_tools.py at main - GitHub</a></li>

</ul>
</details>

**Tags**: `#datasette`, `#agent`, `#release`, `#tools`

---

<a id="item-16"></a>
## [Student Seeks Resources on AI Responses to Psychological Distress](https://www.reddit.com/r/MachineLearning/comments/1u2j4uv/looking_for_papersresources_on_ai_responses_to/) ⭐️ 6.0/10

A psychology and engineering student is starting a research project to compare how general-purpose LLMs (ChatGPT, Gemini) and specialized chatbots (Wysa, Replika) respond to prompts involving psychological distress at varying intensities. As AI systems are increasingly used by people in emotional distress, understanding their safety and accuracy in responding to mental health scenarios is critical for preventing harm and guiding responsible deployment. The project examines how responses change with prompt intensity, type (declarative vs. question), and directness (explicit, ambiguous, third-person), as well as technical factors like safety layers, model versions, and stochastic outputs.

reddit · r/MachineLearning · /u/dakartt · Jun 10, 23:57

**Background**: General-purpose LLMs like ChatGPT and Gemini are not designed for mental health support and may lack appropriate safety guardrails, while specialized chatbots like Wysa (evidence-based CBT) and Replika (AI companion) have different architectures and moderation mechanisms. Comparing these systems requires accounting for differences in technical architecture, safety layers, and product-level configurations.

<details><summary>References</summary>
<ul>
<li><a href="https://www.wysa.com/">www. wysa .com Wysa - Everyday Mental Health</a></li>
<li><a href="https://replika.com/">replika .com Replika | The AI friend to do life with</a></li>
<li><a href="https://blogs.wysa.io/blog/research/wysa-found-to-be-only-chatbot-based-mental-health-app-with-5-types-of-crisis-support-for-users">blogs. wysa .io › blog › research Wysa only chatbot-based mental health app with 5 types of crisis... www.selfpause.com › resources › wysa Wysa Review 2026: Is the AI Mental Health Chatbot Safe? healthyminded.co › wysa -therapist-reviews The Pros and Cons of Wysa: A Review of the Chatbot-Guided Mental... play.google.com › store › apps Wysa: Mental Wellbeing AI - Apps on Google Play kidshelpline.com.au › tools › apps Wysa: Mental Health Support - Kids Helpline www.choosingtherapy.com › wysa -app-review Wysa App Review 2025: Pros & Cons, Cost, & Who It's Right For</a></li>

</ul>
</details>

**Tags**: `#AI safety`, `#mental health`, `#LLM`, `#chatbots`, `#psychology`

---