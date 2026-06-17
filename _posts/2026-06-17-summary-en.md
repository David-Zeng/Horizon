---
layout: default
title: "Horizon Summary: 2026-06-17 (EN)"
date: 2026-06-17
lang: en
---

> From 20 items, 18 important content pieces were selected

---

1. [Epic Games open-sources Lore VCS for game development](#item-1) ⭐️ 9.0/10
2. [GLM-5.2 Tops Artificial Analysis, Rivaling Proprietary Models](#item-2) ⭐️ 9.0/10
3. [RFC 10008 Proposes New HTTP QUERY Method](#item-3) ⭐️ 8.0/10
4. [60% of US consumers dislike 'AI' in brand messaging](#item-4) ⭐️ 8.0/10
5. [US Delays Blacklisting DeepSeek, Deems 100+ Firms Security Risks](#item-5) ⭐️ 8.0/10
6. [U.S. science in crisis as researchers flee](#item-6) ⭐️ 8.0/10
7. [Bubbles: A federated RSS aggregator for indie blogs](#item-7) ⭐️ 8.0/10
8. [Charity Majors: AI Flips Economics of Code Production](#item-8) ⭐️ 8.0/10
9. [Next-Latent Prediction: Transformers Learn Compact World Models](#item-9) ⭐️ 8.0/10
10. [Contrastive Targeted SFT for Causal Dependency Mapping in LLMs](#item-10) ⭐️ 8.0/10
11. [Photobucket charges $5 to retrieve users' images](#item-11) ⭐️ 7.0/10
12. [MicroUI: Tiny Immediate-Mode UI Library in ANSI C](#item-12) ⭐️ 7.0/10
13. [Datasette 1.0a34 Adds Row Insert, Edit, Delete UI](#item-13) ⭐️ 7.0/10
14. [Speculative Decoding Explained with SGLang Integration](#item-14) ⭐️ 7.0/10
15. [Click-to-Play Web Component Lazy-Loads GIFs](#item-15) ⭐️ 6.0/10
16. [NetNewsWire: Retirement Project Thrives Without Commercial Pressure](#item-16) ⭐️ 6.0/10
17. [Is Foundational AI Research Possible Without HPC?](#item-17) ⭐️ 6.0/10
18. [DCGAN on Raspberry Pi 4 Creates Physical NFT Art](#item-18) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [Epic Games open-sources Lore VCS for game development](https://lore.org/) ⭐️ 9.0/10

Epic Games has open-sourced Lore, a version control system built specifically for game development, designed to handle large binary files and exclusive file locking. Previously used internally as Unreal Revision Control for UEFN, Lore is now available under a permissive license. Lore directly addresses the limitations of Git for game development, where large assets like textures and 3D models are common and require exclusive locks. It provides a viable open-source alternative to Perforce, potentially reducing costs and improving workflows for game studios. Lore supports arbitrary content types and multi-axis scale, but the current open-source tooling cannot yet communicate with UEFN's proprietary compression format. It is already the built-in VCS for Unreal Editor for Fortnite and is being adopted internally at Epic.

hackernews · regnerba · Jun 17, 14:30 · [Discussion](https://news.ycombinator.com/item?id=48571081)

**Background**: Traditional version control systems like Git excel at text-based code but struggle with large binary files, which are abundant in game development. Perforce is the industry standard for games due to its support for file locking and large repos, but it is proprietary and complex to administer. Lore aims to combine the strengths of both while being fully open source.

<details><summary>References</summary>
<ul>
<li><a href="https://www.phoronix.com/news/Epic-Games-Lore-VCS">Epic Games Announces Lore Open-Source Version Control System</a></li>
<li><a href="https://github.com/EpicGames/lore">GitHub - EpicGames / lore : Lore is a next-generation, open source...</a></li>
<li><a href="https://epicgames.github.io/lore/explanation/system-design/">The Lore Version Control System - Lore Developer Documentation</a></li>

</ul>
</details>

**Discussion**: Community comments highlight that Lore is not meant to compete with Git for general software development, but rather with Perforce for game development. Users appreciate the focus on large files and exclusive locks, and note that Lore was already in use internally. Some express hope that it will simplify Unreal Engine workflows.

**Tags**: `#version control`, `#game development`, `#epic games`, `#perforce`, `#lore`

---

<a id="item-2"></a>
## [GLM-5.2 Tops Artificial Analysis, Rivaling Proprietary Models](https://artificialanalysis.ai/articles/glm-5-2-is-the-new-leading-open-weights-model-on-the-artificial-analysis-intelligence-index) ⭐️ 9.0/10

GLM-5.2, the latest open-weights model from Z.ai, has achieved the highest score on the Artificial Analysis Intelligence Index, surpassing previous open models and rivaling proprietary frontier models like GPT-5.5 and Opus 4.7 at significantly lower cost. This milestone demonstrates that open-weights models can now compete with the best proprietary systems, potentially democratizing access to high-quality AI and disrupting the market dominated by major providers like OpenAI, Anthropic, and Google. GLM-5.2 supports a 1M-token context window and, on the PostTrainBench evaluation, it outperforms GPT-5.5 and Opus 4.7, trailing Opus 4.8 by only 1%. The model is released under the MIT License, enabling free commercial use.

hackernews · himata4113 · Jun 17, 09:12 · [Discussion](https://news.ycombinator.com/item?id=48567759)

**Background**: GLM (General Language Model) is a family of large language models developed by Z.ai (formerly Zhipu AI), a Chinese AI company considered one of the 'AI tigers'. Since July 2025, Z.ai has released GLM models under the MIT open-source license. Artificial Analysis provides independent benchmarks comparing AI models across quality, price, and speed.

<details><summary>References</summary>
<ul>
<li><a href="https://z.ai/blog/glm-5.2">z.ai › blog › glm - 5 GLM-5.2: Built for Long-Horizon Tasks - z.ai</a></li>
<li><a href="https://github.com/zai-org/GLM-5">github.com › zai-org › GLM - 5 GLM-5.2 & GLM-5.1 & GLM-5 - GitHub</a></li>

</ul>
</details>

**Discussion**: Community members expressed excitement about GLM-5.2's performance and low cost, with some noting providers offering unlimited tokens for $50/month. However, there were also concerns about reasoning efficiency, as one user reported the model spending over 15 minutes on a simple coding task, and skepticism about whether the cost advantage holds for high-effort reasoning.

**Tags**: `#AI`, `#open-source`, `#large language model`, `#benchmark`, `#GLM`

---

<a id="item-3"></a>
## [RFC 10008 Proposes New HTTP QUERY Method](https://www.rfc-editor.org/info/rfc10008/) ⭐️ 8.0/10

RFC 10008 defines a new HTTP QUERY method that allows sending a request body while preserving safe and idempotent semantics, enabling caching and avoiding re-submission warnings. This method addresses the limitations of GET (no body) and POST (not idempotent) for query operations, improving API design and user experience by allowing forms to use QUERY to prevent re-submission prompts. Caching with QUERY relies on comparing request bodies, which may be unbounded. HTML forms could adopt method="query" to leverage this new method.

hackernews · schappim · Jun 17, 10:51 · [Discussion](https://news.ycombinator.com/item?id=48568502)

**Background**: HTTP has long provided GET for safe, idempotent requests without a body, and POST for unsafe, non-idempotent requests with a body. This leaves a gap for queries that need to send complex parameters safely and idempotently. The QUERY method fills this gap, offering a standardized alternative to the common practice of using POST for queries or sending bodies with GET.

<details><summary>References</summary>
<ul>
<li><a href="https://httpwg.org/http-extensions/draft-ietf-httpbis-safe-method-w-body.html">The HTTP QUERY Method</a></li>
<li><a href="https://horovits.medium.com/http-s-new-method-for-data-apis-http-query-1ff71e6f73f3">HTTP ‘s New Method For Data APIs: HTTP QUERY | Medium</a></li>

</ul>
</details>

**Discussion**: Commenters discussed the caching challenges of including the request body in the cache key, noting it leads to unbounded keys. Some expressed interest in HTML forms supporting QUERY to avoid re-submission warnings, while others noted the milestone of reaching 5-digit RFC numbers.

**Tags**: `#HTTP`, `#RFC`, `#web protocols`, `#REST`, `#API design`

---

<a id="item-4"></a>
## [60% of US consumers dislike 'AI' in brand messaging](https://wpvip.com/future-of-the-web-2026/) ⭐️ 8.0/10

A survey found that 60% of US consumers are turned off when brands mention 'AI' in their messaging, indicating widespread consumer skepticism toward AI marketing. This sentiment challenges the current AI hype cycle, signaling that companies must focus on tangible benefits rather than buzzwords to avoid alienating customers. The survey results are supported by community comments from practitioners who report that AI implementations, especially in customer service, lead to poor user experiences and are often used to stonewall customers.

hackernews · thm · Jun 17, 12:11 · [Discussion](https://news.ycombinator.com/item?id=48569278)

**Discussion**: Community comments from practitioners reinforce the survey findings, with several users sharing negative experiences with AI customer service implementations, noting that management often perceives them as successful while customers hate them. One user noted that AI is used to stonewall customers by providing polite but unhelpful responses.

**Tags**: `#AI`, `#brand messaging`, `#consumer sentiment`, `#customer service`, `#technology adoption`

---

<a id="item-5"></a>
## [US Delays Blacklisting DeepSeek, Deems 100+ Firms Security Risks](https://www.reuters.com/world/china/us-holds-off-blacklisting-chinas-deepseek-more-than-100-firms-deemed-security-2026-06-17/) ⭐️ 8.0/10

The US government has delayed blacklisting Chinese AI company DeepSeek but designated over 100 other firms as national security risks, impacting future export controls on AI technology. This decision reflects ongoing US-China tensions over AI dominance and could shape the global AI landscape by restricting Chinese access to advanced semiconductors and technology. While DeepSeek avoided immediate blacklisting, the Entity List expansion targets firms suspected of ties to China's military or advanced tech development. DeepSeek's open-weight models and low-cost training methods have already disrupted the industry.

hackernews · giuliomagnifico · Jun 17, 03:55 · [Discussion](https://news.ycombinator.com/item?id=48565498)

**Background**: DeepSeek, founded in 2023, is a Chinese AI company known for its open-weight large language models trained at a fraction of the cost of Western rivals, partly by using weaker export-restricted GPUs. The US Entity List is a trade restriction tool that prevents American companies from selling goods and services to listed entities without a license. This move is part of broader US efforts to limit China's technological advancement in AI.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/DeepSeek_(Company)">DeepSeek (Company)</a></li>
<li><a href="https://en.wikipedia.org/wiki/Entity_List">Entity List - Wikipedia</a></li>
<li><a href="https://www.technologyreview.com/2025/01/24/1110526/china-deepseek-top-ai-despite-sanctions/">How Chinese company DeepSeek released a top AI reasoning model</a></li>

</ul>
</details>

**Discussion**: Commenters noted that Z.ai, maker of the GLM 5.2 model, was already on the Entity List since January 2025, and debated the effectiveness of such listings given Chinese AI companies' limited reliance on US goods. Some expressed frustration over US restrictions on products like BYD cars and Xiaomi phones, while others raised concerns about intellectual property theft and DeepSeek's extremely low pricing compared to US models.

**Tags**: `#US-China relations`, `#AI regulation`, `#DeepSeek`, `#export controls`, `#technology policy`

---

<a id="item-6"></a>
## [U.S. science in crisis as researchers flee](https://www.scientificamerican.com/article/americas-compact-between-science-and-politics-is-broken/) ⭐️ 8.0/10

The article discusses the breakdown of trust between science and politics in the U.S., highlighting severe funding cuts and visa restrictions that are driving researchers to leave the country or abandon scientific careers. This crisis threatens U.S. leadership in research and innovation, potentially causing a long-term brain drain that will weaken academic institutions and the broader scientific community. The article notes high engagement with 401 points and 458 comments, indicating widespread concern. Personal accounts describe labs shutting down, promising PhDs and postdocs leaving science, and established scientists maintaining backup options.

hackernews · presspot · Jun 17, 09:54 · [Discussion](https://news.ycombinator.com/item?id=48568058)

**Background**: The United States has historically been a global leader in scientific research, supported by federal grants such as R01 from the NIH. Recent political decisions have destabilized research funding and immigration policies, creating an environment of uncertainty that undermines the compact between science and politics.

**Discussion**: Commenters share personal experiences of labs struggling with funding and visa issues, with many expressing despair. Some researchers are moving abroad or leaving science entirely, while a few see opportunities in the private sector. Overall sentiment is negative and anxious.

**Tags**: `#science policy`, `#research funding`, `#brain drain`, `#U.S. science`, `#academia crisis`

---

<a id="item-7"></a>
## [Bubbles: A federated RSS aggregator for indie blogs](https://bubbles.town/) ⭐️ 8.0/10

Bubbles (bubbles.town) launched as a federated RSS-based aggregator that curates content from independent blogs, with voting and commenting via Mastodon accounts. It offers a humane, curated alternative to mainstream social media and doomscrolling, helping revive the indie blogosphere with a focus on quality over noise. The platform supports federated voting and comments on top of RSS, and features 'Briefings' for curated digests. Users currently need a Mastodon account to sign up.

hackernews · headalgorithm · Jun 17, 07:49 · [Discussion](https://news.ycombinator.com/item?id=48567155)

**Background**: RSS (Really Simple Syndication) is a standard for distributing web content updates, allowing users to subscribe to feeds. A federated system means no central authority; Mastodon, a decentralized social network, is used for authentication here. Bubbles aims to combine RSS with community curation.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Comparison_of_feed_aggregators">Comparison of feed aggregators - Wikipedia</a></li>
<li><a href="https://www.freshrss.org/">FreshRSS, a free, self-hostable feeds aggregator</a></li>

</ul>
</details>

**Discussion**: Community sentiment is highly positive, with users praising the refreshing, diverse content and indie-web elegance. Some request email-based account creation instead of Mastodon-only, and the 'Briefings' feature is particularly appreciated.

**Tags**: `#indie-web`, `#blog-aggregation`, `#RSS`, `#federated`, `#content-discovery`

---

<a id="item-8"></a>
## [Charity Majors: AI Flips Economics of Code Production](https://simonwillison.net/2026/Jun/17/charity-majors/#atom-everything) ⭐️ 8.0/10

Charity Majors argues that in 2025, AI made code generation effectively free and instant, turning lines of code from treasured assets into disposable commodities. This shift fundamentally changes software engineering practices, requiring more discipline rather than less, and impacts how companies value and manage code. The insight comes from a blog post titled 'AI demands more engineering discipline. Not less,' highlighting that while generating code is cheap, maintaining and integrating it still requires skill.

rss · Simon Willison · Jun 17, 17:12

**Background**: Traditionally, writing code was time-consuming and expensive, so developers carefully crafted and reused code. Generative AI now allows instant code generation, reducing the cost to nearly zero, which changes how code is treated—from a precious resource to a disposable output.

**Tags**: `#ai-assisted-programming`, `#generative-ai`, `#software-engineering`, `#economics-of-code`

---

<a id="item-9"></a>
## [Next-Latent Prediction: Transformers Learn Compact World Models](https://www.reddit.com/r/MachineLearning/comments/1u84mio/nextlatent_prediction_transformers_r/) ⭐️ 8.0/10

Microsoft Research introduces Next-Latent Prediction (NextLat), a self-supervised method that trains transformers to predict their own next latent state, enabling up to 3.3x faster inference via self-speculative decoding. This approach addresses the myopic nature of next-token prediction, encouraging transformers to form compact world models that improve representation learning and data efficiency. It could lead to more capable and efficient large language models and reasoning systems. NextLat extends standard next-token training by adding a self-supervised loss that predicts the next latent state given the current latent and next token. It achieves the highest sequence compression of 0.71 on a benchmark, indicating compact world models.

reddit · r/MachineLearning · /u/jayden_teoh_ · Jun 17, 08:44

**Background**: Transformers use self-attention over all past tokens, lacking an inherent incentive to compress history into compact latent states. This can lead to poor generalization. NextLat introduces a recurrent-like inductive bias while retaining parallel training efficiency, enabling transformers to learn compact internal world models.

<details><summary>References</summary>
<ul>
<li><a href="https://arxiv.org/abs/2511.05963">arxiv.org › abs › 2511 Next-Latent Prediction Transformers Learn Compact World Models Images arxiv.org › html › 2511 Next-Latent Prediction Transformers Learn Compact World Models openreview.net › attachment Next-Latent Prediction Transformers Learn Compact World Models arxiviq.substack.com › p › next-latent-prediction- transformers Next-Latent Prediction Transformers Learn Compact World Models huggingface.co › papers › 2511 Next-Latent Prediction Transformers Learn Compact World Models www.researchgate.net › publication › 397479749_Next-Latent Next-Latent Prediction Transformers Learn Compact World Models Next-Latent Prediction Transformers Learn Compact Next-Latent Prediction Transformers Learn Compact Next-Latent Prediction Transformers Learn Compact World Models Next-Latent Prediction Transformers Learn Compact World Models neurips.cc › virtual › 2025 Keynote #7 Next-Latent Prediction Transformers Learn Compact...</a></li>
<li><a href="https://www.emergentmind.com/topics/next-latent-prediction-nextlat">Next-Latent Prediction Overview - emergentmind.com</a></li>

</ul>
</details>

**Discussion**: No community discussion was provided for this news item. The Reddit post is by the author, so initial reception is not available.

**Tags**: `#machine learning`, `#transformers`, `#self-supervised learning`, `#representation learning`, `#inference acceleration`

---

<a id="item-10"></a>
## [Contrastive Targeted SFT for Causal Dependency Mapping in LLMs](https://www.reddit.com/r/MachineLearning/comments/1u8if6l/contrastive_targeted_sft_as_a_mechinterp_method/) ⭐️ 8.0/10

A Reddit user proposes a novel method combining contrastive variants of supervised fine-tuning (SFT) with circuit ablation to map causal dependencies between capability dimensions in large language models. If successful, this approach could enable targeted training strategies and deeper mechanistic understanding of how LLMs compose capabilities, potentially improving model control and interpretability. The user plans to train contrastive SFT variants from the same checkpoint, locate circuits by comparing checkpoints, ablate those circuits, and measure degradation in other dimensions to build a causal dependency graph.

reddit · r/MachineLearning · /u/Substantial_Diver469 · Jun 17, 18:31

**Background**: Mechanistic interpretability aims to reverse-engineer neural networks into functional units. Circuit discovery identifies subgraphs responsible for specific behaviors. Contrastive SFT trains models on examples that differ in a targeted attribute to induce or suppress that attribute.

<details><summary>References</summary>
<ul>
<li><a href="https://www.neelnanda.io/mechanistic-interpretability/getting-started-old">Concrete Steps to Get Started in Transformer Mechanistic ...</a></li>
<li><a href="https://transformer-circuits.pub/2025/attribution-graphs/methods.html">Circuit Tracing: Revealing Computational Graphs in Language Models</a></li>
<li><a href="https://arxiv.org/abs/2605.09129">Data-driven Circuit Discovery for Interpretability of Language Models</a></li>

</ul>
</details>

**Tags**: `#mechanistic interpretability`, `#supervised fine-tuning`, `#causal dependency`, `#circuit discovery`, `#large language models`

---

<a id="item-11"></a>
## [Photobucket charges $5 to retrieve users' images](https://www.lutr.dev/want-your-images-back-sure-that-ll-be-5-dollars) ⭐️ 7.0/10

A user reports that Photobucket demanded a $5 subscription fee to retrieve their own images, highlighting how third-party services can hold data hostage. This incident underscores the risks of relying on third-party hosting for personal data and fuels debate on data portability and static site benefits. The user noted that Photobucket's email offered a subscription rather than a simple download option. Some commenters suggest using static site generators to avoid such lock-in.

hackernews · lutr · Jun 17, 13:05 · [Discussion](https://news.ycombinator.com/item?id=48569954)

**Background**: A static web page is delivered to a browser exactly as stored, unlike dynamic pages that are generated per request. Data portability is the right to transfer personal data between services, protected by regulations like the GDPR.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Static_site">Static site</a></li>
<li><a href="https://en.wikipedia.org/wiki/Data_portability">Data portability</a></li>

</ul>
</details>

**Discussion**: Commenters express frustration with Photobucket's approach, with some noting they could download data before account deletion. Others debate corporate greed vs. service preservation. The discussion highlights the importance of static sites and data backups.

**Tags**: `#photobucket`, `#data portability`, `#hosting`, `#static sites`, `#community discussion`

---

<a id="item-12"></a>
## [MicroUI: Tiny Immediate-Mode UI Library in ANSI C](https://github.com/rxi/microui) ⭐️ 7.0/10

MicroUI is a minimal, portable immediate-mode UI library written in ANSI C, gaining 140 points and 42 comments on Hacker News. It is designed as a lightweight foundation for custom UI elements in small projects. This library offers a low-dependency, cross-platform UI solution for embedded systems, demos, and personal projects, exemplifying the simplicity of immediate-mode GUI. Its popularity reflects a continued demand for minimal C-based UI tools in developer tooling and game development. The library itself does not perform drawing; it processes user input events and generates an iterable list of draw commands. It has a known misaligned pointer access bug in the draw call iterator, which can cause issues in environments like Zig that catch such errors.

hackernews · peter_d_sherman · Jun 17, 12:04 · [Discussion](https://news.ycombinator.com/item?id=48569205)

**Background**: Immediate-mode UI (IMGUI) is a paradigm where the UI is rebuilt every frame from application state, in contrast to retained-mode UI which stores a persistent widget tree. IMGUI libraries like MicroUI and Nuklear are popular in game debugging tools and embedded systems due to their simplicity and low overhead. MicroUI is written in ANSI C for maximum portability.

<details><summary>References</summary>
<ul>
<li><a href="https://github.com/rxi/microui">github.com › rxi › microui GitHub - rxi/microui: A tiny immediate-mode UI library</a></li>
<li><a href="https://en.wikipedia.org/wiki/Immediate_mode_(computer_graphics)">Immediate mode (computer graphics)</a></li>
<li><a href="https://rxi.github.io/microui_v2_an_implementation_overview.html">rxi.github.io › microui_v2_an_implementation_overview Microui v2: An Implementation Overview | rxi</a></li>

</ul>
</details>

**Discussion**: Commenters praised MicroUI's minimalism and ease of integration, with one user calling it a goto for personal toy projects. However, several noted it is effectively abandoned, with a bug that may not be fixed. A user provided a demo running on the sokol graphics library and a link to an implementation overview for v2.

**Tags**: `#C`, `#UI library`, `#immediate-mode`, `#embedded`, `#open-source`

---

<a id="item-13"></a>
## [Datasette 1.0a34 Adds Row Insert, Edit, Delete UI](https://simonwillison.net/2026/Jun/16/datasette/#atom-everything) ⭐️ 7.0/10

Datasette 1.0a34 introduces the ability to insert, edit, and delete rows directly through the user interface, a feature long requested by the community. The release notes highlight that these tools are available on table pages, with edit and delete also accessible from row pages. This feature closes a significant gap in Datasette's functionality, transforming it from a read-only data exploration tool into a full CRUD application. It makes Datasette more practical for data management tasks, especially for non-technical users who prefer a graphical interface over SQL commands. The feature is currently in alpha, meaning it may have bugs or incomplete polish. It was inspired by Datasette Agent, an AI assistant that already supported SQL write operations via chat, highlighting the oddity of lacking such functionality in the regular UI.

rss · Simon Willison · Jun 16, 21:31

**Background**: Datasette is an open-source multi-tool for exploring and publishing data. It allows users to take data of any shape, analyze it, and publish it as an interactive website and API. Previously, Datasette's UI was read-only; users had to use plugins or direct database access to modify data. This release adds native CRUD capabilities to the web interface.

<details><summary>References</summary>
<ul>
<li><a href="https://datasette.io/">datasette .io Datasette: An open source multi-tool for exploring and publishing...</a></li>
<li><a href="https://agent.datasette.io/">Datasette Agent: an AI assistant for Datasette to help explore and ...</a></li>

</ul>
</details>

**Tags**: `#datasette`, `#open source`, `#database`, `#sqlite`, `#data management`

---

<a id="item-14"></a>
## [Speculative Decoding Explained with SGLang Integration](https://www.reddit.com/r/MachineLearning/comments/1u83kzt/what_is_speculative_decoding_trending_on/) ⭐️ 7.0/10

The post explains speculative decoding, a method to speed up LLM inference using a draft model and parallel verification, and highlights its recent integration in SGLang with DFlash models. Speculative decoding significantly reduces latency for LLM inference without sacrificing quality, making it crucial for real-time applications. The SGLang integration with DFlash achieves state-of-the-art throughput, benefiting practitioners deploying large models. The draft model quickly proposes multiple future tokens, which are verified in parallel by the larger target model. SGLang recently released a blog post detailing how they achieve state-of-the-art latencies using Modal and Z.ai's DFlash models.

reddit · r/MachineLearning · /u/NielsRogge · Jun 17, 07:41

**Background**: Speculative decoding is an inference optimization technique for large language models (LLMs). It uses a small, fast "draft" model to generate candidate tokens, which a larger "target" model then verifies in parallel, allowing multiple tokens to be generated per step. This approach speeds up generation while maintaining output quality. SGLang is an open-source framework for high-throughput LLM serving, and DFlash is a lightweight block diffusion model designed for efficient speculative decoding.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/SGLang">SGLang</a></li>
<li><a href="https://github.com/z-lab/dflash">DFlash: Block Diffusion for Flash Speculative Decoding - GitHub</a></li>
<li><a href="https://www.lmsys.org/blog/2026-06-15-next-generation-speculative-decoding-dflash-v2/">The next generation of speculative decoding: DFlash and Spec V2</a></li>

</ul>
</details>

**Tags**: `#speculative decoding`, `#LLM inference`, `#SGLang`, `#optimization`, `#AI/ML`

---

<a id="item-15"></a>
## [Click-to-Play Web Component Lazy-Loads GIFs](https://simonwillison.net/2026/Jun/17/click-to-play-component/#atom-everything) ⭐️ 6.0/10

Simon Willison released a <click-to-play> web component that transforms a link with an image into a still frame with a play button, loading the full GIF only on user click. This component reduces bandwidth usage and page load times by avoiding automatic loading of large GIFs, improving performance and user experience, especially on mobile or slow connections. The component requires only standard HTML markup—a wrapping <click-to-play> tag with an anchor and an img inside—and relies on JavaScript and custom elements APIs.

rss · Simon Willison · Jun 17, 03:56

**Background**: Web Components are a set of browser APIs that allow developers to create reusable, encapsulated custom HTML elements. Progressive enhancement is a web design strategy that ensures basic content works for all users, with enhanced features available to browsers that support them.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Progressive_enhancement">Progressive enhancement - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Web_Components">Web Components</a></li>

</ul>
</details>

**Tags**: `#web-component`, `#gif`, `#progressive-enhancement`, `#javascript`

---

<a id="item-16"></a>
## [NetNewsWire: Retirement Project Thrives Without Commercial Pressure](https://simonwillison.net/2026/Jun/17/netnewswire-status/#atom-everything) ⭐️ 6.0/10

Simon Willison highlights that Brent Simmons, after retiring a year ago, is dedicating his time to improving NetNewsWire, a free and open-source RSS reader, completely free from commercial pressure. This story shows how open-source software can flourish when developed without commercial constraints, serving as an inspiration for developers and ensuring users have high-quality, privacy-respecting tools like RSS readers. NetNewsWire was first released in 2002 and became open source in 2018; it is available on Mac, iPhone, and iPad, and aggregates articles from blogs and news sites via RSS, Atom, and JSON feeds.

rss · Simon Willison · Jun 17, 03:36

**Background**: NetNewsWire is a free and open-source RSS reader originally developed by Ranchero Software. RSS readers like NetNewsWire allow users to subscribe to feeds from websites and read content in one place. Open-source development permits anyone to view, modify, and contribute to the code, fostering community-driven improvements.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/NetNewsWire">NetNewsWire - Wikipedia</a></li>
<li><a href="https://netnewswire.com/">NetNewsWire: Free and Open Source RSS Reader for Mac, iPhone, and iPad</a></li>
<li><a href="https://github.com/NetNewsWire-RSS-Reader">NetNewsWire RSS Reader - GitHub</a></li>

</ul>
</details>

**Tags**: `#netnewswire`, `#brent-simmons`, `#open-source`, `#rss`, `#software-development`

---

<a id="item-17"></a>
## [Is Foundational AI Research Possible Without HPC?](https://www.reddit.com/r/MachineLearning/comments/1u8jyat/is_foundational_ai_research_still_something_that/) ⭐️ 6.0/10

A Reddit user asks whether foundational AI research remains feasible without access to high-performance computing (HPC), referencing that the influential 'Attention is all you need' paper was trained on just 8 NVIDIA P100 GPUs. This question highlights a growing concern about the democratization of AI research, as modern state-of-the-art models often require massive clusters, potentially excluding independent researchers and smaller institutions. The original Transformer paper used a single machine with 8 NVIDIA P100 GPUs, each with 16GB memory—hardware that cost around $10k at the time. Today’s frontier models like GPT-4 and Llama-3 require thousands of GPUs.

reddit · r/MachineLearning · /u/Proof-Bed-6928 · Jun 17, 19:26

**Background**: Foundational AI research refers to work that introduces new architectures, algorithms, or theoretical breakthroughs—like the Transformer architecture in the 'Attention is all you need' paper. HPC (high-performance computing) encompasses large clusters of GPUs or specialized hardware that enable training massive models. The barrier to entry has risen significantly: training a single large model can cost millions of dollars in compute.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Attention_Is_All_You_Need">Attention Is All You Need - Wikipedia</a></li>
<li><a href="https://arxiv.org/abs/1706.03762">[1706.03762] Attention Is All You Need</a></li>
<li><a href="https://www.nvidia.com/en-us/high-performance-computing/hpc-and-ai/">High Performance Computing (HPC) and AI | NVIDIA</a></li>

</ul>
</details>

**Tags**: `#AI research`, `#HPC`, `#democratization`, `#computing resources`

---

<a id="item-18"></a>
## [DCGAN on Raspberry Pi 4 Creates Physical NFT Art](https://www.reddit.com/r/MachineLearning/comments/1u8cqan/i_deployed_a_gan_on_a_raspberry_pi_4_and_built_a/) ⭐️ 6.0/10

A developer trained a 128×128 DCGAN on a MacBook M3 and deployed it on a Raspberry Pi 4, connected to a LILYGO TTGO T-Display ESP32, to generate hybrid face images and mint them as physical NFTs via a button press. The system runs headlessly as a systemd service and produces a face every 3 seconds. This project demonstrates the feasibility of running generative AI models on low-cost edge devices like the Raspberry Pi, opening up possibilities for interactive art, physical NFT minting, and decentralized AI applications. It also showcases a practical pipeline from training to edge deployment. The DCGAN uses a 6-block generator with feature maps starting at 1024 and a corresponding discriminator, trained for 800 epochs on 2480 images across 11 subjects. The model was exported from PyTorch to ONNX (float32, 53MB), and inference takes 3 seconds per face on the Pi 4.

reddit · r/MachineLearning · /u/Numerous-Dentist-882 · Jun 17, 15:05

**Background**: DCGAN (Deep Convolutional Generative Adversarial Network) is a class of GAN that uses convolutional layers for image generation. Raspberry Pi is a low-cost single-board computer, and the LILYGO TTGO T-Display is an ESP32-based microcontroller with a built-in TFT display. systemd is a Linux service manager that can run processes headlessly.

<details><summary>References</summary>
<ul>
<li><a href="https://mecha4makers.co.nz/product/lilygo-ttgo-t-display-v1-1-esp32-with-1-14-tft-lcd/">LilyGO TTGO T-Display V1.1 ESP32 with 1.14″ TFT LCD</a></li>
<li><a href="https://codeman.org/product/lilygo-ttgo-t-display-v1-1-esp32-with-1-14-inch-tft-display/">TTGO V1.1 ESP32 – with 1.14 inch TFT Display –</a></li>
<li><a href="https://jyetest.github.io/creating-systemd-services/">Understanding systemd and creating Linux services - Mr</a></li>

</ul>
</details>

**Tags**: `#GAN`, `#Edge AI`, `#Raspberry Pi`, `#NFT`, `#Machine Learning`

---