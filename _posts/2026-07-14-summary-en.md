---
layout: default
title: "Horizon Summary: 2026-07-14 (EN)"
date: 2026-07-14
lang: en
---

> From 20 items, 16 important content pieces were selected

---

1. [New Benchmark Reveals LLMs Struggle in Multi-Agent Coordination](#item-1) ⭐️ 9.0/10
2. [Measuring Input Latency on Linux: X11 vs Wayland, VRR, DXVK](#item-2) ⭐️ 8.0/10
3. [The Tower Keeps Rising: AI's Impact on Software Complexity](#item-3) ⭐️ 8.0/10
4. [Bonsai 27B: 27B Model Runs on a Phone](#item-4) ⭐️ 8.0/10
5. [EU age verification app may exclude non-Android/iOS platforms](#item-5) ⭐️ 8.0/10
6. [Lobsters migrates from MariaDB to SQLite successfully](#item-6) ⭐️ 8.0/10
7. [Armin Ronacher Warns AI Agents May Erode Shared Software Understanding](#item-7) ⭐️ 8.0/10
8. [Meta-RL: AI Trains Smaller AI Models Using GRPO](#item-8) ⭐️ 8.0/10
9. [Guide to stop Claude from overusing 'load-bearing'](#item-9) ⭐️ 7.0/10
10. [The Danger of Over-reliance on AI in Coding](#item-10) ⭐️ 7.0/10
11. [Caching uvx tools in GitHub Actions with UV_EXCLUDE_NEWER](#item-11) ⭐️ 7.0/10
12. [DOOMQL: Doom-like Game Engine Built on SQLite](#item-12) ⭐️ 7.0/10
13. [Datasette Code Frequency Chart Shows AI Coding Impact](#item-13) ⭐️ 7.0/10
14. [Mozilla CTO AMA on Open Source AI Report](#item-14) ⭐️ 7.0/10
15. [LLM hallucination paper using sub-Riemannian metric accepted to ICML workshop](#item-15) ⭐️ 6.0/10
16. [Monograph on Deep Learning Theory via Information Theory Questioned for Reliability](#item-16) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [New Benchmark Reveals LLMs Struggle in Multi-Agent Coordination](https://www.reddit.com/r/MachineLearning/comments/1uwc6ni/new_llm_coordination_benchmark_benchmarking/) ⭐️ 9.0/10

Researchers introduced ALaMa, a novel benchmark for open-ended multi-agent coordination in a Minecraft-like environment, and found that most modern LLMs achieve only about 6% normalized return. However, zero-shot Gemini 3.1 Pro performed comparably to a state-of-the-art MARL agent trained for 1 billion environment steps. This benchmark fills a critical gap in LLM evaluation by focusing on multi-agent coordination, a skill essential for real-world applications like robotics and collaborative AI. The surprising result that a zero-shot LLM can match a heavily trained MARL agent suggests that language models may offer a scalable alternative to traditional reinforcement learning in multi-agent settings. The benchmark, ALaMa, evaluates 13 modern LLMs in long-horizon tasks requiring exploration, communication, trading, crafting, building, and combat. Ablation studies reveal that communication is the most critical bottleneck for coordination, beyond long-horizon task competence alone.

reddit · r/MachineLearning · /u/ktessera · Jul 14, 15:37

**Background**: Multi-agent reinforcement learning (MARL) is a subfield of RL where multiple agents coexist and learn to interact in a shared environment. Normalized return is a metric that scales raw rewards to a consistent range for fair comparison across tasks. This benchmark specifically tests LLMs' ability to coordinate in open-ended, long-horizon scenarios, which goes beyond typical single-agent benchmarks.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Multi-agent_reinforcement_learning">en.wikipedia.org › wiki › Multi -agent_reinforcement_learning Multi-agent reinforcement learning - Wikipedia</a></li>
<li><a href="https://www.geeksforgeeks.org/machine-learning/multi-agent-reinforcement-learning-in-ai/">www.geeksforgeeks.org › machine- learning › multi - agent Multi-Agent Reinforcement Learning in AI - GeeksforGeeks</a></li>
<li><a href="https://codemia.io/knowledge-hub/path/normalizing_rewards_to_generate_returns_in_reinforcement_learning">codemia.io › knowledge-hub › path Normalizing Rewards to Generate Returns in reinforcement learning</a></li>

</ul>
</details>

**Tags**: `#multi-agent coordination`, `#LLM`, `#benchmark`, `#reinforcement learning`, `#AI research`

---

<a id="item-2"></a>
## [Measuring Input Latency on Linux: X11 vs Wayland, VRR, DXVK](https://marco-nett.de/blog/measuring-input-latency-on-linux-x11-vs-wayland-vrr-dxvk/) ⭐️ 8.0/10

A detailed empirical study measures and compares input latency across X11 and Wayland, with and without Variable Refresh Rate (VRR) and using DXVK for Direct3D translation. The results provide quantifiable data to settle debates about Linux desktop responsiveness. Understanding real-world input latency differences is crucial for gamers and power users choosing between Linux display servers. The findings can influence development priorities and help improve the overall Linux gaming experience. The study used a 500Hz display, which may mask some latency issues that appear at lower refresh rates like 60Hz or 120Hz. Notably, XWayland (running X11 applications on Wayland) showed approximately 3ms higher latency compared to native Wayland, which could be perceived as one frame behind at typical refresh rates.

hackernews · hoechst · Jul 14, 16:36 · [Discussion](https://news.ycombinator.com/item?id=48909424)

**Background**: X11 and Wayland are display server protocols for Linux. Wayland is newer and designed to be simpler, more secure, and faster, but some users report higher input latency under certain conditions. Variable Refresh Rate (VRR) synchronizes the monitor's refresh rate with the GPU's frame output to reduce tearing and stutter. DXVK translates Direct3D calls to Vulkan, enabling Windows games to run on Linux via Wine/Proton.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/DXVK">DXVK</a></li>
<li><a href="https://en.wikipedia.org/wiki/Variable_refresh_rate">en.wikipedia.org › wiki › Variable_refresh_rate Variable refresh rate - Wikipedia</a></li>

</ul>
</details>

**Discussion**: The community largely praised the article for its empirical approach, with users noting that such analysis is only possible on Linux due to its open nature. Some commenters pointed out that the use of a 500Hz display might hide issues visible at 60Hz, and that XWayland's higher latency could explain why some perceive Wayland as slow. Others debated the terminology, arguing that 'Wayland input latency' is not a meaningful concept as it depends on the compositor implementation.

**Tags**: `#Linux`, `#input latency`, `#Wayland`, `#X11`, `#gaming`

---

<a id="item-3"></a>
## [The Tower Keeps Rising: AI's Impact on Software Complexity](https://lucumr.pocoo.org/2026/7/13/the-tower-keeps-rising/) ⭐️ 8.0/10

Armin Ronacher's essay argues that AI-assisted programming may exacerbate software complexity and coordination issues, rather than solving them, by enabling faster individual code production without improving team-level understanding. This insight is critical as the industry increasingly adopts AI coding tools, potentially leading to more fragile and unmanageable systems if coordination and composability are neglected. The essay uses a Tetris metaphor to illustrate how composability requires lines to clear—each component must fit; AI agents may produce code that violates architectural boundaries, building a 'tower' of complexity.

hackernews · cdrnsf · Jul 14, 16:57 · [Discussion](https://news.ycombinator.com/item?id=48909785)

**Background**: Composability is a system design principle where components can be selected and assembled to satisfy requirements. Coordination issues in software engineering arise from aligning understanding across teams. The 'Lisp Curse' describes how ease of individual creation reduces collaborative incentive, a pattern echoed in AI-assisted programming.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Composability">en.wikipedia.org › wiki › Composability Composability - Wikipedia</a></li>
<li><a href="https://medium.com/@kaushalsinh73/software-engineering-is-quietly-becoming-a-coordination-problem-8ccfb443d53d">Software Engineering Is Quietly Becoming a Coordination Problem</a></li>

</ul>
</details>

**Discussion**: Commenters largely agree with the thesis: tekacs adds the Tetris analogy, ssivark links to the 'Lisp Curse', sixtyj affirms that coordination is the real bottleneck, and apinstein emphasizes the importance of shared understanding over code generation.

**Tags**: `#software-engineering`, `#complexity`, `#AI-programming`, `#composability`, `#coordination`

---

<a id="item-4"></a>
## [Bonsai 27B: 27B Model Runs on a Phone](https://prismml.com/news/bonsai-27b) ⭐️ 8.0/10

PrismML released Bonsai 27B, a 27-billion-parameter model compressed using ternary quantization to run on smartphones, with 262K-token context and Apache 2.0 license. Apple is reportedly in talks with PrismML about their compression technology. This marks the first time a 27B-class model fits on a phone, potentially enabling powerful on-device AI without cloud reliance, but early user reports reveal compatibility and quality issues that temper the breakthrough. The model uses ternary quantization (weights in -1, 0, +1) achieving 2x density of the best conventional 4-bit methods, but retains only 74.01% tool-use accuracy, a 5% drop. Users report it fails in LM Studio and produces gibberish on Android.

hackernews · xenova · Jul 14, 17:50 · [Discussion](https://news.ycombinator.com/item?id=48910545)

**Background**: Large language models often require powerful GPUs due to billions of parameters. Compression techniques like quantization reduce precision to shrink memory footprint. Ternary quantization uses three values instead of full 16-bit, enabling extreme compression but with accuracy trade-offs. Bonsai 27B is derived from a larger base model, showing that even 27B parameters can be squeezed into mobile memory.

<details><summary>References</summary>
<ul>
<li><a href="https://prismml.com/news/bonsai-27b">PrismML — Announcing Bonsai 27B: The First 27B-Class Model to Run on a Phone</a></li>
<li><a href="https://9to5mac.com/2026/07/14/prismml-releases-bonsai-27b-claiming-first-major-ai-model-of-its-size-fit-for-iphone/">PrismML releases Bonsai 27B, claiming first major AI model of its size fit for iPhone - 9to5Mac</a></li>
<li><a href="https://huggingface.co/prism-ml/Ternary-Bonsai-27B-gguf">prism-ml/Ternary-Bonsai-27B-gguf · Hugging Face</a></li>

</ul>
</details>

**Discussion**: Community sentiment is mixed: excitement about the achievement but frustration with broken tool support (LM Studio, Android). Users question quality claims—liuliu notes a 5% tool-call drop is significant in practice. sigbottle asks about business models behind open-source releases.

**Tags**: `#AI`, `#Model Compression`, `#Mobile Deployment`, `#Open Source`, `#Bonsai`

---

<a id="item-5"></a>
## [EU age verification app may exclude non-Android/iOS platforms](https://github.com/eu-digital-identity-wallet/av-doc-technical-specification/discussions/19) ⭐️ 8.0/10

A GitHub discussion on the EU Digital Identity Wallet's technical specification reveals that the proposed age verification app would require installation on Android or iOS devices, potentially excluding desktop, Linux, and other platforms. The specification also notes that the app must run on Google-licensed Android or Apple iOS, sparking controversy over exclusion and privacy. This move could set a precedent for EU-wide age verification, affecting all online services and users. Excluding non-mainstream platforms raises serious concerns about digital exclusion, privacy, and the EU's stated goal of digital sovereignty, as it forces reliance on US-dominated mobile ecosystems. The technical specification requires the age verification app to be deployed on devices with Google Mobile Services or Apple iOS, effectively banning custom Android ROMs, GrapheneOS, or Linux-based phones. Desktop computers are also not supported, as the app relies on hardware-level attestation features only available on modern smartphones.

hackernews · roundabout-host · Jul 14, 08:34 · [Discussion](https://news.ycombinator.com/item?id=48903777)

**Background**: The European Digital Identity Wallet (EUDI) is being developed under the eIDAS 2.0 regulation to provide secure digital identification across the EU. Age verification is a component intended to protect minors online, but critics argue the current design prioritizes centralized control and US mobile platforms over privacy and inclusivity. Similar debates have occurred in other regions, such as Australia's withdrawal of an age verification plan due to privacy concerns.

<details><summary>References</summary>
<ul>
<li><a href="https://ec.europa.eu/digital-building-blocks/sites/spaces/EUDIGITALIDENTITYWALLET/pages/694487738/EU+Digital+Identity+Wallet+Home">EU Digital Identity Wallet Home - EU Digital Identity Wallet -</a></li>
<li><a href="https://en.wikipedia.org/wiki/EIDAS">eIDAS - Wikipedia</a></li>

</ul>
</details>

**Discussion**: Commenters express strong skepticism, with one user stating this issue is the 'elephant in the room' for EU digital sovereignty talks. Another argues that the real question is why age verification is being pushed without consent, while a third points out that the current status quo (e.g., Roblox age verification) is already problematic. Concerns about digital exclusion of the elderly and technically unsavvy users are also raised.

**Tags**: `#EU policy`, `#age verification`, `#digital identity`, `#privacy`, `#open source`

---

<a id="item-6"></a>
## [Lobsters migrates from MariaDB to SQLite successfully](https://simonwillison.net/2026/Jul/14/lobsters-sqlite/#atom-everything) ⭐️ 8.0/10

Lobsters, a technology-focused social news site, has completed its migration from MariaDB to SQLite, now running entirely on a single VPS with a 3.8GB SQLite database file. This migration demonstrates that SQLite can serve as a viable production database for a moderately sized web application, offering lower CPU and memory usage, improved responsiveness, and reduced hosting costs. The migration involved a pull request by Thomas Dziedzic adding 735 lines and removing 593 lines across 30 commits and 188 files, building on prior PRs. The site reports CPU and memory usage down, and VPS cost halved after decommissioning the MariaDB server.

rss · Simon Willison · Jul 14, 19:44

**Background**: Lobsters is a community-driven social news site focused on technology and programming, similar to Hacker News but with a slower pace. SQLite is a lightweight, file-based database engine often used for embedded or smaller-scale applications, while MariaDB is a full-featured relational database typically used in client-server architectures. This migration shows that for many web applications, a single-server SQLite setup can be sufficient and cost-effective.

<details><summary>References</summary>
<ul>
<li><a href="https://lobste.rs/about">About - Lobsters</a></li>
<li><a href="https://appmus.com/software/lobsters">Lobsters: Features, Alternatives & Analysis (2026)</a></li>
<li><a href="https://news.ycombinator.com/item?id=20023583">Lobsters: https://lobste.rs/ It's a slower-moving site with lots of ...</a></li>

</ul>
</details>

**Tags**: `#SQLite`, `#database migration`, `#web applications`, `#performance`, `#Lobsters`

---

<a id="item-7"></a>
## [Armin Ronacher Warns AI Agents May Erode Shared Software Understanding](https://simonwillison.net/2026/Jul/14/armin-ronacher/#atom-everything) ⭐️ 8.0/10

Armin Ronacher published a blog post reflecting on how the shared language of a software project is maintained through friction, and warns that AI coding agents could bypass this process, reducing collective understanding. As AI-assisted programming tools become more prevalent, this insight highlights a potential downside: the loss of tacit knowledge transfer that occurs during human collaboration. It challenges the assumption that making coding faster via AI always improves software engineering. Ronacher describes 'friction' as the process of reading others' code, asking questions, and coordinating across teams — some of which is waste, but some synchronizes understanding. He notes that this shared language lives in documentation, code, reviews, conversations, and arguments.

rss · Simon Willison · Jul 14, 18:04

**Background**: In software engineering, much knowledge is tacit — unwritten and embedded in team practices and individual expertise. Invariants are assumptions that must hold true for code to function correctly; they are often part of this shared understanding. Ronacher's argument draws on these concepts to explain why friction is not always negative.

<details><summary>References</summary>
<ul>
<li><a href="https://www.knowledgefabric.io/blog/2024-08-27-Secret-Sauce/index.html">Tacit Knowledge - The secret sauce in software development</a></li>
<li><a href="https://en.wikipedia.org/wiki/Invariant-based_programming">Invariant-based programming - Wikipedia</a></li>

</ul>
</details>

**Tags**: `#software engineering`, `#shared understanding`, `#code review`, `#AI agents`, `#collaboration`

---

<a id="item-8"></a>
## [Meta-RL: AI Trains Smaller AI Models Using GRPO](https://www.reddit.com/r/MachineLearning/comments/1uwfmfa/p_rltraining_qwen36_to_rltrain_tool_using_ai/) ⭐️ 8.0/10

A developer built a meta-reinforcement learning system where a Qwen3.6-35B-A3B agent learns to generate complete RL training jobs (environment, reward, dataset, hyperparameters) for smaller Qwen models, using the inner model's performance improvement as a reward. The system achieved an episode reward increase from ~0.0 to ~0.63 over 54 outer-loop steps, totaling ~1,750 GPU training jobs. This demonstrates a practical approach to automated machine learning, where an AI system can autonomously improve other AI systems, potentially reducing human effort in model training. The success on a held-out task family suggests generalization, which is crucial for real-world automated ML. The inner loop uses prime-rl with GRPO to train small Qwen models (0.6B or 1.7B parameters) on cheap GPU pairs, while the outer loop uses Tinker's importance-sampling GRPO with LoRA fine-tuning. The total cost was ~$1,300: ~$810 for Runpod GPUs and ~$465 for Tinker compute, with each inner training job costing $0.13–0.30.

reddit · r/MachineLearning · /u/DanAiTuning · Jul 14, 17:39

**Background**: Group Relative Policy Optimization (GRPO) is a reinforcement learning algorithm used to train large language models efficiently by comparing groups of outputs without a separate value function. LoRA (Low-Rank Adaptation) is a parameter-efficient fine-tuning method that reduces trainable parameters. Prime-rl is a scalable RL framework for large-scale agentic training. Meta-reinforcement learning involves an agent learning to improve its own learning process or that of other agents.

<details><summary>References</summary>
<ul>
<li><a href="https://www.datacamp.com/blog/what-is-grpo-group-relative-policy-optimization">www.datacamp.com › blog › what-is- grpo -group-relative-policy What is GRPO? Group Relative Policy Optimization Explained</a></li>
<li><a href="https://github.com/PrimeIntellect-ai/prime-rl">github.com › PrimeIntellect-ai › prime - rl GitHub - PrimeIntellect-ai/prime-rl: Agentic RL Training at Scale</a></li>
<li><a href="https://en.wikipedia.org/wiki/LoRA_(machine_learning)">LoRA (machine learning) - Wikipedia</a></li>

</ul>
</details>

**Tags**: `#reinforcement-learning`, `#meta-learning`, `#LLM`, `#RLHF`, `#training`

---

<a id="item-9"></a>
## [Guide to stop Claude from overusing 'load-bearing'](https://jola.dev/posts/how-to-stop-claude-from-saying-load-bearing) ⭐️ 7.0/10

A developer published a guide on how to customize Claude's output to avoid overused phrases like 'load-bearing', using prompt engineering techniques and a global CLAUDE.md file. This addresses a growing frustration among LLM users with model-specific linguistic biases, which become jarring as AI-generated text proliferates. It showcases practical prompt engineering methods to increase output diversity and reduce repetitive phrasing. The guide likely involves specifying forbidden phrases in system prompts or using a CLAUDE.md file to set global preferences. Community members have noted other Claudisms like 'wired' appearing in code commits, indicating the problem extends beyond single words.

hackernews · shintoist · Jul 14, 11:46 · [Discussion](https://news.ycombinator.com/item?id=48905248)

**Background**: Large language models (LLMs) like Claude often develop linguistic biases from their training data, leading to overuse of certain phrases (e.g., 'delve', 'load-bearing'). These 'modelisms' can make AI-generated text sound unnatural and easily identifiable. Prompt engineering techniques, such as providing explicit instructions or examples in a system prompt, can mitigate these biases and tailor output to user preferences.

<details><summary>References</summary>
<ul>
<li><a href="https://claude.com/blog/best-practices-for-prompt-engineering">Prompt engineering best practices for 2026 | Claude by Anthropic</a></li>
<li><a href="https://direct.mit.edu/coli/article/50/3/1097/121961/Bias-and-Fairness-in-Large-Language-Models-A">direct.mit.edu › coli › article Bias and Fairness in Large Language Models: A Survey</a></li>
<li><a href="https://link.springer.com/article/10.1007/s42001-025-00435-2">link.springer.com › article › 10 Anchoring bias in large language models: an experimental study</a></li>

</ul>
</details>

**Discussion**: Commenters shared mixed feelings: some are less bothered by claudisms in direct coding interactions but find them jarring in prose. Others noted that LLM biases scale massively, making them more noticeable than individual human quirks. Several users provided concrete workarounds, such as using a CLAUDE.md file to replace first-person pronouns with a jocular name.

**Tags**: `#LLM`, `#Claude`, `#prompt engineering`, `#AI quirks`

---

<a id="item-10"></a>
## [The Danger of Over-reliance on AI in Coding](https://adi.bio/reality) ⭐️ 7.0/10

A developer shares a personal experience of spending many hours using AI to spec a project, only to end up with a convoluted, non-functional codebase, highlighting the danger of mistaking AI-assisted activity for real progress. This critique challenges the prevailing narrative that AI boosts productivity, urging developers to remain honest about whether their work is truly effective and meaningful. Community comments emphasize that real progress came from referring to actual documentation, and that there is a tension between being honest about AI's limitations and having the courage to persist.

hackernews · AdityaAnand1 · Jul 14, 11:33 · [Discussion](https://news.ycombinator.com/item?id=48905118)

**Background**: Large Language Models (LLMs) are increasingly used in software development to generate and debug code. However, critics warn that over-reliance can erode fundamental skills and personal satisfaction. This article and its discussion represent a broader conversation about balancing AI assistance with genuine understanding.

**Discussion**: Comments show divided opinions: some share negative experiences of AI leading to unmanageable code, while others argue AI helps with tedious tasks. A key point is the tension between honesty and courage in development.

**Tags**: `#AI`, `#software development`, `#productivity`, `#meaning`, `#LLM`

---

<a id="item-11"></a>
## [Caching uvx tools in GitHub Actions with UV_EXCLUDE_NEWER](https://simonwillison.net/2026/Jul/14/uvx-github-actions-cache/#atom-everything) ⭐️ 7.0/10

Simon Willison shared a caching recipe for uvx in GitHub Actions that uses the UV_EXCLUDE_NEWER environment variable set to a specific date, which is also included in the cache key, so that tools are only downloaded once until the date is bumped. This technique significantly speeds up CI workflows by avoiding repeated downloads of Python tools and their dependencies from PyPI on every run, reducing both runtime and network overhead. The UV_EXCLUDE_NEWER variable pins uvx to the latest tool versions available as of that date; bumping the date in the future automatically busts the cache and upgrades tools. The cache key must include the date value to ensure correct cache invalidation.

rss · Simon Willison · Jul 14, 00:56

**Background**: uvx is a tool from the uv project (a fast Python package and project manager) that allows running Python-based tools without explicit installation, by automatically downloading and caching them. In GitHub Actions, without caching, each workflow run downloads the tool anew from PyPI, which is slow and wasteful. Setting a cache-friendly date via UV_EXCLUDE_NEWER helps reuse previously downloaded versions.

<details><summary>References</summary>
<ul>
<li><a href="https://docs.astral.sh/uv/concepts/tools/">Tools | uv - Astral Docs</a></li>
<li><a href="https://docs.astral.sh/uv/reference/environment/">Environment variables | uv - Astral</a></li>

</ul>
</details>

**Discussion**: An existing issue on the astral-sh/setup-uv repository requests that the default behavior be changed to cache wheels instead of purging them from PyPI, indicating community interest in more efficient caching out of the box.

**Tags**: `#GitHub Actions`, `#caching`, `#uvx`, `#CI/CD`, `#Python tools`

---

<a id="item-12"></a>
## [DOOMQL: Doom-like Game Engine Built on SQLite](https://simonwillison.net/2026/Jul/13/doomql/#atom-everything) ⭐️ 7.0/10

Peter Gostev created DOOMQL, a Doom-like first-person shooter where every game mechanic is implemented entirely through SQLite queries, including a full ray tracer via recursive CTEs. The project was built using OpenAI's GPT-5.6 Sol model. DOOMQL demonstrates the surprising flexibility and power of SQLite as a computational engine beyond traditional database roles, pushing the boundaries of what is possible with SQL. It also highlights the capability of large language models like GPT-5.6 Sol to generate complex, novel software projects. The game is a Python terminal script that creates a SQLite database containing all game state, and a single massive SQL query implements a ray tracer using a recursive common table expression (CTE). Players interact via terminal or through a Datasette web app that displays the current frame and a tactical map.

rss · Simon Willison · Jul 13, 22:34

**Background**: SQLite is a widely used embedded relational database engine known for simplicity and reliability, but it is rarely used as the primary execution environment for game logic. Recursive CTEs allow SQL queries to perform iterative calculations, enabling techniques like ray tracing in pure SQL. GPT-5.6 Sol is a state-of-the-art AI model from OpenAI, particularly strong in coding tasks, which was used to generate the DOOMQL code.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/GPT-5.6">GPT-5.6 - Wikipedia</a></li>
<li><a href="https://openai.com/index/previewing-gpt-5-6-sol/">Previewing GPT‑5.6 Sol: a next-generation model - OpenAI</a></li>

</ul>
</details>

**Tags**: `#SQLite`, `#game engine`, `#Python`, `#GPT-5`, `#Doom`

---

<a id="item-13"></a>
## [Datasette Code Frequency Chart Shows AI Coding Impact](https://simonwillison.net/2026/Jul/13/datasette-code-frequency/#atom-everything) ⭐️ 7.0/10

Simon Willison shared a GitHub code frequency chart of his Datasette project, showing a massive spike in additions and deletions in 2026 that aligns with the release of advanced AI models like Opus 4.8, GPT-5.5, Fable 5, and GPT-5.6 Sol. This provides concrete, data-backed evidence of how AI coding agents and advanced LLMs dramatically boost individual developer productivity, offering a real-world illustration of AI's transformative impact on software development. The chart shows a single week in 2026 with 37,022 additions and -9,528 deletions, far exceeding any prior activity; earlier spikes in 2018 and 2025 are also visible but dwarfed by the 2026 peak.

rss · Simon Willison · Jul 13, 21:45

**Background**: Datasette is an open-source tool for exploring and publishing tabular data. GitHub's code frequency chart shows additions and deletions per week, reflecting development activity. AI coding agents, such as those powered by models like Claude Opus 4.5, can autonomously generate or modify code, accelerating software development.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Claude_Opus_4.5">Claude Opus 4.5</a></li>
<li><a href="https://www.analyticsinsight.net/artificial-intelligence/best-ai-coding-agents-and-development-platforms-for-developers-in-2026">www.analyticsinsight.net › artificial-intelligence › best-ai Best AI Coding Agents and Development Platforms in 2026</a></li>

</ul>
</details>

**Tags**: `#AI-assisted coding`, `#datasette`, `#open source`, `#GitHub`, `#Opus 4.5`

---

<a id="item-14"></a>
## [Mozilla CTO AMA on Open Source AI Report](https://www.reddit.com/r/MachineLearning/comments/1uw2do8/n_ama_reminder_raffi_krikorian_cto_mozilla/) ⭐️ 7.0/10

This is a reminder that Raffi Krikorian, CTO of Mozilla, is hosting an AMA to discuss Mozilla's inaugural State of Open Source AI report, covering enterprise adoption, model costs, Chinese open models, and agentic AI infrastructure. This AMA provides a rare opportunity to directly engage with a major industry figure on critical open source AI topics, offering insights into enterprise trends and the evolving landscape of AI infrastructure. The AMA starts at 1pm ET / 10am PT / 6PM BST, with questions posted in the designated Reddit thread. Raffi Krikorian provided proof of identity via his LinkedIn profile.

reddit · r/MachineLearning · /u/Benlus · Jul 14, 08:08

**Background**: Open source AI refers to AI models and tools whose source code is publicly available, allowing anyone to use, modify, and distribute them. The State of Open Source AI report is Mozilla's first comprehensive analysis of this ecosystem, covering adoption, costs, and emerging trends like agentic AI, which involves autonomous AI agents that can act independently to accomplish tasks.

<details><summary>References</summary>
<ul>
<li><a href="https://www.mckinsey.com/capabilities/mckinsey-technology/our-insights/reimagining-tech-infrastructure-for-and-with-agentic-ai">www.mckinsey.com › capabilities › mckinsey-technology Reimagining tech infrastructure for agentic AI | McKinsey</a></li>

</ul>
</details>

**Tags**: `#AMA`, `#open source AI`, `#Mozilla`, `#enterprise AI`, `#state of AI`

---

<a id="item-15"></a>
## [LLM hallucination paper using sub-Riemannian metric accepted to ICML workshop](https://www.reddit.com/r/MachineLearning/comments/1uw4j6a/llm_hallucination_paperusing_math_accepted_to/) ⭐️ 6.0/10

A paper titled SRM-LoRA, which introduces a sub-Riemannian metric approach to reduce hallucination in large language models, has been accepted to an ICML workshop in 2026. This work demonstrates a novel integration of differential geometry into LLM fine-tuning, potentially offering a principled way to mitigate hallucinations without increasing inference cost. The method builds a sensitivity-based Riemannian metric to reshape backward gradients in LoRA parameter space, and it is trained only on the HaluEval-QA dataset but generalizes to out-of-distribution benchmarks.

reddit · r/MachineLearning · /u/Round_Apple2573 · Jul 14, 10:13

**Background**: Sub-Riemannian metrics generalize Riemannian metrics, allowing distance measurement only along certain 'horizontal' directions. HaluEval-QA is a large-scale hallucination evaluation benchmark with 10,000 QA samples designed to detect LLM hallucinations. In the paper, the authors construct a Riemannian metric from the sensitivity of the loss to parameters, acting as a brake on harmful update directions.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Sub-Riemannian_metric">Sub-Riemannian metric</a></li>
<li><a href="https://arxiv.org/abs/2305.11747">arxiv.org › abs › 2305 HaluEval: A Large-Scale Hallucination Evaluation Benchmark for... huggingface.co › nehalecky › halu- qa -eval-dataset nehalecky/halu-qa-eval-dataset · Hugging Face www.papercodex.com › halueval -detect-and-benchmark-llm HaluEval: Detect and Benchmark LLM Hallucinations Across QA,... www.emergentmind.com › topics › halueval -and-truthfulqa HaluEval and TruthfulQA Benchmarks - emergentmind.com learn.engineering.vips.edu › agent-protocols › agent HaluEval — Hallucination Evaluation Benchmark | VIPS Learn GitHub - RUCAIBox/ HaluEval : This is the repository of HaluEval , a large GitHub - RUCAIBox/ HaluEval : This is the repository of HaluEval , a large GitHub - RUCAIBox/ HaluEval : This is the repository of HaluEval , a large GitHub - RUCAIBox/ HaluEval : This is the repository of HaluEval , a large</a></li>

</ul>
</details>

**Tags**: `#LLM`, `#hallucination`, `#LoRA`, `#mathematics`, `#ICML workshop`

---

<a id="item-16"></a>
## [Monograph on Deep Learning Theory via Information Theory Questioned for Reliability](https://www.reddit.com/r/MachineLearning/comments/1uvuavs/are_the_contents_of_this_monograph_reliable_with/) ⭐️ 6.0/10

A Reddit user questioned the reliability of a monograph that claims to provide a unified theory of deep learning through information theory, citing mixed publication venues of its cited works and technical concerns about its proposed white-box transformer architecture. This discussion highlights the challenge of evaluating new theoretical frameworks in deep learning, especially when claims are based on work from a single lab with varying quality. If the monograph's claims are unreliable, it could mislead researchers and practitioners, but if valid, it might offer a mathematically grounded pathway to interpretable architectures. The monograph's headline claim is that a white-box transformer can be designed via the principle of coding rate reduction, but the user notes that the proposed MLP is essentially a regular one with sparsity penalty and the attention mechanism is less expressive than current ones (Q=K=V=O^T). The user also observed that all cited papers originate from one lab.

reddit · r/MachineLearning · /u/Carbon1674 · Jul 14, 01:14

**Background**: Coding rate reduction (MCR2) is an objective for learning structured and compact deep representations, maximizing the diversity and discriminability of features. CRATE (Coding RAte reduction TransformEr) is a white-box transformer derived from optimizing a sparse rate reduction objective, with each layer corresponding to one step of an alternating minimization algorithm. Mechanistic interpretability aims to reverse-engineer neural networks into human-understandable algorithms, but the user found one cited paper in this area to be of poor quality and published in an unfamiliar venue.

<details><summary>References</summary>
<ul>
<li><a href="https://arxiv.org/abs/2006.08558">arxiv.org › abs › 2006 [2006.08558] Learning Diverse and Discriminative Representations...</a></li>
<li><a href="https://ma-lab-berkeley.github.io/CRATE/">ma-lab-berkeley.github.io › CRATE White-Box Transformers via Sparse Rate Reduction</a></li>
<li><a href="https://en.wikipedia.org/wiki/Mechanistic_interpretability">Mechanistic interpretability</a></li>

</ul>
</details>

**Discussion**: The user expresses skepticism about the monograph's reliability due to mixed venue quality of cited works and technical weaknesses in the proposed architecture, such as the less expressive attention and the suspicious similarity of the MLP to standard ones. They seek validation from the community, admitting their limited background in SSL/theory. The overall sentiment is cautious and critical, with a call for expert input.

**Tags**: `#deep learning theory`, `#information theory`, `#monograph`, `#reliability`

---