---
layout: default
title: "Horizon Summary: 2026-07-13 (EN)"
date: 2026-07-13
lang: en
---

> From 20 items, 12 important content pieces were selected

---

1. [LAPD Ends Flock Contract Over Civil Liberties](#item-1) ⭐️ 8.0/10
2. [Chain of Thought is a scaling trap; latent reasoning emerges](#item-2) ⭐️ 8.0/10
3. [Open-source tool Research Radar filters arXiv papers using LLMs](#item-3) ⭐️ 8.0/10
4. [GPUHedge reduces serverless GPU cold start latency from 117s to 30s](#item-4) ⭐️ 8.0/10
5. [Clarifying Continual Learning: Definitions and AGI Relevance](#item-5) ⭐️ 8.0/10
6. [J-Space Entropy Evaluated as Error Predictor on Qwen3-4B](#item-6) ⭐️ 8.0/10
7. [Apple's SpeechAnalyzer API beats Whisper in speed, competitive in quality](#item-7) ⭐️ 7.0/10
8. [The Art and Engineering of Sega CD Silpheed](#item-8) ⭐️ 7.0/10
9. [DOM-docx: Convert HTML to Editable Word Documents (MIT)](#item-9) ⭐️ 7.0/10
10. [LLM agents should never be Directly Responsible Individuals](#item-10) ⭐️ 7.0/10
11. [Anthropic Extends Fable 5 Access Again](#item-11) ⭐️ 6.0/10
12. [LLMs and CS PhD Efficiency Debate](#item-12) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [LAPD Ends Flock Contract Over Civil Liberties](https://techcrunch.com/2026/07/13/lapd-lets-contract-with-surveillance-giant-flock-expire-citing-serious-concerns-over-civil-liberties-and-privacy/) ⭐️ 8.0/10

The Los Angeles Police Department (LAPD) allowed its contract with surveillance company Flock Safety to expire, citing serious concerns over civil liberties and privacy. However, the cameras remain operational, continuing to collect data that can be sold to other agencies. This move highlights growing tensions between law enforcement surveillance capabilities and privacy rights, as the data collection persists even after the contract ends. It also raises questions about the business model of surveillance companies that retain ownership of hardware and data. Flock Safety owns the cameras and poles, so they continue to operate and collect data that can be sold to other agencies like CHP, LASD, FBI, and Palantir. The contract expiration provides a 'fake exit' as data harvesting is resilient to political pressure.

hackernews · forks · Jul 13, 15:11 · [Discussion](https://news.ycombinator.com/item?id=48893947)

**Background**: Flock Safety provides automated license plate recognition (ALPR) cameras that capture license plates and use AI to identify vehicle make, model, color, and other attributes. These systems are often installed by police departments to aid investigations, but critics argue they enable mass surveillance without proper oversight. The LAPD's decision reflects broader privacy concerns.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Flock_Safety">en.wikipedia.org › wiki › Flock_Safety Flock Safety - Wikipedia</a></li>
<li><a href="https://www.flocksafety.com/products/license-plate-readers">www.flocksafety.com › products › license - plate -readers Flock Safety LPR Cameras: Automated License Plate Reader</a></li>
<li><a href="https://www.flocksafety.com/ebooks/license-plate-reader-cameras-overview">www.flocksafety.com › ebooks › license - plate -reader-cameras License Plate Recognition Cameras - Flock Safety</a></li>

</ul>
</details>

**Discussion**: Commenters expressed skepticism about the contract termination as a genuine privacy win, noting that Flock retains ownership of cameras and data, enabling ongoing surveillance. Some highlighted the ineffectiveness of ALPR in high-crime areas due to police inaction, while others called for laws prohibiting government purchase of data it cannot legally collect itself.

**Tags**: `#privacy`, `#surveillance`, `#civil liberties`, `#technology policy`

---

<a id="item-2"></a>
## [Chain of Thought is a scaling trap; latent reasoning emerges](https://www.reddit.com/r/MachineLearning/comments/1uviru5/chain_of_thought_is_a_scaling_trap_the_next_wave/) ⭐️ 8.0/10

A Reddit post argues that Chain-of-Thought reasoning in LLMs is a scaling trap and proposes that the next wave is latent reasoning, citing methods like Coconut, HRM, and RecursiveMAS. The post also discusses where the BDH (Dragon Hatchling) model fits in this landscape, achieving 97.4% accuracy on Sudoku without CoT. This analysis challenges the dominant CoT paradigm, highlighting its inefficiency and faithfulness issues, and signals a shift toward latent-space reasoning that could reduce computational costs. It also raises critical concerns about interpretability in latent reasoning, especially for high-stakes applications. CoT traces can be unfaithful, showing plausible steps with wrong answers or messy steps with correct answers. Latent reasoning methods like Coconut operate in continuous hidden states, while BDH achieves 97.4% on Sudoku without CoT and aims to combine latent iteration with stateful memory.

reddit · r/MachineLearning · /u/meowsterpieces · Jul 13, 17:50

**Background**: Chain-of-Thought reasoning prompts language models to generate intermediate reasoning steps in text, improving performance but incurring high token costs and latency. Latent reasoning methods like Coconut (Meta AI) instead allow models to reason directly in continuous hidden states, avoiding text serialization. The Hierarchical Reasoning Model (HRM) and RecursiveMAS are other recent approaches that use latent-space computation for deeper reasoning.

<details><summary>References</summary>
<ul>
<li><a href="https://www.linkedin.com/pulse/unlocking-smarter-ai-my-take-coconut-framework-latent-ragunathan-o43me">Unlocking Smarter AI: My Take on the “ Coconut ” Framework for...</a></li>
<li><a href="https://arxiv.org/abs/2506.21734">[2506.21734] Hierarchical Reasoning Model - arXiv.org</a></li>
<li><a href="https://recursivemas.github.io/">Recursive Multi-Agent Systems</a></li>

</ul>
</details>

**Tags**: `#LLMs`, `#Chain of Thought`, `#Latent Reasoning`, `#ML Research`

---

<a id="item-3"></a>
## [Open-source tool Research Radar filters arXiv papers using LLMs](https://www.reddit.com/r/MachineLearning/comments/1uvcdf7/hundreds_of_papers_hit_arxiv_every_day_and_maybe/) ⭐️ 8.0/10

A user-built open-source tool called Research Radar automatically fetches daily arXiv papers, scores abstracts against personal research interests, and generates a summary digest using LLMs, with both cheap and strong models for different passes. This tool directly addresses the information overload problem many researchers face, potentially saving hours per week by surfacing only relevant papers, and its open-source, domain-agnostic design makes it adaptable across fields. The tool uses a two-pass model strategy: a cheap model for initial abstract scoring (approx. 18k tokens per batch) and a stronger model for deep reading of top-scoring papers (40-70k tokens). It is model-agnostic, supporting Claude Code, OpenAI endpoints, and local setups via Ollama/vLLM.

reddit · r/MachineLearning · /u/usedtobreath · Jul 13, 13:59

**Background**: arXiv is a preprint repository where thousands of papers are uploaded daily, making it hard for researchers to keep up. LLMs (large language models) can be used to summarize and score text based on user-defined criteria. This tool automates the filtering process using a scoring pipeline.

**Tags**: `#arXiv`, `#research tool`, `#LLM`, `#paper filtering`, `#open-source`

---

<a id="item-4"></a>
## [GPUHedge reduces serverless GPU cold start latency from 117s to 30s](https://www.reddit.com/r/MachineLearning/comments/1uvlb6h/gpuhedge_hedging_serverless_gpu_providers/) ⭐️ 8.0/10

GPUHedge is an open-source tool that uses speculative execution to hedge requests across multiple serverless GPU providers, reducing p95 cold start latency from 116.6 seconds to 29.4 seconds in initial benchmarks. This approach significantly improves tail latency for serverless GPU inference, which is critical for real-time AI applications. By being open-source and provider-agnostic, it offers a practical solution that can be adopted by the community without vendor lock-in. In a fixed RunPod to Cerebrium hedge launched after 10 seconds, the p95 latency dropped from 116.6s to 29.4s, and requests over 60 seconds went from 11/36 to 0/36. The tool is Apache-2.0 licensed and in alpha, available via pip install gpuhedge.

reddit · r/MachineLearning · /u/Putrid_Construction3 · Jul 13, 19:20

**Background**: Serverless GPU providers scale to zero when idle, causing cold starts that can delay inference by tens of seconds. Speculative execution is a technique where a system performs work before it is known whether it is needed, often used to hide latency. Hedged requests issue the same request to multiple replicas and use the first successful response, reducing tail latency. GPUHedge applies these concepts to serverless GPU inference by conditionally launching a backup request on a secondary provider if the primary is too slow.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Speculative_execution">Speculative execution - Wikipedia</a></li>
<li><a href="https://oneinfer.ai/blogs/gpu-cold-starts-are-killing-your-inference-latency-here-s-the-fix">GPU Cold Starts Are Killing Your Inference Latency ... - OneInfer</a></li>
<li><a href="https://medium.com/@sudheersingh/tackling-latency-with-request-hedging-3dde6ab0e295">Tackling Latency with Request Hedging | by Sudheer Singh | Medium</a></li>

</ul>
</details>

**Tags**: `#serverless`, `#GPU`, `#cold start`, `#hedging`, `#latency`

---

<a id="item-5"></a>
## [Clarifying Continual Learning: Definitions and AGI Relevance](https://www.reddit.com/r/MachineLearning/comments/1uvm2p4/whats_your_take_on_continual_learning_d/) ⭐️ 8.0/10

A Reddit post highlights the lack of consensus on the definition of continual learning, despite claims by Dario Amodei (by 2026) and Demis Hassabis that it is crucial for AGI, and questions whether the bottleneck is architectural, data-related, or fundamental. This discussion matters because continual learning is considered a key unsolved problem for achieving AGI, yet its ambiguous definition hinders progress and evaluation. Clarifying what continual learning truly requires could guide research priorities and prevent hype from outpacing substance. The post notes that different researchers frame continual learning as solving catastrophic forgetting, online learning, lifelong learning, or meta-learning, with shifting goalposts. It asks if the challenge is architectural, a data problem, or more fundamental regarding benchmarking.

reddit · r/MachineLearning · /u/watercolorer2024 · Jul 13, 19:47

**Background**: Continual learning aims to enable AI models to learn new tasks sequentially without forgetting previously learned knowledge, a challenge known as catastrophic forgetting. Unlike human learning, standard neural networks suffer from catastrophic interference. Meta-learning ('learning to learn') and lifelong learning are related but distinct subfields. The AGI community sees continual learning as essential for models that can adapt over time without retraining.

<details><summary>References</summary>
<ul>
<li><a href="https://www.ibm.com/think/topics/continual-learning">www.ibm.com › think › topics What is continual learning? - IBM</a></li>
<li><a href="https://en.wikipedia.org/wiki/Catastrophic_interference">Catastrophic interference - Wikipedia</a></li>
<li><a href="https://www.geeksforgeeks.org/machine-learning/continual-learning-in-machine-learning/">www.geeksforgeeks.org › machine - learning › continual - learning Continual Learning in Machine Learning - GeeksforGeeks</a></li>

</ul>
</details>

**Tags**: `#continual learning`, `#AGI`, `#catastrophic forgetting`, `#meta-learning`, `#lifelong learning`

---

<a id="item-6"></a>
## [J-Space Entropy Evaluated as Error Predictor on Qwen3-4B](https://www.reddit.com/r/MachineLearning/comments/1uv5l75/evaluating_jspace_entropy_as_an_error_predictor/) ⭐️ 8.0/10

This Reddit post evaluates J-space entropy as an error predictor on Qwen3-4B across 7 datasets, finding it can complement output confidence for factual retrieval but fails to detect internalized misconceptions and is highly task-dependent. The study provides nuanced empirical insights into the limitations of internal entropy for hallucination detection, directly informing LLM interpretability and calibration research. The evaluation used ~11,400 examples from datasets including TriviaQA, PopQA, NQ-Open, TruthfulQA, HotpotQA, GSM8K, and CommonSenseQA, showing that J-space entropy calibration varies by task and multiple-choice formatting weakens the signal.

reddit · r/MachineLearning · /u/dasjomsyeet · Jul 13, 08:27

**Background**: Jacobian Lens is a technique from Anthropic that probes internal representations in language models by computing input-output Jacobians. J-space entropy refers to the entropy of these internal workspace representations, which was hypothesized to detect confidently incorrect answers. This work tests that hypothesis on a single model, Qwen3-4B.

<details><summary>References</summary>
<ul>
<li><a href="https://github.com/dasjoms/jspace-hallucination-eval">github.com › dasjoms › jspace-hallucination-eval Evaluating J-Space Entropy as a Hallucination Predictor in...</a></li>
<li><a href="https://github.com/anthropics/jacobian-lens">GitHub - anthropics/jacobian-lens: Companion code for the global workspace interpretability paper · GitHub</a></li>
<li><a href="https://arxiv.org/pdf/2603.21172">arxiv.org › pdf › 2603 Entropy Alone is Insufficient for Safe Selective Prediction in...</a></li>

</ul>
</details>

**Tags**: `#Machine Learning`, `#Jacobian Lens`, `#Error Prediction`, `#LLM Confidence`, `#Empirical Evaluation`

---

<a id="item-7"></a>
## [Apple's SpeechAnalyzer API beats Whisper in speed, competitive in quality](https://get-inscribe.com/blog/apple-speech-api-benchmark.html) ⭐️ 7.0/10

Apple introduced the SpeechAnalyzer API at WWDC 2025, replacing the older SFSpeechRecognizer. Benchmarks show it is faster than OpenAI's Whisper while maintaining competitive transcription quality. This new API could reshape the speech-to-text landscape by offering faster, on-device transcription, potentially reducing reliance on third-party apps that wrap Whisper. It signals Apple's push to integrate advanced AI capabilities directly into its ecosystem. SpeechAnalyzer runs entirely on-device, ensuring privacy and low latency. In tests by MacStories editor Finn Voorhees, it was significantly faster than Whisper-Large-V2 with only a slight trade-off in accuracy.

hackernews · get-inscribe · Jul 13, 16:06 · [Discussion](https://news.ycombinator.com/item?id=48894752)

**Background**: Whisper is a widely used open-source automatic speech recognition (ASR) system from OpenAI, trained on 680,000 hours of data. Apple's previous speech recognition API, SFSpeechRecognizer, was introduced with iOS 10 and has now been succeeded by SpeechAnalyzer in iOS 26. The new API is designed for on-device transcription, offering improved speed and privacy compared to cloud-based solutions.

<details><summary>References</summary>
<ul>
<li><a href="https://developer.apple.com/videos/play/wwdc2025/277/">Bring advanced speech -to-text to your app with... - Apple Developer</a></li>
<li><a href="https://gigazine.net/gsc_news/en/20250619-apple-speech-analyzer/">Apple 's new transcription API ' SpeechAnalyzer ' beats... - GIGAZIN...</a></li>
<li><a href="https://github.com/openai/whisper">GitHub - openai/whisper: Robust Speech Recognition via Large-Scale Weak Supervision · GitHub</a></li>

</ul>
</details>

**Discussion**: Commenters noted that Whisper is no longer state-of-the-art, with models like Nvidia's Nemotron and Parakeet being superior. Some predicted that SpeechAnalyzer could disrupt paid Whisper wrapper apps, while one user reported it was faster but slightly less accurate than Whisper on math lectures.

**Tags**: `#speech recognition`, `#Apple`, `#benchmark`, `#API`, `#ASR`

---

<a id="item-8"></a>
## [The Art and Engineering of Sega CD Silpheed](https://fabiensanglard.net/silpheed/index.html) ⭐️ 7.0/10

Fabien Sanglard published a detailed technical analysis of Sega CD's Silpheed, revealing how it used pre-rendered FMV backgrounds combined with polygon ships to create convincing 3D graphics on hardware with no real 3D capability. This analysis highlights an important chapter in video game history where developers creatively overcame hardware limitations. It offers valuable insights for retro game enthusiasts and modern developers interested in optimization and illusion techniques. The article explains that unlike most FMV games which used a top-down approach, Silpheed used a bottom-up method: streaming high-quality pre-rendered video as backgrounds while rendering ship polygons in real time. The Sega CD had limited 2D rotation/scale capabilities but no 3D hardware.

hackernews · ibobev · Jul 13, 14:52 · [Discussion](https://news.ycombinator.com/item?id=48893639)

**Background**: The Sega CD (Mega CD) was an add-on for the Sega Genesis that used CD-ROMs, offering much more storage than cartridges. This allowed full-motion video (FMV) games, which often suffered from compression artifacts. Silpheed, originally a 1986 PC-88 game, was ported in 1993 using a unique technique that combined FMV backgrounds with polygon sprites.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Sega_CD">en.wikipedia.org › wiki › Sega_CD Sega CD - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Silpheed">Silpheed - Wikipedia</a></li>

</ul>
</details>

**Discussion**: Commenters expressed nostalgia and admiration for the game's technical achievement. One noted that unlike typical FMV games, Silpheed felt like controlling a movie. Another highlighted that the Sega CD had no 3D capabilities, making the illusion even more impressive. There was also a discussion about the sound setup and patch cables.

**Tags**: `#retro-gaming`, `#game-development`, `#Sega-CD`, `#FMV`, `#technical-deep-dive`

---

<a id="item-9"></a>
## [DOM-docx: Convert HTML to Editable Word Documents (MIT)](https://github.com/floodtide/dom-docx) ⭐️ 7.0/10

DOM-docx is a new open-source TypeScript library that converts HTML into native, editable Word (.docx) files, addressing limitations of existing libraries that produce invalid or non-editable output. This tool streamlines backend document generation by allowing developers to use familiar HTML templates (e.g., from Vue or React), reducing development time and errors associated with traditional docx creation methods. The library is written in TypeScript and verified using a screenshot-to-docx scoring loop to ensure layout fidelity. It is released under the MIT license and can be used both in Node.js and in the browser.

hackernews · fishbone · Jul 13, 11:51 · [Discussion](https://news.ycombinator.com/item?id=48891267)

**Background**: Backend document generation often involves creating .docx files with complex formatting. Traditional methods use templating engines that are error-prone and slow to debug. OOXML (Office Open XML) is the underlying format for .docx files, and existing HTML-to-docx converters often produce files that are not truly editable in Word.

<details><summary>References</summary>
<ul>
<li><a href="https://dom-docx.com/">dom - docx .com dom-docx — HTML to Word converter in the browser</a></li>

</ul>
</details>

**Discussion**: The author explains the motivation behind DOM-docx, citing frustration with existing libraries and the desire to use JS-rendered HTML. Commenters appreciate the TypeScript implementation and the verification method. One user asks about round-trip conversion (docx -> html -> docx), which is not currently supported.

**Tags**: `#open-source`, `#document-generation`, `#html-to-docx`, `#typescript`, `#MIT`

---

<a id="item-10"></a>
## [LLM agents should never be Directly Responsible Individuals](https://simonwillison.net/2026/Jul/12/directly-responsible-individuals/#atom-everything) ⭐️ 7.0/10

Simon Willison argues that LLM-powered agents should never serve as Directly Responsible Individuals (DRI), a concept originating at Apple and used at GitLab, because accountability is fundamentally human. This argument challenges the growing trend of deploying AI agents in decision-making roles, reminding organizations that machines cannot be held accountable for outcomes. It reinforces the human-centric view of accountability in software engineering and management. Willison references an IBM training slide from 1979 that states 'A computer can never be held accountable, therefore a computer must never make a management decision.' The DRI concept, as defined in the GitLab handbook, designates one person ultimately accountable for a project's success or failure.

rss · Simon Willison · Jul 12, 23:57

**Background**: Directly Responsible Individual (DRI) is a term coined by Apple to ensure clear ownership of projects, eliminating ambiguity about who has final decision-making authority. It is widely adopted in organizations like GitLab. The IBM 1979 slide is a classic warning against allowing computers to make management decisions, highlighting that accountability is uniquely human. LLM-powered agents are AI systems that can autonomously perform tasks using large language models.

<details><summary>References</summary>
<ul>
<li><a href="https://handbook.gitlab.com/handbook/people-group/directly-responsible-individuals/">Directly Responsible Individuals (DRI) | The GitLab Handbook</a></li>
<li><a href="https://www.ibm.com/think/insights/ai-decision-making-where-do-businesses-draw-the-line">www. ibm .com › think › insights AI decision-making: Where do businesses draw the line? - IBM</a></li>

</ul>
</details>

**Tags**: `#AI accountability`, `#LLM agents`, `#organizational culture`, `#software engineering`, `#ethics`

---

<a id="item-11"></a>
## [Anthropic Extends Fable 5 Access Again](https://simonwillison.net/2026/Jul/12/bump/#atom-everything) ⭐️ 6.0/10

Anthropic has extended Claude Fable 5 access on paid plans through July 19, 2026, citing compute constraints. Meanwhile, OpenAI has temporarily removed the 5-hour usage limit for GPT-5.6 Sol and is improving its efficiency. This shows Anthropic is struggling to meet demand for its most capable model, while OpenAI capitalizes on the uncertainty to attract users. The decision could influence user adoption of Claude versus GPT models. Fable 5 is a Mythos-class model made safe for general use, and subscribers can use up to half their weekly limit on Fable 5 before needing credits or switching models. OpenAI's GPT-5.6 Sol removed usage limits and is rolling out efficiency improvements to reduce consumption.

rss · Simon Willison · Jul 12, 21:20

**Background**: Anthropic launched Claude Fable 5 on June 9, 2026, as its most capable widely released model, but initially restricted access due to compute constraints. OpenAI released GPT-5.6 Sol on July 9, 2026, as part of a tiered lineup (Sol, Terra, Luna). Both models represent a step forward in AI capability, but availability and pricing are key differentiators.

<details><summary>References</summary>
<ul>
<li><a href="https://www.anthropic.com/news/claude-fable-5-mythos-5">Claude Fable 5 and Claude Mythos 5 \ Anthropic</a></li>
<li><a href="https://openai.com/index/previewing-gpt-5-6-sol/">Previewing GPT - 5 . 6 Sol : a next-generation model | OpenAI</a></li>

</ul>
</details>

**Tags**: `#AI`, `#Anthropic`, `#Claude`, `#LLMs`

---

<a id="item-12"></a>
## [LLMs and CS PhD Efficiency Debate](https://www.reddit.com/r/MachineLearning/comments/1uvhr7a/fast_track_through_a_cs_phd_using_llms_for_paper/) ⭐️ 6.0/10

A Reddit user questions whether large language models (LLMs) are accelerating CS PhD completion by streamlining experiments and paper writing. This discussion highlights the growing impact of LLMs on academic productivity, potentially reshaping PhD timelines and research practices in computer science. The post lacks empirical evidence or specific examples, serving more as a conversation starter about observed trends in PhD efficiency.

reddit · r/MachineLearning · /u/Alone_Reality3726 · Jul 13, 17:15

**Background**: Large language models (LLMs) like GPT-4 can generate text, code, and assist with research tasks such as data analysis and writing. Their use in academia has raised questions about productivity gains versus potential over-reliance.

**Tags**: `#LLMs`, `#CS PhD`, `#paper writing`, `#academic productivity`

---