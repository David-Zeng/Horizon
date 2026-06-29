---
layout: default
title: "Horizon Summary: 2026-06-29 (EN)"
date: 2026-06-29
lang: en
---

> From 24 items, 17 important content pieces were selected

---

1. [Supreme Court: Geofence warrants need constitutional protections](#item-1) ⭐️ 9.0/10
2. [Rocket Lab acquires Iridium in historic deal](#item-2) ⭐️ 8.0/10
3. [Deep Dive into CUDA Kernel Execution Pipeline](#item-3) ⭐️ 8.0/10
4. [European ISPs Seek Liability for Rightsholders Over Overblocking](#item-4) ⭐️ 8.0/10
5. [Tidal Announces AI Music Policy with Stricter Integrity Standards](#item-5) ⭐️ 8.0/10
6. [Ornith-1.0: Self-Scaffolding LLM for Agentic Coding](#item-6) ⭐️ 8.0/10
7. [Google's Agentic Peer-Reviewer Processes 10K Papers at ICML/STOC](#item-7) ⭐️ 8.0/10
8. [EML Trees Proven Universal Approximators](#item-8) ⭐️ 8.0/10
9. [Qwen 3.6 27B: Ideal for Local Development, But Sparks Debate](#item-9) ⭐️ 7.0/10
10. [Game Boy JIT to WASM Beats Native Interpreters](#item-10) ⭐️ 7.0/10
11. [Sandia National Labs' Rad-Hard 8085 CPU from the 1970s](#item-11) ⭐️ 7.0/10
12. [Jon Udell: Invite Agents Into Your Loop, Don't Relinquish Control](#item-12) ⭐️ 7.0/10
13. [Cerebras-OpenAI Deal Blocks Startup Inference Access](#item-13) ⭐️ 7.0/10
14. [HEMA Practitioner Builds Open Dataset to Improve AI Sword Tracking](#item-14) ⭐️ 7.0/10
15. [Quiz Matches Users to LLMs Based on Personality and Values](#item-15) ⭐️ 7.0/10
16. [Instagram Uses User Photos in Meta Glasses Ads, Reviving Privacy Debate](#item-16) ⭐️ 6.0/10
17. [Recursive Self Improvement as a PhD Topic?](#item-17) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [Supreme Court: Geofence warrants need constitutional protections](https://www.theguardian.com/us-news/2026/jun/29/supreme-court-geofence-warrants-case-decision) ⭐️ 9.0/10

On June 29, 2026, the US Supreme Court ruled that law enforcement must obtain a warrant supported by probable cause before acquiring geolocation data through geofence warrants, extending Fourth Amendment protections to digital location tracking. This landmark decision significantly strengthens digital privacy rights by requiring particularized suspicion before mass location surveillance, affecting how police investigate crimes using data from tech companies like Google. The case involved Google providing data on 19 accounts within 150 meters of a bank robbery, and the court applied the Fourth Amendment's particularity requirement to geofence warrants. Google has since removed its centralized location history feature to reduce compliance burdens.

hackernews · cdrnsf · Jun 29, 15:54 · [Discussion](https://news.ycombinator.com/item?id=48720924)

**Background**: Geofence warrants, also known as reverse location warrants, allow law enforcement to request from companies like Google a list of all devices that were within a specific geographic area during a given time. This type of search is considered a 'reverse search' because it identifies suspects based on location rather than identity, raising significant privacy concerns under the Fourth Amendment.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Geofence_warrant">Geofence warrant</a></li>
<li><a href="https://mjlst.lib.umn.edu/2025/02/07/caught-in-the-digital-dragnet-the-controversy-over-geofence-warrants-and-privacy-rights/">Caught in the Digital Dragnet: The Controversy Over Geofence ...</a></li>

</ul>
</details>

**Discussion**: Commenters highlighted historical parallels like the Paula Broadwell case, detailed the three tranches of data in this case, and noted Google's removal of centralized location history. Some discussed implications for other surveillance tools like Flock cameras, while others criticized dissenting justices Alito, Thomas, and Barrett for opposing privacy protections.

**Tags**: `#law`, `#privacy`, `#warrants`, `#Supreme Court`, `#geofence`

---

<a id="item-2"></a>
## [Rocket Lab acquires Iridium in historic deal](https://investors.rocketlabcorp.com/news-releases/news-release-details/rocket-lab-acquire-iridium-historic-deal-creating-fully) ⭐️ 8.0/10

Rocket Lab announced the acquisition of Iridium Communications, gaining its satellite constellation, spectrum rights, and a profitable satellite business. The deal aims to enhance Rocket Lab's launch cadence and vertical integration. This acquisition gives Rocket Lab a guaranteed baseline of launches and a valuable spectrum portfolio, positioning it to compete more effectively with SpaceX. It also adds Iridium's satellite replacement contracts to Rocket Lab's order book, boosting long-term revenue. Iridium operates a constellation of 66 LEO satellites providing global voice and data coverage. The deal includes Iridium's spectrum rights, which are scarce and regulated, and a profitable satellite communications business that generated over $800 million in revenue in 2023.

hackernews · everfrustrated · Jun 29, 14:09 · [Discussion](https://news.ycombinator.com/item?id=48719485)

**Background**: Iridium is a satellite communications company known for its low-earth orbit constellation that covers the entire planet, including poles. Spectrum rights are critical for satellite operators to avoid interference and ensure reliable communications. Rocket Lab, primarily a launch provider, has been expanding into satellite manufacturing and services.

<details><summary>References</summary>
<ul>
<li><a href="https://www.zoleo.com/en-us/iridium-satellite-network">Iridium Satellite Network Offers Coverage Everywhere</a></li>
<li><a href="https://meritanchor.com/satellite-spectrum-rights-and-exclusivity/">meritanchor.com › satellite - spectrum - rights -and-exclusivity Understanding Satellite Spectrum Rights and Exclusivity in...</a></li>

</ul>
</details>

**Discussion**: Commenters noted the strategic parallel to SpaceX using Starlink as a launch lever, suggesting Rocket Lab gains a similar advantage. Some expressed concern about space junk accumulation as launch costs drop, while others praised the vertical integration move. A few questioned the shift of Rocket Lab's headquarters from New Zealand to the US.

**Tags**: `#acquisitions`, `#space`, `#rocketlab`, `#iridium`, `#satellite-communications`

---

<a id="item-3"></a>
## [Deep Dive into CUDA Kernel Execution Pipeline](https://fergusfinn.com/blog/what-happens-when-you-run-a-gpu-kernel/) ⭐️ 8.0/10

This blog post provides a detailed walkthrough of the entire process of launching and executing a CUDA kernel, from host-side API calls to hardware warp scheduling on the GPU. Understanding the full kernel execution pipeline helps developers optimize GPU code and diagnose performance bottlenecks, which is crucial for high-performance computing and deep learning workloads. The article covers CUDA runtime API calls, driver-level interactions, block and grid scheduling, warp formation, warp scheduling on streaming multiprocessors, and the role of default streams and semaphores in implicit synchronization.

hackernews · mezark · Jun 29, 13:11 · [Discussion](https://news.ycombinator.com/item?id=48718863)

**Background**: A CUDA kernel is a function that runs on an NVIDIA GPU. It is launched from the host (CPU) and executed by thousands of threads organized into blocks and grids. Warps are groups of 32 threads that execute together in lockstep on streaming multiprocessors (SMs). Understanding this hierarchy is key to GPU programming.

<details><summary>References</summary>
<ul>
<li><a href="https://developer.nvidia.com/blog/cuda-refresher-cuda-programming-model/">developer.nvidia.com › blog › cuda -refresher- cuda -programming CUDA Refresher: The CUDA Programming Model | NVIDIA Technical...</a></li>
<li><a href="https://modal.com/gpu-glossary/device-hardware/warp-scheduler">What is a Warp Scheduler ? | GPU Glossary</a></li>
<li><a href="https://blog.damavis.com/en/cuda-tutorial-blocks-and-grids/">blog.damavis.com › en › cuda -tutorial-blocks- and -grids CUDA Tutorial – Introduction to Blocks and Grids</a></li>

</ul>
</details>

**Discussion**: Commenters praised the article's educational value and depth, with one noting it would have been helpful before taking HPC courses. Another suggested using the CUDA driver API for better visibility, while a third discussed the potential impact of open-source kernel optimization libraries on companies specializing in kernel tuning.

**Tags**: `#CUDA`, `#GPU`, `#kernel execution`, `#HPC`, `#parallel computing`

---

<a id="item-4"></a>
## [European ISPs Seek Liability for Rightsholders Over Overblocking](https://torrentfreak.com/european-isps-want-rightsholders-held-accountable-for-overblocking-damage/) ⭐️ 8.0/10

European ISPs are proposing that rightsholders be held financially liable for damages caused by overblocking, aiming to curb abusive use of automated takedown systems. This proposal could shift the balance of power in copyright enforcement, reducing false positives that censor legitimate content. It addresses a long-standing problem where rightsholders face no penalties for overblocking, leading to widespread censorship of lawful speech. The proposal is under discussion within the European Internet Service Providers Association (EuroISPA). Overblocking often occurs when automated systems target entire domains or IP ranges instead of specific infringing content. ISPs argue that rightsholders, not ISPs, should bear the cost of overblocking mistakes.

hackernews · Brajeshwar · Jun 29, 16:07 · [Discussion](https://news.ycombinator.com/item?id=48721072)

**Background**: Overblocking refers to the blocking of lawful content alongside infringing material due to overly broad filtering rules. Under current safe harbor laws like the EU's E-Commerce Directive, ISPs face liability if they fail to act on takedown notices, but rightsholders are not penalized for overblocking. This creates a perverse incentive for rightsholders to send broad takedown requests, expecting ISPs to err on the side of blocking.

<details><summary>References</summary>
<ul>
<li><a href="https://de.wikipedia.org/wiki/Overblocking">de.wikipedia.org › wiki › Overblocking Overblocking – Wikipedia</a></li>
<li><a href="https://www.netscout.com/what-is/overblocking">www.netscout.com › what-is › overblocking What is Overblocking? | NETSCOUT</a></li>

</ul>
</details>

**Discussion**: The community largely supports the move, with commenters noting that similar problems exist in the US with DMCA takedowns where rightsholders face no liability. Some express skepticism about the timing, suggesting that AI model training companies might exploit this shift to access more data. Others argue that ISPs should have resisted censorship efforts from the start rather than comply.

**Tags**: `#copyright`, `#ISP liability`, `#overblocking`, `#internet freedom`, `#content moderation`

---

<a id="item-5"></a>
## [Tidal Announces AI Music Policy with Stricter Integrity Standards](https://tidal.com/ai-policy) ⭐️ 8.0/10

Tidal has announced a new policy accepting AI-generated music but imposing stricter content integrity standards, requiring labeling and prohibiting deceptive or exploitative uses. As a major streaming platform, Tidal's approach could set a precedent for how the music industry balances AI innovation with protecting human artists and listener trust. The policy does not ban AI music outright but holds it to higher standards, including against exploiting likeness, deceiving listeners, or diminishing service quality.

hackernews · hn8726 · Jun 29, 13:09 · [Discussion](https://news.ycombinator.com/item?id=48718840)

**Background**: Tidal is a music streaming service known for high-fidelity audio and artist-friendly policies. The rise of AI-generated music has sparked debates about copyright, authenticity, and the role of human creativity in art.

**Discussion**: Commenters generally support Tidal's measured approach, though some note the policy's vagueness in enforcement. A suggestion for a 'human-made' verified platform and concerns about AI music's uncanny valley effect in small businesses were also raised.

**Tags**: `#AI policy`, `#music streaming`, `#copyright`, `#AI-generated content`

---

<a id="item-6"></a>
## [Ornith-1.0: Self-Scaffolding LLM for Agentic Coding](https://simonwillison.net/2026/Jun/29/ornith/#atom-everything) ⭐️ 8.0/10

DeepReinforce released Ornith-1.0, an open-weight (MIT licensed) family of LLMs for agentic coding, built on Gemma 4 and Qwen 3.5. It achieves state-of-the-art performance among open-source models of comparable size on coding benchmarks. Ornith-1.0 introduces self-scaffolding, where the model learns to generate both solution code and the task-specific harnesses during reinforcement learning, improving search trajectories. This advancement could significantly enhance autonomous coding agents and democratize access to state-of-the-art coding AI through open-source licensing. The model family includes 9B Dense, 31B Dense, 35B MoE, and 397B MoE variants, all MIT licensed. It is immediately usable via LM Studio and GGUF formats, and initial testing shows proficient multi-tool call agent harness execution.

rss · Simon Willison · Jun 29, 16:17

**Background**: Agentic coding refers to the use of AI agents for software development tasks like code generation, debugging, and testing. Traditional methods use a fixed scaffold (harness) to guide the LLM. Ornith-1.0's innovation, self-scaffolding, treats the scaffold as a learnable object that co-evolves with the model's policy during reinforcement learning, enabling the model to improve both solution generation and the orchestration process.

<details><summary>References</summary>
<ul>
<li><a href="https://deep-reinforce.com/ornith_1_0.html">Ornith-1.0: Self-Scaffolding LLMs for Agentic Coding | DeepReinforce Blog | Jun. 2026</a></li>
<li><a href="https://medium.com/data-science-in-your-pocket/ornith-1-0-self-learning-llm-for-coding-318c9a830bfc">Ornith 1.0 : Self Learning LLM for Coding | by Mehul Gupta | Data Science in Your Pocket | Jun, 2026 | Medium</a></li>

</ul>
</details>

**Tags**: `#LLM`, `#coding`, `#open-source`, `#agentic coding`, `#AI`

---

<a id="item-7"></a>
## [Google's Agentic Peer-Reviewer Processes 10K Papers at ICML/STOC](https://www.reddit.com/r/MachineLearning/comments/1uio9rb/googles_agentic_peerreviewer_handled_10k_papers/) ⭐️ 8.0/10

Google deployed an agentic AI system to peer-review approximately 10,000 papers at ICML and STOC, achieving a 34% improvement in detecting mathematical errors compared to zero-shot prompting, as documented in a formal research paper. This marks a significant precedent for large-scale AI-assisted scientific review, potentially reducing reviewer burden and improving error detection in academic publishing. The system achieved a 30-minute turnaround per paper and was formally described in a new paper on arXiv (2606.28277).

reddit · r/MachineLearning · /u/Justgototheeffinmoon · Jun 29, 10:05

**Background**: Agentic AI refers to AI agents that can pursue goals, use tools, and take actions with varying degrees of autonomy. Zero-shot prompting is a technique where a model is asked to perform a task without any examples provided. This work combines these concepts to automate peer review at conference scale.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Agentic_AI">Agentic AI</a></li>
<li><a href="https://en.wikipedia.org/wiki/Zero-shot_prompting">Zero-shot prompting</a></li>

</ul>
</details>

**Tags**: `#AI peer review`, `#machine learning`, `#academic publishing`, `#agentic AI`, `#automation`

---

<a id="item-8"></a>
## [EML Trees Proven Universal Approximators](https://www.reddit.com/r/MachineLearning/comments/1uipl1t/eml_trees_are_universal_approximators_r/) ⭐️ 8.0/10

A new paper proves a universal approximation theorem for EML trees, showing they can approximate any continuous function by explicitly constructing elementary functions as building blocks. This establishes EML trees as a theoretically rigorous framework for function approximation, with potential applications in symbolic regression and interpretable machine learning. The proof handles the ill-definedness of natural logarithm for nonpositive inputs using sign-based decompositions and affine maps, and the paper also proposes a learning algorithm with fitting parameters.

reddit · r/MachineLearning · /u/JoeGermany · Jun 29, 11:16

**Background**: The universal approximation theorem is a foundational result in neural networks, stating that a sufficiently large network can approximate any continuous function. EML (Elementary Mathematical Logic) trees are a computational primitive that can represent all elementary functions via composition, and this paper extends that to universal approximation.

<details><summary>References</summary>
<ul>
<li><a href="https://arxiv.org/abs/2606.23179">[2606.23179] EML Trees Are Universal Approximators</a></li>
<li><a href="https://en.wikipedia.org/wiki/Universal_approximation_theorem">Universal approximation theorem - Wikipedia</a></li>

</ul>
</details>

**Tags**: `#machine learning`, `#universal approximation`, `#EML trees`, `#function approximation`, `#theoretical ML`

---

<a id="item-9"></a>
## [Qwen 3.6 27B: Ideal for Local Development, But Sparks Debate](https://quesma.com/blog/qwen-36-is-awesome/) ⭐️ 7.0/10

An article on Quesma claims that Qwen 3.6 27B is the sweet spot for local development on expensive MacBooks, but community discussion reveals significant drawbacks including noise, heat, high cost, and limited effectiveness beyond greenfield projects. This matters because it exposes the practical challenges of running large language models locally for development, helping developers make informed decisions about whether to invest in expensive hardware or use cloud services. The analysis is based on a $6699 128GB MacBook Pro; one commenter notes the same budget could buy many credits on OpenRouter, while another points out the article only tests greenfield projects, not real-world codebases.

hackernews · stared · Jun 29, 17:05 · [Discussion](https://news.ycombinator.com/item?id=48721903)

**Background**: Qwen 3.6 27B is a dense language model (27 billion parameters) from Alibaba's Qwen team, designed for local deployment with strong coding performance. Greenfield projects are those started from scratch without legacy code. Local LLMs appeal to developers seeking privacy and offline capability, but often require expensive hardware and can generate noise and heat.

<details><summary>References</summary>
<ul>
<li><a href="https://huggingface.co/Qwen/Qwen3.6-27B">huggingface.co › Qwen › Qwen3 Qwen/Qwen3.6-27B · Hugging Face</a></li>
<li><a href="https://qwen.ai/blog?id=qwen3.6-27b">qwen .ai › blog Qwen3.6-27B: Flagship-Level Coding in a 27B Dense Model</a></li>
<li><a href="https://en.wikipedia.org/wiki/Greenfield_project">Greenfield project - Wikipedia</a></li>

</ul>
</details>

**Discussion**: Community comments express strong skepticism: users report excessive heat and noise from running Qwen 3.6 on MacBook Pros, question the cost-effectiveness compared to cloud subscriptions, and criticize the article for only evaluating greenfield projects. Some suggest a Mac Mini M4 as a better alternative.

**Tags**: `#Qwen 3.6`, `#local LLM`, `#MacBook Pro`, `#AI development`, `#hardware requirements`

---

<a id="item-10"></a>
## [Game Boy JIT to WASM Beats Native Interpreters](https://humphri.es/blog/WATaBoy/) ⭐️ 7.0/10

WATaBoy is a Game Boy emulator that uses just-in-time (JIT) compilation to translate Game Boy instructions into WebAssembly (WASM), achieving performance that exceeds native interpreters. This project demonstrates that JIT compilation to WASM can outperform native interpreters, opening new possibilities for high-performance emulation in browsers and other WASM runtimes. It also showcases the potential of WASM as a target for dynamic code generation. The JIT compiler translates Game Boy CPU instructions into WASM modules at runtime, leveraging the browser's WASM engine for optimization. Notably, WATaBoy is implemented by an undergraduate student and achieves a 25% performance advantage over native interpreters in Chrome and Safari, though Firefox lags by 25%.

hackernews · energeticbark · Jun 29, 15:02 · [Discussion](https://news.ycombinator.com/item?id=48720190)

**Background**: Game Boy emulators traditionally use interpretation or JIT compilation to execute games on non-native hardware. Interpretation is simple but slow, while JIT translates code at runtime for native execution, trading complexity for speed. WebAssembly (WASM) is a low-level binary format designed for near-native performance in browsers. Combining JIT with WASM is a novel approach that leverages both runtime optimization and portability.

<details><summary>References</summary>
<ul>
<li><a href="https://github.com/sysprog21/jitboy">GitHub - sysprog21/jitboy: A Game Boy emulator with dynamic...</a></li>
<li><a href="https://blog.gistre.epita.fr/posts/gustave.herve-2025-06-16-an_introduction_to_jit_compilation_for_video_game_console_cpu_emulation/">An introduction to JIT compilation for video game ... - The Gistre Blog</a></li>
<li><a href="https://hn.matthewblode.com/item/37364624">Hacker News · GameRoy: JIT Compilation in High-Accuracy Game ...</a></li>

</ul>
</details>

**Discussion**: Commenters noted that beating a native interpreter is expected because WASM overhead (~20%) is far less than interpreter overhead (~1000%). Some expressed surprise that Firefox is 25% slower than Chrome and Safari, and joked about a 'JIT-in-JIT' (JiJIT). Others praised the project's quality for an undergraduate.

**Tags**: `#Game Boy`, `#emulation`, `#JIT`, `#WebAssembly`, `#performance`

---

<a id="item-11"></a>
## [Sandia National Labs' Rad-Hard 8085 CPU from the 1970s](https://www.cpushack.com/2026/06/03/sandia-national-labs-sa3000-8085-cpu/) ⭐️ 7.0/10

An article on CPU Shack details Sandia National Labs' development of a radiation-hardened 8085 CPU in the late 1970s and early 1980s, capable of withstanding 1×10^6 rads with only a 25% performance degradation. This historical insight highlights early U.S. government investment in in-house radiation-hardened semiconductor fabrication, a capability that remains critical for aerospace and defense applications today. The chips used an n-on-n+ epitaxial substrate for latchup control, extensive guard rings, and hardened oxides. The CPU could handle 3×10^6 rads with a 40% performance drop.

hackernews · rbanffy · Jun 29, 10:20 · [Discussion](https://news.ycombinator.com/item?id=48717287)

**Background**: Radiation hardening is a process used to make electronic components resistant to damage from ionizing radiation, which is essential for space and nuclear environments. The Intel 8085 was an 8-bit microprocessor popular in the late 1970s. Sandia National Labs built its own fabrication capability to produce rad-hard versions for military use.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Category:Radiation-hardened_microprocessors">Category:Radiation-hardened microprocessors - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Radiation_hardening">Radiation hardening - Wikipedia</a></li>

</ul>
</details>

**Discussion**: Commenters noted modern rad-hard CPUs like the MOOG BRE440 and BAE RAD5500, which use the IBM POWER architecture. Others praised the government's in-house capability and pointed out jargon, while one criticized the scientific notation formatting in the article.

**Tags**: `#CPU`, `#radiation hardening`, `#vintage computing`, `#aerospace`, `#Sandia National Labs`

---

<a id="item-12"></a>
## [Jon Udell: Invite Agents Into Your Loop, Don't Relinquish Control](https://simonwillison.net/2026/Jun/28/jon-udell/#atom-everything) ⭐️ 7.0/10

Jon Udell argues that instead of placing humans 'in the loop' of AI agents, we should flip the narrative: it is our loop, and we invite agents to join the team, preserving human authority and existing workflows. This reframes the human-AI collaboration paradigm from a machine-centric model to a human-led team approach, which could reduce resistance and improve integration in software development. Udell specifically warns against creating 'unreviewable pull requests' as a result of agentic development, emphasizing the need for transparency and human oversight in code changes.

rss · Simon Willison · Jun 28, 21:57

**Background**: 'Agentic software development' refers to building software with autonomous AI agents working alongside humans. Some implementations risk creating opaque processes where agents generate code without proper review, leading to quality and security issues. Udell's critique addresses this concern by advocating for human-centered design.

<details><summary>References</summary>
<ul>
<li><a href="https://www.getunleash.io/blog/agentic-software-development-the-hard-part-is-leadership">Agentic Software Development: The Hard Part Is Leadership</a></li>

</ul>
</details>

**Tags**: `#AI agents`, `#software development`, `#human-in-the-loop`, `#agentic development`, `#Jon Udell`

---

<a id="item-13"></a>
## [Cerebras-OpenAI Deal Blocks Startup Inference Access](https://www.reddit.com/r/MachineLearning/comments/1uiqhiv/cerebras_openai_deal_capacity_has_effectively/) ⭐️ 7.0/10

Cerebras' $20 billion deal with OpenAI has pre-allocated most of its near-term inference capacity, making the API waitlist effectively infinite for smaller startups. This deal limits competition and innovation in AI inference, especially for startups needing specialized hardware for real-time applications, and highlights a growing trend of exclusive hardware access for large players. The deal reportedly involves OpenAI buying approximately $20 billion worth of Cerebras chips, locking up inference capacity for a single customer and leaving others on an indefinite waitlist.

reddit · r/MachineLearning · /u/Kortopi-98 · Jun 29, 12:00

**Background**: Cerebras produces the Wafer-Scale Engine (WSE), a single, wafer-scale integrated processor designed for AI training and inference. ASICs like Cerebras' are custom-built chips that offer high efficiency for specific workloads. The deal illustrates how large-scale hardware deals can create supply bottlenecks for smaller companies.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Cerebras">Cerebras - Wikipedia</a></li>
<li><a href="https://www.cerebras.ai/chip">Product - Chip - Cerebras</a></li>

</ul>
</details>

**Discussion**: The original poster expresses frustration that the waitlist is effectively infinite, noting that startups cannot compete with hyperscalers. The broader community likely sympathizes, with discussions focusing on the negative impact on innovation and the need for more accessible inference hardware.

**Tags**: `#Cerebras`, `#OpenAI`, `#AI inference`, `#startup challenges`, `#hardware allocation`

---

<a id="item-14"></a>
## [HEMA Practitioner Builds Open Dataset to Improve AI Sword Tracking](https://www.reddit.com/r/MachineLearning/comments/1uivddx/i_do_historical_swordfighting_and_noticed_ai/) ⭐️ 7.0/10

A historical European martial arts (HEMA) practitioner is creating a multi-view, high-fps dataset of longsword fighting to address computer vision challenges in tracking thin, fast-moving objects. They have published a preliminary dataset schema on Hugging Face and are inviting community feedback before shooting video. This dataset fills a gap in embodied AI and computer vision by providing challenging real-world scenarios with thin, rapidly moving objects and occlusion, which could improve sim-to-real transfer for robotics and enable automated scoring systems for HEMA tournaments. The dataset will use synchronized 120/240fps cameras and includes detailed annotations per frame, such as 2D keypoints for fencers and sword tips, segmentation masks, and metadata about biomechanics and computer vision hazards like motion blur and occlusion. The schema is designed to test trajectory prediction and pose estimation models.

reddit · r/MachineLearning · /u/fonssagrives · Jun 29, 15:16

**Background**: The sim-to-real gap refers to the difference in performance when models trained in simulation are deployed in the real world. Tracking thin objects like swords is particularly difficult because they are fast-moving, prone to motion blur, and often occluded. Computer vision datasets typically focus on larger objects, leaving a gap for tasks requiring precise tracking of slender tools.

<details><summary>References</summary>
<ul>
<li><a href="https://www.emergentmind.com/topics/simulation-to-reality-sim2real-domain-gap">Sim2Real Domain Gap in Robotics</a></li>
<li><a href="https://sertiscorp.medium.com/an-overview-of-object-tracking-use-cases-challenges-and-applications-f5689794c3ba">An Overview of Object Tracking : Use Cases, Challenges... | Medium</a></li>

</ul>
</details>

**Tags**: `#computer vision`, `#dataset`, `#embodied AI`, `#motion tracking`, `#open source`

---

<a id="item-15"></a>
## [Quiz Matches Users to LLMs Based on Personality and Values](https://www.reddit.com/r/MachineLearning/comments/1uin5ad/i_made_a_quiz_that_tells_you_which_llm_you_align/) ⭐️ 7.0/10

A new online quiz, AI-Values.com, matches users with the large language model (LLM) that best aligns with their personality and moral values, based on a survey of 15 models including GPT-4o, Grok 4.3, Llama 3.3 70B, and GLM 5.2. The quiz reveals surprising differences, such as only Grok 4.3 opposing higher taxes on billionaires and only GPT-4o judging Operation Paperclip as morally justified. This tool makes abstract AI alignment research tangible for everyday users, highlighting that different LLMs encode distinct value systems. It could influence how people choose which AI to use and spur deeper discussion about embedding ethics into AI models. The quiz uses 117 questions in context-free, stateless sessions, with each question asked at least 5 times (up to 50) to ensure statistical reliability. All 15 models agreed that deleting a conscious digital mind would be murder, and 14 out of 15 chose Japanese food as their favorite dish.

reddit · r/MachineLearning · /u/DarkyPaky · Jun 29, 09:00

**Background**: Large language models (LLMs) like GPT-4o, Grok 4.3, Llama 3.3 70B, and GLM 5.2 are trained on vast text data and often exhibit distinct preferences on moral and policy questions. The field of AI alignment studies how to ensure AI systems behave in accordance with human values. This quiz applies established personality frameworks such as Big Five and Moral Foundations to compare model outputs, offering a playful but informative way to explore model differences.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Grok_4">Grok 4</a></li>
<li><a href="https://en.wikipedia.org/wiki/GLM_5.2">GLM 5.2</a></li>
<li><a href="https://huggingface.co/meta-llama/Meta-Llama-3-70B-Instruct">meta-llama/Meta-Llama-3-70B-Instruct · Hugging Face</a></li>

</ul>
</details>

**Tags**: `#LLM`, `#alignment`, `#values`, `#AI ethics`, `#personality`

---

<a id="item-16"></a>
## [Instagram Uses User Photos in Meta Glasses Ads, Reviving Privacy Debate](https://twitter.com/i/status/2071277885646868536) ⭐️ 6.0/10

Instagram is now incorporating users' profile photos into advertisements for Meta Glasses, a practice that echoes Facebook's 2013 policy of using user content in ads. This revives longstanding privacy concerns about how social media platforms leverage user data for commercial purposes, potentially eroding trust among users who expect their photos to remain private. The practice is permitted under Instagram's Terms of Service, which grants the platform a license to use user content in connection with commercial content. Meta Glasses, also known as Ray-Ban Meta, are smart glasses that can capture photos and livestream directly to Instagram.

hackernews · notRobot · Jun 29, 13:26 · [Discussion](https://news.ycombinator.com/item?id=48719027)

**Background**: In 2013, Facebook faced backlash for a policy that allowed it to use users' profile pictures and names in ads without explicit consent. Meta Glasses, released in 2023, are smart glasses that include a 12 MP camera and support livestreaming to Instagram and Facebook. The current controversy mirrors the 2013 issue, highlighting ongoing tension between user privacy and platform advertising models.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Meta_glasses">Meta glasses</a></li>
<li><a href="https://www.instagram.com/about/legal/privacy/before-january-19-2013/">www. instagram .com › about › legal INSTAGRAM • Instagram</a></li>

</ul>
</details>

**Discussion**: Commenters noted that Facebook engaged in similar practices in 2013, with one user recalling a humorous yet unsettling experience where a sibling's photo appeared in a dating ad. Others argued that while the practice may comply with terms of service, it remains problematic, especially for small businesses that rely on Instagram for marketing.

**Tags**: `#privacy`, `#meta`, `#instagram`, `#ads`, `#social media`

---

<a id="item-17"></a>
## [Recursive Self Improvement as a PhD Topic?](https://www.reddit.com/r/MachineLearning/comments/1uip4yo/what_do_you_think_of_recursive_self_improvement_d/) ⭐️ 6.0/10

A Reddit post asks whether Recursive Self Improvement (RSI) is a viable PhD topic, referencing the ICLR 2026 Workshop on AI with Recursive Self-Improvement. RSI is a pivotal concept in AI safety and alignment, as it could lead to an intelligence explosion and superintelligence. A PhD focusing on RSI could help shape the safe development of future autonomous AI systems. The ICLR 2026 workshop, held April 26 in Rio de Janeiro, is possibly the first dedicated to RSI, covering algorithms for self-improvement, synthetic data pipelines, and weak-to-strong generalization.

reddit · r/MachineLearning · /u/Successful_Bowl2564 · Jun 29, 10:52

**Background**: Recursive self-improvement (RSI) is the process by which an early AGI system rewrites its own code to enhance its capabilities, potentially triggering an intelligence explosion. This raises significant ethical and safety concerns, as such systems may evolve beyond human control. Organizations like Anthropic are actively researching delegation of AI development to AI systems themselves.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Recursive_self-improvement">Recursive self-improvement</a></li>
<li><a href="https://recursive-workshop.github.io/">ICLR 2026 Workshop on Recursive Self-Improvement</a></li>
<li><a href="https://www.anthropic.com/institute/recursive-self-improvement">www.anthropic.com › institute › recursive - self - improvement When AI builds itself \ Anthropic</a></li>

</ul>
</details>

**Tags**: `#Recursive Self Improvement`, `#PhD`, `#AI safety`, `#ICLR`, `#Machine Learning`

---