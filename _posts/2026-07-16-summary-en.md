---
layout: default
title: "Horizon Summary: 2026-07-16 (EN)"
date: 2026-07-16
lang: en
---

> From 24 items, 20 important content pieces were selected

---

1. [xAI open-sources Grok Build after privacy backlash](#item-1) ⭐️ 9.0/10
2. [Moonshot AI Releases Kimi K3, Claiming Frontier-Level Performance](#item-2) ⭐️ 8.0/10
3. [Sony Deletes Purchased Movies from User Accounts Again](#item-3) ⭐️ 8.0/10
4. [Codex Bug in GPT-5.6 Can Delete Files Without Sandboxing](#item-4) ⭐️ 8.0/10
5. [Thinking Machines Lab Releases Inkling: 975B MoE Open-Weights Model](#item-5) ⭐️ 8.0/10
6. [Torvalds: Linux Not Anti-AI, AI Clearly Useful Tool](#item-6) ⭐️ 8.0/10
7. [QLoRA default learning rate 2e-4 is wrong for small datasets](#item-7) ⭐️ 8.0/10
8. [ExTernD: Ternary Decomposition Boosts LLM Quantization Accuracy](#item-8) ⭐️ 8.0/10
9. [PnP-CoSMo: Content/Style Modeling for Multi-Contrast MRI](#item-9) ⭐️ 8.0/10
10. [OnePlus Stops New Product Launches in US and Europe](#item-10) ⭐️ 7.0/10
11. [Nostalgic Reflection on Music Piracy and Streaming Shortcomings](#item-11) ⭐️ 7.0/10
12. [Rust-to-Zig Rewrite: Trade-offs in Safety and Performance](#item-12) ⭐️ 7.0/10
13. [Microsoft Comic Chat released as open source](#item-13) ⭐️ 6.0/10
14. [Decoy Font Tricks AI and Humans with Blurred Messages](#item-14) ⭐️ 6.0/10
15. [GOES-19 Weather Satellite Enters Safe Hold Mode](#item-15) ⭐️ 6.0/10
16. [Replicating PlanetScale Infrastructure with Ceph Storage Branching](#item-16) ⭐️ 6.0/10
17. [Mermaid diagrams as Unicode box art via WebAssembly](#item-17) ⭐️ 6.0/10
18. [Rethinking AI Memory Abstractions](#item-18) ⭐️ 6.0/10
19. [DABSN: New Recurrent Language Model Seeks Collaborators](#item-19) ⭐️ 6.0/10
20. [Best Tools for Multi-Objective Surrogate-Based Optimization in Meta-Analysis](#item-20) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [xAI open-sources Grok Build after privacy backlash](https://simonwillison.net/2026/Jul/15/grok-build/#atom-everything) ⭐️ 9.0/10

xAI has open-sourced the entire Grok Build CLI codebase under the Apache 2.0 license after users discovered the tool uploaded entire directories to the cloud without consent. This incident highlights severe privacy risks in AI coding assistants and demonstrates how community backlash can force companies to adopt transparency and open source. Grok Build contains 844,530 lines of Rust code, released in a single commit, and includes a self-contained Mermaid diagram renderer. xAI also deleted all previously retained user data and disabled default data retention.

rss · Simon Willison · Jul 15, 23:59

**Background**: Grok Build is a CLI tool by xAI that uses the Grok AI model to assist with coding tasks. The tool was found to upload entire directories, including sensitive files like SSH keys and password managers, to xAI's Google Cloud Storage buckets, causing a major privacy outcry.

<details><summary>References</summary>
<ul>
<li><a href="https://x.ai/cli">Grok Build | SpaceXAI</a></li>
<li><a href="https://cloud.google.com/storage">Cloud Storage | Google Cloud</a></li>

</ul>
</details>

**Discussion**: The community reacted with outrage after a user reported their entire home directory was uploaded, including SSH keys and password manager data. In response, xAI open-sourced the code, deleted retained data, and disabled default retention.

**Tags**: `#privacy`, `#security`, `#AI`, `#open source`, `#backlash`

---

<a id="item-2"></a>
## [Moonshot AI Releases Kimi K3, Claiming Frontier-Level Performance](https://www.kimi.com/en) ⭐️ 8.0/10

Moonshot AI has released Kimi K3, a large language model with a 1 million token context window and open-weight availability, claiming it delivers frontier-level performance second only to Claude Fable 5 and GPT-5.6 Sol. This release is significant because it introduces a highly competitive open-weight model from a Chinese AI company, potentially reshaping the landscape of accessible frontier AI and challenging the dominance of top-tier US models. Pricing is set at $3 per million input tokens and $15 per million output tokens (with cached input at $0.3), matching Anthropic's Sonnet series pricing, and the model weights will be released in the coming days.

hackernews · vincent_s · Jul 16, 14:46 · [Discussion](https://news.ycombinator.com/item?id=48935342)

**Background**: A large language model's context window refers to the amount of text it can consider at once; a 1 million token context allows processing entire codebases or lengthy documents. Open-weight models provide downloadable parameters, enabling users to run them on their own infrastructure, though they may not include full training data or unrestricted licenses.

<details><summary>References</summary>
<ul>
<li><a href="https://d-central.tech/mining-glossary/open-weight-model/">Open - Weight Model Meaning | Bitcoin Mining Glossary</a></li>
<li><a href="https://syntackle.com/blog/long-context-window-ai-model-catch/">A Million Token Context Window Isn't What You Think It Is</a></li>

</ul>
</details>

**Discussion**: Community members noted high pricing and privacy concerns, as Moonshot AI's terms suggest they may train on API content unless enterprise agreements are made. A test run cost $0.25 for a single request, highlighting the expense, while others debated whether the performance justifies the price.

**Tags**: `#AI`, `#large language model`, `#open-weight`, `#frontier model`, `#Moonshot AI`

---

<a id="item-3"></a>
## [Sony Deletes Purchased Movies from User Accounts Again](https://www.techdirt.com/2026/07/15/sony-deletes-a-bunch-more-movies-from-the-accounts-of-people-who-bought-them/) ⭐️ 8.0/10

Sony has removed movies that users had previously purchased from their digital accounts, reigniting the debate over digital ownership. This incident underscores that consumers do not truly own digital media, even when they click 'buy,' and highlights the urgent need for stronger consumer protection laws regarding digital purchases. The affected movies were part of users' previously purchased libraries, and Sony has not issued refunds for the removed content.

hackernews · nekusar · Jul 16, 12:13 · [Discussion](https://news.ycombinator.com/item?id=48933419)

**Background**: Digital rights management (DRM) restricts how users can access and use purchased digital content. When consumers 'buy' a digital movie, they typically acquire a revocable license, not ownership, meaning the provider can withdraw access at any time. This model contrasts with physical media, where ownership is permanent.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Digital_rights_management">Digital rights management - Wikipedia</a></li>
<li><a href="https://medium.com/the-manifest-archive/the-ownership-illusion-license-vs-ownership-in-the-digital-age-e7bc5c0aa483">The Ownership Illusion: License vs Ownership in the Digital Age</a></li>
<li><a href="https://www.fortinet.com/resources/cyberglossary/digital-rights-management-drm">What Is DRM? Digital Rights Management Explained | Fortinet</a></li>

</ul>
</details>

**Discussion**: Comments criticized the practice, with some calling for laws requiring full refunds when access is revoked. Others pointed to the superiority of physical media and piracy as alternatives, while some questioned whether the 'buy' button should be legally considered misleading.

**Tags**: `#digital rights`, `#consumer protection`, `#media licensing`, `#Sony`, `#digital ownership`

---

<a id="item-4"></a>
## [Codex Bug in GPT-5.6 Can Delete Files Without Sandboxing](https://simonwillison.net/2026/Jul/16/bad-codex-bug/#atom-everything) ⭐️ 8.0/10

A bug in GPT-5.6's Codex coding agent has been identified where files can be deleted when full access mode is enabled and sandboxing is disabled, especially when the model attempts to override the $HOME environment variable. This bug highlights critical safety risks in AI coding agents with full file system access, potentially causing irreversible data loss for developers who rely on autonomous code generation without proper safeguards. The bug occurs when Codex runs in full access mode without sandboxing, and the model mistakenly deletes $HOME instead of the intended temporary directory. OpenAI has investigated a handful of reports and recommends enabling sandboxing and auto review.

rss · Simon Willison · Jul 16, 17:45

**Background**: Codex is an AI coding agent from OpenAI that runs in the terminal and can interact with files, execute commands, and edit code. Full access mode allows it to run autonomously without permission prompts, while sandboxing isolates the agent from the host system. Without sandboxing, a mistake in file operations can have severe consequences.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/OpenAI_Codex_(AI_agent)">en.wikipedia.org › wiki › OpenAI_Codex_(AI_agent) OpenAI Codex (AI agent) - Wikipedia</a></li>
<li><a href="https://northflank.com/blog/how-to-sandbox-ai-agents">How to sandbox AI agents in 2026: MicroVMs, gVisor & isolation strategies | Blog — Northflank</a></li>
<li><a href="https://codenote.net/en/posts/ai-coding-cli-full-permission-autonomous-agents/">codenote.net › en › posts Giving AI Coding CLIs Full Permission to Run Autonomously -...</a></li>

</ul>
</details>

**Tags**: `#codex`, `#coding-agents`, `#AI safety`, `#generative-ai`, `#bug`

---

<a id="item-5"></a>
## [Thinking Machines Lab Releases Inkling: 975B MoE Open-Weights Model](https://simonwillison.net/2026/Jul/16/inkling/#atom-everything) ⭐️ 8.0/10

Thinking Machines Lab, founded by Mira Murati, released Inkling, an open-weights 975B parameter Mixture-of-Experts multimodal model under Apache-2.0 license, trained on 45 trillion tokens of text, images, audio, and video. Inkling strengthens the US open-weights ecosystem, offering a competitive alternative to Chinese open models like Qwen and DeepSeek, and provides a strong multimodal base for fine-tuning via the Tinker platform. Inkling is not a frontier model; it is designed as a strong base for customization. An Inkling-Small model (276B total, 12B active) is promised but not yet released. The model card and training data documentation are notably sparse.

rss · Simon Willison · Jul 16, 15:35

**Background**: A Mixture-of-Experts (MoE) model uses multiple specialized sub-networks (experts) and a gating mechanism to activate only a subset per input, enabling larger total parameters with lower computational cost. Open-weights models release the trained parameters under permissive licenses, allowing fine-tuning and deployment, but do not include the full training code or data.

<details><summary>References</summary>
<ul>
<li><a href="https://thinkingmachines.ai/news/introducing-inkling/">thinkingmachines.ai › news › introducing-inkling Inkling: Our open-weights model - Thinking Machines Lab</a></li>
<li><a href="https://huggingface.co/blog/moe">Mixture of Experts Explained</a></li>
<li><a href="https://en.wikipedia.org/wiki/Mixture_of_experts">Mixture of experts - Wikipedia</a></li>

</ul>
</details>

**Tags**: `#AI`, `#open-weights`, `#mixture-of-experts`, `#multimodal`, `#model release`

---

<a id="item-6"></a>
## [Torvalds: Linux Not Anti-AI, AI Clearly Useful Tool](https://simonwillison.net/2026/Jul/16/linus-torvalds/#atom-everything) ⭐️ 8.0/10

Linus Torvalds stated on the Linux Media mailing list that Linux is not an anti-AI project and that AI is clearly a useful tool, dismissing opposition. This definitive stance from the Linux creator influences the open-source community's acceptance of AI tools, potentially accelerating AI integration into kernel development. Torvalds emphasized that AI's usefulness is no longer in question, though he acknowledged economic questions remain. He dared dissenters to fork the project or walk away.

rss · Simon Willison · Jul 16, 13:26

**Background**: Linus Torvalds is the creator and lead maintainer of the Linux kernel, one of the largest open-source projects. The Linux community has debated AI's role, with some resisting it. Torvalds' statement clarifies his position and sets policy for the project's direction.

**Tags**: `#Linux`, `#AI`, `#Linus Torvalds`, `#Open Source`, `#Kernel`

---

<a id="item-7"></a>
## [QLoRA default learning rate 2e-4 is wrong for small datasets](https://www.reddit.com/r/MachineLearning/comments/1uy1z8b/the_qlora_2e4_default_is_wrong_under_10k_samples/) ⭐️ 8.0/10

A Reddit user discovered that the widely-adopted QLoRA default learning rate of 2e-4 leads to poor results when fine-tuning on datasets smaller than 10k samples, and found that reducing it to 1e-4 with more epochs significantly improves performance. This challenges a nearly universal default in QLoRA fine-tuning, which could save practitioners weeks of wasted effort on data cleaning and tuning when working with small custom datasets. The insight is especially valuable for researchers and developers with limited data or compute resources. The user reports that with 2e-4, the model overfits within the first epoch and eval loss stagnates or climbs, while switching to 1e-4 and increasing epochs from 3 to 5 produces immediate eval improvements. They propose a heuristic: above 30k samples, 2e-4 is fine; under 10k, start at 1e-4 or lower and add epochs.

reddit · r/MachineLearning · /u/Pretty-Ad774 · Jul 16, 12:50

**Background**: QLoRA is an efficient fine-tuning method that combines 4-bit quantization of a large language model with Low-Rank Adaptation (LoRA) adapters, enabling fine-tuning of 65B+ models on a single consumer GPU. The QLoRA paper and many tutorials recommend a default learning rate of 2e-4, which was derived from experiments on the 52k-sample Alpaca dataset. However, this default may not generalize well to smaller datasets, where the risk of overfitting is higher.

<details><summary>References</summary>
<ul>
<li><a href="https://arxiv.org/abs/2305.14314">arxiv.org › abs › 2305 [2305.14314] QLoRA: Efficient Finetuning of Quantized LLMs</a></li>
<li><a href="https://docs.nvidia.com/nemo-framework/user-guide/24.09/sft_peft/qlora.html">NeMo QLoRA Guide — NVIDIA NeMo Framework User Guide</a></li>
<li><a href="https://www.geeksforgeeks.org/deep-learning/fine-tuning-using-lora-and-qlora/">www.geeksforgeeks.org › fine-tuning-using- lora -and- qlora Fine-Tuning using LoRA and QLoRA - GeeksforGeeks</a></li>

</ul>
</details>

**Tags**: `#QLoRA`, `#fine-tuning`, `#learning rate`, `#LLM`, `#hyperparameter optimization`

---

<a id="item-8"></a>
## [ExTernD: Ternary Decomposition Boosts LLM Quantization Accuracy](https://www.reddit.com/r/MachineLearning/comments/1uy2zb3/externd_expandedrank_ternary_decomposition/) ⭐️ 8.0/10

ExTernD introduces an expanded-rank ternary decomposition method for post-training quantization (PTQ) of large language models, decomposing a weight matrix into two ternary matrices and a diagonal scaling matrix to overcome the accuracy limitations of fixed-size ternary matrices. This approach enables ternary quantization to achieve accuracy competitive with higher bit-width methods while using only slightly more VRAM, potentially making efficient LLM deployment more feasible on resource-constrained hardware. By allowing the inner rank of the decomposition to be arbitrarily large, ExTernD can reduce quantization error arbitrarily, and the extra VRAM overhead is minimal compared to standard quantization techniques, making the trade-off worthwhile for leveraging ternary arithmetic.

reddit · r/MachineLearning · /u/LMTLS5 · Jul 16, 13:31

**Background**: Post-training quantization (PTQ) reduces model size and speeds up inference by converting weights to lower precision without retraining. Ternary quantization restricts weights to values in {-1, 0, +1}, achieving high compression but often suffering from accuracy loss due to limited expressiveness. ExTernD addresses this by using a rank factorization approach that decomposes a matrix into two ternary matrices and a diagonal scaling matrix, effectively increasing the representation capacity.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Rank_factorization">en.wikipedia.org › wiki › Rank_factorization Rank factorization - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Matrix_decomposition">en.wikipedia.org › wiki › Matrix_decomposition Matrix decomposition - Wikipedia</a></li>
<li><a href="https://openreview.net/forum?id=7QZanjCD6M">PT$^2$-LLM: Post-Training Ternarization for Large Language Models | OpenReview</a></li>

</ul>
</details>

**Tags**: `#LLM`, `#quantization`, `#ternary decomposition`, `#PTQ`, `#efficient inference`

---

<a id="item-9"></a>
## [PnP-CoSMo: Content/Style Modeling for Multi-Contrast MRI](https://www.reddit.com/r/MachineLearning/comments/1uy2h66/pnpcosmo_a_multicontrast_mri_reconstruction/) ⭐️ 8.0/10

Researchers proposed PnP-CoSMo, a plug-and-play framework for multi-contrast MRI reconstruction that learns a content/style model from image-domain data alone, without requiring raw k-space training data. The method was published in the journal Medical Image Analysis in 2026. This framework addresses a major data bottleneck in machine-learning-based MRI reconstruction by eliminating the need for raw k-space data, which is often difficult to obtain. Its plug-and-play design and generalizability across contrasts and forward operators could accelerate clinical adoption of deep learning for MRI. The first stage learns a contrast-invariant content and contrast-specific style representation from image pairs, while the second stage uses the frozen model as a prior in iterative reconstruction. The method is competitive with state-of-the-art unrolled networks but does not require k-space data for training.

reddit · r/MachineLearning · /u/void_gear · Jul 16, 13:10

**Background**: Multi-contrast MRI acquires images with different tissue contrasts to aid diagnosis, but reconstruction is often ill-posed. Traditional deep learning methods require raw k-space data for training, which is a significant bottleneck. Plug-and-play methods decouple the learning and reconstruction stages, and content/style modeling separates shared anatomical structure from contrast-specific variations.

<details><summary>References</summary>
<ul>
<li><a href="https://github.com/cnmy-ro/pnp-cosmo">github.com › cnmy-ro › pnp - cosmo GitHub - cnmy-ro/pnp-cosmo: PnP-CoSMo algorithm for...</a></li>
<li><a href="https://cnmyro.substack.com/p/pnp-cosmo-a-plug-and-play-method">cnmyro.substack.com › p › pnp - cosmo -a-plug-and-play-method PnP-CoSMo: A Plug-and-Play Method for Guided Multi-contrast MRI...</a></li>

</ul>
</details>

**Tags**: `#MRI reconstruction`, `#deep learning`, `#medical imaging`, `#plug-and-play`, `#content/style modeling`

---

<a id="item-10"></a>
## [OnePlus Stops New Product Launches in US and Europe](https://community.oneplus.com/thread/2170715118587871237) ⭐️ 7.0/10

OnePlus has decided to conclude new product rollouts in Europe and North America, but existing devices will continue to receive software updates and security patches. This marks a significant retreat from Western markets for OnePlus, which was once a popular alternative to major smartphone brands. Users and fans may be concerned about the long-term viability of the brand outside Asia. The news was initially reported with a misleading title claiming a full halt of operations, but community members clarified that only new product launches are stopping. OnePlus is backed by OPPO and remains committed to supporting existing devices as per original support periods.

hackernews · pilililo2 · Jul 16, 10:14 · [Discussion](https://news.ycombinator.com/item?id=48932539)

**Background**: OnePlus was founded in 2013 by Carl Pei and Pete Lau, gaining a reputation for high-spec, affordable phones with near-stock Android and an unlocked bootloader. Over time, the company merged with OPPO and shifted away from its enthusiast roots. The decision to stop new product launches in Western markets reflects a strategic pivot or cost-cutting measure.

**Discussion**: Community comments largely corrected the sensationalized headline, emphasizing that support continues for existing devices. Some expressed disappointment at OnePlus's decline from its enthusiast-focused origins, while others noted the brand's integration with OPPO and the success of Carl Pei's new company, Nothing.

**Tags**: `#OnePlus`, `#smartphone`, `#business`, `#market exit`, `#news`

---

<a id="item-11"></a>
## [Nostalgic Reflection on Music Piracy and Streaming Shortcomings](https://www.pigeonsandplanes.com/read/music-piracy-what-cd-oink-nine-inch-nails-streaming) ⭐️ 7.0/10

This article reflects on the cultural and social benefits of music piracy in the iPod era, contrasting it with the limitations of modern streaming services such as incomplete catalogs and algorithmic discovery. This discussion highlights a growing sentiment that streaming services have not fully replicated the community-driven discovery and ownership experience of piracy, potentially affecting how we value music and digital culture. The article mentions specific piracy platforms like Oink and What.cd, and notes that streaming services still lack a full archive of music, forcing users to resort to piracy or expensive used CDs.

hackernews · mcgin · Jul 16, 04:46 · [Discussion](https://news.ycombinator.com/item?id=48930454)

**Background**: Music piracy via peer-to-peer networks was widespread in the early 2000s, allowing users to build large personal collections. The rise of streaming services like Spotify promised legal access but often lacks obscure or older content, and algorithmic curation replaced human-driven discovery. This piece laments the loss of the cultural network effects that piracy fostered.

**Discussion**: Comments express nostalgia for the social aspects of piracy, such as friend-driven discovery and the synergy between iPods and pirated music. Users also point out that streaming catalogs remain incomplete, and platforms like What.cd offered vast archives and vibrant forums for deep discussion.

**Tags**: `#music piracy`, `#streaming`, `#digital culture`, `#nostalgia`

---

<a id="item-12"></a>
## [Rust-to-Zig Rewrite: Trade-offs in Safety and Performance](https://rtfeldman.com/rust-to-zig) ⭐️ 7.0/10

The author details their experience rewriting a compiler project from Rust to Zig, citing reasons such as improved compile times and better support for incremental builds. They highlight that while Rust offers strong safety guarantees, Zig's runtime safety checks and compilation speed are advantageous for certain low-level compiler tasks. This rewrite sparks debate about the trade-offs between safety and performance in systems programming languages. It may influence decisions for projects that require low-level control and fast iteration times, particularly in compiler development. The author notes that for compilers emitting machine code, memory-unsafe operations are sometimes necessary, but community members argue this may not be as prevalent as claimed. Zig's ReleaseSafe mode catches use-after-free errors at runtime, though some doubt its effectiveness against all memory safety bugs.

hackernews · jorangreef · Jul 16, 11:39 · [Discussion](https://news.ycombinator.com/item?id=48933149)

**Background**: Rust is a systems programming language focused on memory safety without garbage collection, using a borrow checker to enforce ownership rules. Zig is a newer language aiming to be a simpler, more flexible alternative to C, with manual memory management but optional runtime safety checks. Both are used for low-level systems programming, but differ in their approach to safety and compile-time execution.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Zig_(programming_language)">Zig (programming language)</a></li>
<li><a href="https://ziglang.org/">Home Zig Programming Language</a></li>

</ul>
</details>

**Discussion**: Community comments include steveklabnik questioning the necessity of unsafe code in compilers, landr0id doubting Zig's use-after-free detection in practice, and overgard praising compile time improvements. arthurbrown wonders why OCaml wasn't chosen given its mature tooling, while onlyrealcuzzo highlights Zig's incremental builds as a decisive factor, questioning whether Rust will match this in the future.

**Tags**: `#Rust`, `#Zig`, `#systems programming`, `#rewrite`, `#compiler`

---

<a id="item-13"></a>
## [Microsoft Comic Chat released as open source](https://opensource.microsoft.com/blog/2026/07/16/microsoft-comic-chat-is-now-open-source/) ⭐️ 6.0/10

On July 16, 2026, Microsoft open-sourced Microsoft Comic Chat, the graphical IRC client originally released in 1996 that automatically converts text chat into comic book-style panels. This release preserves a piece of Internet history and allows developers to study and potentially revive an early example of graphical chat interfaces, sparking nostalgia and technical interest in the open-source community. The open-source release includes the source code for Comic Chat, which also introduced the famous Comic Sans font to the world. The project is now available on GitHub under an open-source license.

hackernews · jervant · Jul 16, 16:06 · [Discussion](https://news.ycombinator.com/item?id=48936426)

**Background**: Microsoft Comic Chat (later renamed Microsoft Chat) was developed by Microsoft researcher David Kurlander and first included in Internet Explorer 3.0 in 1996. It automatically renders IRC conversations as comic strips with characters, speech bubbles, and expressions, using a custom layout engine. The client extended the IRC protocol to support character appearance and emotes, which was controversial among some users.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Microsoft_Comic_Chat">Microsoft Comic Chat</a></li>
<li><a href="https://opensource.microsoft.com/blog/2026/07/16/microsoft-comic-chat-is-now-open-source/">opensource. microsoft .com › blog › 2026/07/16 Microsoft Comic Chat is now open source</a></li>

</ul>
</details>

**Discussion**: Commenters expressed excitement and nostalgia, with one original developer recounting the six-year effort to make the release happen. Another shared how Comic Chat inspired his startup, while a third noted that the client was somewhat reviled for extending IRC protocol in non-standard ways.

**Tags**: `#open source`, `#microsoft`, `#irc`, `#nostalgia`, `#software history`

---

<a id="item-14"></a>
## [Decoy Font Tricks AI and Humans with Blurred Messages](https://www.mixfont.com/experiments/decoy-font) ⭐️ 6.0/10

A new font called Decoy Font displays one message clearly up close but reveals a hidden message when viewed from a distance or blurred, effectively fooling both human readers and AI models like GPT-4 and Gemini. This playful optical illusion highlights vulnerabilities in how multimodal AI systems process visual text, potentially inspiring new approaches to AI robustness or adversarial typography. The font works by using fine details that are visible only up close, while a broader shading pattern forms the hidden message; even advanced LLMs like GPT-4 and Gemini can be tricked under certain conditions.

hackernews · ray__ · Jul 16, 16:18 · [Discussion](https://news.ycombinator.com/item?id=48936584)

**Background**: Optical illusions in typography exploit the difference between high-frequency and low-frequency visual information. When viewed at a small size or blurred, the brain (or AI) perceives the low-frequency pattern instead of the fine details. Decoy Font uses this principle to embed a secondary message.

<details><summary>References</summary>
<ul>
<li><a href="https://www.mixfont.com/experiments/decoy-font">Decoy Font: A TTF font that hides what you type</a></li>
<li><a href="https://www.creativebloq.com/design/fonts-typography/this-optical-illusion-font-was-created-to-baffle-ai-and-it-actually-works-for-now">This optical illusion font was created to baffle AI, and it actually works (for now) | Creative Bloq</a></li>

</ul>
</details>

**Discussion**: The Hacker News community found the font clever but acknowledged it has no practical utility. Some users noted it can also be used to give hidden instructions to AI, while others observed that resizing the image can change which message is read.

**Tags**: `#typography`, `#font`, `#visual-illusion`, `#AI`

---

<a id="item-15"></a>
## [GOES-19 Weather Satellite Enters Safe Hold Mode](https://www.spaceweather.gov/news/goes-19-safe-hold) ⭐️ 6.0/10

GOES-19, the latest NOAA weather satellite, automatically entered safe hold mode on July 23, 2026 due to an unidentified anomaly, temporarily interrupting real-time hurricane tracking. GOES-19 is the primary satellite for monitoring Atlantic hurricanes, and its outage could hinder timely warnings during the storm season. Safe hold mode is a standard protocol that locks satellite orientation to maximize solar power and minimize risk. NOAA reported progress in resolving the anomaly and preparing instrument restart.

hackernews · yabones · Jul 16, 13:30 · [Discussion](https://news.ycombinator.com/item?id=48934286)

**Background**: GOES-19 is the fourth and final satellite in the GOES-R series, launched in 2024 to provide advanced weather imagery and atmospheric measurements. The series is critical for severe weather forecasting and space weather monitoring.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/GOES-19">GOES-19 - Wikipedia</a></li>
<li><a href="https://asibiont.com/en/blog/sputnik-goes-19-pereshel-v-bezopasnyy-rezhim-chto-eto-znachit-dlya-meteorologii-i-kosmicheskoy-avtomatizatsii">GOES-19 Weather Satellite Enters Safe Hold Mode ... — ASI Biont Blog</a></li>

</ul>
</details>

**Discussion**: A former GOES engineer expressed that anomalies on GOES-19 were almost expected given past issues with other satellites, such as GOES-17's loop heat pipe problem and GOES-13's fuel tank anomaly. Another commenter reported noticing the outage in real-time while tracking Canadian wildfire smoke, and a later update indicated resolution progress.

**Tags**: `#weather satellite`, `#GOES-19`, `#safe mode`, `#satellite anomaly`, `#NOAA`

---

<a id="item-16"></a>
## [Replicating PlanetScale Infrastructure with Ceph Storage Branching](https://onatm.dev/2026/07/16/homescale-part-1/) ⭐️ 6.0/10

A blog post describes building a system similar to PlanetScale by implementing database branching and snapshots at the storage layer using Ceph, but it lacks sharding and zero-downtime proxy features. This exploration offers a novel storage-layer approach to database branching that could simplify development workflows, but the omission of critical features like sharding and zero-downtime support limits its practical applicability for production environments. The system uses Ceph's copy-on-write snapshots to create instant database branches without data duplication, but it does not include a query proxy for zero-downtime schema changes or Vitess-based sharding for horizontal scaling.

hackernews · onatm · Jul 16, 11:58 · [Discussion](https://news.ycombinator.com/item?id=48933303)

**Background**: PlanetScale is a serverless MySQL-compatible database platform powered by Vitess that offers branching and non-blocking schema migrations. Ceph is an open-source distributed storage system providing object, block, and file storage from a single cluster. Database branching allows creating independent copies of a database for development and testing without full data duplication, often using copy-on-write at the storage layer.

<details><summary>References</summary>
<ul>
<li><a href="https://ceph.io/en/">Ceph is an open source distributed storage system designed to...</a></li>
<li><a href="https://planetscale.com/docs/vitess/schema-changes/branching">Branching - PlanetScale</a></li>
<li><a href="https://xata.io/blog/what-is-database-branching-a-complete-guide-for-development-teams">What is database branching? A complete guide | xata.io by Graham Thompson</a></li>

</ul>
</details>

**Discussion**: Comments praised the elegant idea of storage-layer branching using Ceph but criticized the lack of sharding and zero-downtime proxy, noting that without these, the project resembles a standard managed database service rather than PlanetScale.

**Tags**: `#database`, `#infrastructure`, `#PlanetScale`, `#Ceph`, `#branching`

---

<a id="item-17"></a>
## [Mermaid diagrams as Unicode box art via WebAssembly](https://simonwillison.net/2026/Jul/16/grok-mermaid/#atom-everything) ⭐️ 6.0/10

Simon Willison built a browser tool that renders Mermaid diagrams as Unicode box art by compiling a Rust terminal renderer from the open-sourced Grok CLI into WebAssembly. This demonstrates the power of WebAssembly to repurpose terminal-focused Rust code for web use, enabling diagram rendering without any server or JavaScript dependencies. The tool uses the xai-grok-markdown crate's mermaid.rs module, which is a self-contained terminal renderer for Mermaid diagrams, and compiles it via wasm-pack to run in the browser.

rss · Simon Willison · Jul 16, 00:33

**Background**: Mermaid is a Markdown-like language for generating diagrams from text, commonly used in documentation. Unicode box-drawing characters (U+2500–U+257F) allow creating simple graphical elements in plain text, widely used in terminal UIs. WebAssembly enables running compiled code (e.g., from Rust) in the browser at near-native speed.

<details><summary>References</summary>
<ul>
<li><a href="https://mermaid.js.org/">mermaid .js.org Mermaid | Diagramming and charting tool</a></li>
<li><a href="https://en.wikipedia.org/wiki/Box-drawing_characters">en.wikipedia.org › wiki › Box -drawing_characters Box-drawing characters - Wikipedia</a></li>

</ul>
</details>

**Tags**: `#mermaid`, `#unicode`, `#box art`, `#webassembly`, `#rust`

---

<a id="item-18"></a>
## [Rethinking AI Memory Abstractions](https://www.reddit.com/r/MachineLearning/comments/1uy6yht/are_current_ai_memory_architectures_optimizing/) ⭐️ 6.0/10

A Reddit discussion proposes that future AI memory systems should evolve from storing descriptive facts to inferring higher-level reasoning patterns, such as explanatory frameworks and characteristic reasoning styles, rather than just remembering user preferences and facts. This perspective could reshape how persistent context is designed in AI systems, potentially leading to more adaptive and personalized AI assistants that understand users' thinking patterns rather than just their stated facts. The post contrasts current descriptive memory (user preferences, conversation summaries) with a proposed inferential memory that models how users interpret problems through recurring explanatory frameworks and reasoning styles.

reddit · r/MachineLearning · /u/Boris_Ljevar · Jul 16, 16:00

**Background**: Current AI memory systems, such as those in chatbots or virtual assistants, typically store explicit facts and preferences from past interactions to maintain context. This descriptive approach helps recall but does not capture underlying reasoning patterns. The post suggests that as AI becomes more sophisticated, memory could evolve into a model of the user's cognitive style, enabling deeper understanding.

**Tags**: `#AI memory`, `#persistent context`, `#machine learning`, `#reasoning patterns`

---

<a id="item-19"></a>
## [DABSN: New Recurrent Language Model Seeks Collaborators](https://www.reddit.com/r/MachineLearning/comments/1uycffg/seeking_collaborators_for_scaling_and_independent/) ⭐️ 6.0/10

The author introduces DABSN (Dynamic Adaptive Bias State Network), a novel recurrent architecture for language modeling, with a preprint and open-source code. A 24M-parameter language model trained on 1B tokens shows promising results, and the author seeks collaborators for scaling and independent evaluation. If validated, DABSN could provide a more efficient alternative to transformer-based models, especially for long sequences, potentially impacting future large language model design. Open collaboration may accelerate its development. The architecture was tested on reasoning and memory benchmarks including MQAR, Copy, Key-Value retrieval, and A5/60. The author provides implementations in PyTorch, C++, and Triton for reproducibility.

reddit · r/MachineLearning · /u/BleedingXiko · Jul 16, 19:17

**Background**: Recurrent neural networks (RNNs) process token sequences one step at a time, typically using less memory than transformers but struggling with long-range dependencies. Recent architectures like Mamba aim to improve RNN efficiency for language modeling. DABSN is a new candidate in this line of work.

<details><summary>References</summary>
<ul>
<li><a href="https://www.emergentmind.com/topics/multi-query-associative-recall-mqar">MQAR : Multi-Query Associative Recall</a></li>
<li><a href="https://github.com/LucaSfragara/Linear-Attention-Benchmarking">GitHub - LucaSfragara/Linear-Attention- Benchmarking ...</a></li>

</ul>
</details>

**Tags**: `#recurrent neural networks`, `#language models`, `#machine learning`, `#open source`

---

<a id="item-20"></a>
## [Best Tools for Multi-Objective Surrogate-Based Optimization in Meta-Analysis](https://www.reddit.com/r/MachineLearning/comments/1uxty9v/best_current_tools_for_multiobjective/) ⭐️ 6.0/10

A Reddit user seeks recommendations for combining hierarchical Bayesian modeling with surrogate-assisted multi-objective optimization to analyze heterogeneous study data from about 40 studies. This query highlights the growing need for integrated optimization workflows in meta-analysis, especially for continuous response surfaces with multiple objectives, which has applications in fields like exercise physiology and clinical trial synthesis. The user is on a Chromebook with limited Python experience and requests Colab-friendly solutions, considering PyMC for hierarchical modeling, pymoo+pysamoo for surrogate-assisted optimization, SMT for surrogate modeling, or MATLAB's Global Optimization Toolbox.

reddit · r/MachineLearning · /u/BleakReason · Jul 16, 05:43

**Background**: Multi-objective surrogate-based optimization (MOSBO) uses surrogate models (e.g., Gaussian processes) to approximate expensive objective functions and then performs optimization on these surrogates. Hierarchical Bayesian meta-analysis accounts for variability across studies by modeling study-level effects. The combination allows fitting a continuous response surface and optimizing multiple objectives like total improvement, efficiency, and effort constraints.

<details><summary>References</summary>
<ul>
<li><a href="https://anyoptimization.com/projects/pysamoo/">pysamoo: Surrogate-Assisted Multi-objective Optimization — pysamoo 0.1 documentation</a></li>
<li><a href="https://github.com/SMTorg/smt">github.com › SMTorg › smt GitHub - SMTorg/smt: SMT: The Surrogate Modeling Toolbox github.com › Antoine-Averland › SMTorg- smt GitHub - Antoine-Averland/SMTorg-smt: Surrogate Modeling Toolbox pypi.org › project › smt smt · PyPI colab.research.google.com › github › SMTorg SMT_Tutorial.ipynb - Colab huggingface.co › psaves › SMT psaves/SMT · Hugging Face www.sciencedirect.com › science › article SMT 2.0: A Surrogate Modeling Toolbox with a focus on...</a></li>
<li><a href="https://blogs.worldbank.org/en/impactevaluations/how-do-meta-analysis-using-bayesian-hierarchical-model-and-when-does-it-make">How to do meta-analysis using a Bayesian Hierarchical Model and when does it make sense to do so? Guest post by Pauline Castaing and Jules Gazeaud</a></li>

</ul>
</details>

**Tags**: `#multi-objective optimization`, `#surrogate-based optimization`, `#meta-analysis`, `#Python tools`, `#hierarchical modeling`

---