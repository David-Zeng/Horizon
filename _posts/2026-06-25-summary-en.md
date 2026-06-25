---
layout: default
title: "Horizon Summary: 2026-06-25 (EN)"
date: 2026-06-25
lang: en
---

> From 16 items, 11 important content pieces were selected

---

1. [First entire Herculaneum scroll read using AI](#item-1) ⭐️ 9.0/10
2. [Zig's New bitCast Semantics and LLVM Backend Improvements](#item-2) ⭐️ 8.0/10
3. [Google Trends for Hacker News indexes 18 years of comments](#item-3) ⭐️ 8.0/10
4. [Compiling Agentic Workflows into LLM Weights: Near-Frontier Quality at Lower Cost](#item-4) ⭐️ 8.0/10
5. [IBM debuts sub-1 nanometer chip technology](#item-5) ⭐️ 7.0/10
6. [Half-Life 2 Runs in Browser via WebAssembly](#item-6) ⭐️ 7.0/10
7. [Browser compat data converted to SQLite](#item-7) ⭐️ 7.0/10
8. [OS9Map brings online maps to classic Mac OS 9](#item-8) ⭐️ 6.0/10
9. [Apple raises MacBook and iPad prices due to memory cost surge](#item-9) ⭐️ 6.0/10
10. [Windows 10 gets one more year of support amid Windows 11 backlash](#item-10) ⭐️ 6.0/10
11. [Proposal for a Dense Token Programming Language for LLMs](#item-11) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [First entire Herculaneum scroll read using AI](https://scrollprize.org/firstscroll) ⭐️ 9.0/10

The Vesuvius Challenge team has successfully read an entire carbonized Herculaneum scroll using AI and machine learning techniques to detect ink from 3D X-ray scans, marking the first time a complete scroll has been deciphered. This breakthrough unlocks previously inaccessible ancient texts, potentially recovering lost works of classical literature and philosophy from the only surviving library from antiquity. The scroll, from the Villa of the Papyri in Herculaneum, was carbonized by the eruption of Mount Vesuvius in 79 AD. The method uses neural networks trained on X-ray microtomography data, with the preprint and code released on GitHub.

hackernews · verditelabs · Jun 25, 15:48 · [Discussion](https://news.ycombinator.com/item?id=48675179)

**Background**: The Herculaneum papyri are over 1,800 carbonized scrolls discovered in the 18th century, containing Greek philosophical texts. Previously, attempts to open them often destroyed the scrolls. The Vesuvius Challenge launched in 2023 to develop AI methods to read them non-invasively.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Herculaneum_scrolls">Herculaneum scrolls</a></li>
<li><a href="https://scrollprize.org/grandprize">Vesuvius Challenge 2023 Grand Prize awarded: we can read the</a></li>
<li><a href="https://scrollprize.org/">Vesuvius Challenge</a></li>

</ul>
</details>

**Discussion**: Community reactions are overwhelmingly positive, with team members offering to answer questions and excitement about the potential to discover more scrolls and lost works. Some reflect on this as a positive application of AI technology.

**Tags**: `#AI`, `#computer vision`, `#archaeology`, `#ancient texts`, `#Vesuvius Challenge`

---

<a id="item-2"></a>
## [Zig's New bitCast Semantics and LLVM Backend Improvements](https://ziglang.org/devlog/2026/#2026-06-25) ⭐️ 8.0/10

Zig introduced new @bitCast semantics that make the operation endian-agnostic, meaning it now works on the logical bit representation regardless of target endianness. Additionally, LLVM backend improvements have been made to generate more efficient code for bit-level operations. This change simplifies cross-platform code by eliminating the need to manually handle endianness when using bitCast, making low-level bit manipulation more portable and less error-prone. The LLVM backend improvements further enhance performance for systems programming tasks that rely on bit packing and unpacking. Under the old semantics, bitcasting between arrays and integers depended on target endianness; now it is endian-agnostic. The LLVM backend improvements include better handling of arbitrary-width integers and packed structs, leading to optimized generated code.

hackernews · kouosi · Jun 25, 14:19 · [Discussion](https://news.ycombinator.com/item?id=48673825)

**Background**: @bitCast is a built-in Zig function that reinterprets the bits of a value as a different type, similar to C++'s reinterpret_cast but with stricter guarantees. Endianness refers to how bytes are ordered in memory (big-endian vs little-endian). The LLVM backend is the part of the Zig compiler that generates machine code from LLVM IR, and improvements here directly impact execution speed.

<details><summary>References</summary>
<ul>
<li><a href="https://github.com/ziglang/zig/issues/19755">Proposal: initial `@bitCast` semantics (packed + vector + array) · Issue #19755 · ziglang/zig</a></li>
<li><a href="https://news.ycombinator.com/item?id=48673825">Zig's New BitCast Semantics and LLVM Back End Improvements | Hacker News</a></li>
<li><a href="https://ziglang.org/documentation/master/">Documentation - The Zig Programming Language</a></li>

</ul>
</details>

**Discussion**: The community reacted positively, with many praising the clarity and value of the devlog. Some commenters expressed concerns about the complexity of arbitrary-width integers and the endian-agnostic approach, preferring explicit packing/unpacking for code clarity. Overall, the discussion was constructive, highlighting both excitement and thoughtful critique.

**Tags**: `#Zig`, `#compiler`, `#LLVM`, `#bit manipulation`, `#programming languages`

---

<a id="item-3"></a>
## [Google Trends for Hacker News indexes 18 years of comments](https://hackernewstrends.com/) ⭐️ 8.0/10

A web app called HackerNewsTrends.com indexes 18 years of Hacker News comments to display trending terms over time, similar to Google Trends. This tool provides a novel way for the Hacker News community to explore long-term trends in discussions, potentially revealing shifts in technology interests and community focus. The dataset includes 18 years of comments, but users noted that the API returned errors (504 timeout, 502 rate limit) and a bug where results cut off at 2018-10 for some queries.

hackernews · ytkimirti · Jun 25, 14:08 · [Discussion](https://news.ycombinator.com/item?id=48673671)

**Background**: Hacker News is a popular social news site focused on technology and startups. Google Trends is a tool that shows how often particular search terms are entered. This project applies a similar concept to Hacker News comments, allowing users to see how frequently terms appear in discussions over time.

**Discussion**: Users pointed out that the data source is comments, not searches, so it reflects what people write about rather than what they search for. Some reported technical issues like API timeouts and rate limiting, while others suggested alternative databases like ClickHouse's public HN dataset.

**Tags**: `#hackernews`, `#data-visualization`, `#trend-analysis`, `#side-project`, `#community-tool`

---

<a id="item-4"></a>
## [Compiling Agentic Workflows into LLM Weights: Near-Frontier Quality at Lower Cost](https://www.reddit.com/r/MachineLearning/comments/1ufgpnh/r_compiling_agentic_workflows_into_llm_weights/) ⭐️ 8.0/10

A new paper demonstrates that small language models fine-tuned on traces from frontier model orchestration can achieve near-frontier quality while costing two orders of magnitude less than using frontier models directly. This approach addresses the pain point of token-based billing, making high-quality AI capabilities more accessible and cost-effective for deployment, especially for companies reevaluating small language models. The method involves supervised fine-tuning of small language models on execution traces generated by orchestrating multiple frontier models. The paper claims near-frontier performance at two orders of magnitude less cost, though real-world validation is pending.

reddit · r/MachineLearning · /u/ThirdWaveCat · Jun 25, 17:31

**Background**: Agentic workflows are automated, intent-driven processes that combine multiple AI agents and structured steps to perform complex tasks. Frontier model orchestration coordinates top-tier AI models (like GPT-4, Claude) via an orchestration layer. 'Compiling' these workflows into LLM weights means fine-tuning a smaller model on the decision traces and outputs of the orchestration, so the small model can mimic the orchestrated behavior without the high cost of running multiple large models each time.

<details><summary>References</summary>
<ul>
<li><a href="https://grokipedia.com/page/GitHub_Agentic_Workflows">GitHub Agentic Workflows</a></li>
<li><a href="https://www.startuphub.ai/ai-news/technology/2026/sakana-ai-s-fugu-orchestrates-frontier-models">Sakana AI's Fugu Orchestrates Frontier Models | StartupHub.ai</a></li>
<li><a href="https://arxiv.org/html/2412.13337v1">Unveiling the Secret Recipe: A Guide For Supervised Fine-Tuning Small LLMs</a></li>

</ul>
</details>

**Tags**: `#LLM`, `#fine-tuning`, `#agentic workflows`, `#cost efficiency`, `#SLM`

---

<a id="item-5"></a>
## [IBM debuts sub-1 nanometer chip technology](https://newsroom.ibm.com/2026-06-25-ibm-debuts-worlds-first-sub-1-nanometer-chip-technology) ⭐️ 7.0/10

IBM has announced a 0.7nm (7 angstrom) chip technology, called NanoStack, which packs nearly 100 billion transistors onto a chip the size of a fingernail, nearly doubling the density of its 2nm chip from 2021. This demonstrates continued progress in semiconductor scaling, enabling more powerful and energy-efficient chips for AI and other compute-intensive workloads. However, the announcement also reignites debate about node naming conventions, as the '0.7nm' label no longer corresponds to any physical dimension. The technology uses a three-dimensional nanostack architecture and achieves a 79% power reduction over previous nodes, as detailed in IBM's 2025 VLSI paper. One key challenge addressed is SRAM scaling, which previously limited the benefits of node shrinks.

hackernews · porridgeraisin · Jun 25, 15:33 · [Discussion](https://news.ycombinator.com/item?id=48674967)

**Background**: In semiconductor manufacturing, node names like '7nm' or '5nm' historically referred to the transistor gate length, but for over a decade they have become marketing terms denoting process generations rather than physical dimensions. IBM's 0.7nm node continues this trend, with the actual transistor features likely larger than 0.7nm. The industry collectively decoupled node names from real sizes years ago, which has led to confusion and skepticism.

<details><summary>References</summary>
<ul>
<li><a href="https://newsroom.ibm.com/2026-06-25-ibm-debuts-worlds-first-sub-1-nanometer-chip-technology">IBM Debuts World’s First Sub-1 Nanometer Chip Technology</a></li>
<li><a href="https://research.ibm.com/blog/sub-1nm-node-chips">IBM introduces the smallest computer chip in the world - IBM Research</a></li>
<li><a href="https://www.zdnet.com/education/computers-tech/ibm-claims-beyond-nanometer-milestone-with-sub-1-nm-nanostack-chip-architecture/">IBM says it can fit nearly 100 billion transistors on a chip - why the milestone matters | ZDNET</a></li>

</ul>
</details>

**Discussion**: Community comments are largely skeptical. Buran77 notes that node names no longer reflect physical dimensions, and jadar clarifies that 0.7nm refers to density doubling, not actual transistor size. Monirmamoun criticizes IBM's credibility, citing past 'teleportation' ads, while victor106 questions who uses IBM chips. Alexey-salmin is surprised IBM still has silicon labs.

**Tags**: `#semiconductors`, `#IBM`, `#chip manufacturing`, `#nanotechnology`, `#node scaling`

---

<a id="item-6"></a>
## [Half-Life 2 Runs in Browser via WebAssembly](https://hl2.slqnt.dev/) ⭐️ 7.0/10

A WebAssembly port of Half-Life 2, hosted at hl2.slqnt.dev, now allows the game to run directly in a web browser without any installation or downloads. This demonstration shows that even complex, graphics-intensive games can be effectively emulated in the browser, potentially making classic titles accessible on any device with a modern browser. The port uses WebAssembly to run the game's original 32-bit binaries, but the rendering is not fully accurate—some shaders, including those for character eyes, are missing. The project is described in a blog post by its creator.

hackernews · panza · Jun 25, 06:00 · [Discussion](https://news.ycombinator.com/item?id=48669534)

**Background**: WebAssembly (Wasm) is a low-level binary instruction format designed to run high-performance applications on the web. It allows languages like C++ to be compiled into a format that browsers can execute at near-native speed. The Half-Life 2 port follows earlier browser-based ports of other classic games, such as Quake 3 and Unreal Tournament.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/WebAssembly">WebAssembly</a></li>
<li><a href="https://webassembly.org/">WebAssembly</a></li>

</ul>
</details>

**Discussion**: The community is impressed by the technical achievement, with commenters linking to other browser-based game ports like Quake 3 and Unreal Tournament. Some note that the rendering is not as accurate as dedicated tools like noclip.website, and a macOS user points out that this port works on their system while the native Steam version does not due to 32-bit support being dropped.

**Tags**: `#WebAssembly`, `#Gaming`, `#Browser Port`, `#Half-Life 2`, `#Tech Demo`

---

<a id="item-7"></a>
## [Browser compat data converted to SQLite](https://simonwillison.net/2026/Jun/24/browser-compat-db/#atom-everything) ⭐️ 7.0/10

Simon Willison released a tool that converts Mozilla's browser-compat-data repository into a SQLite database, using an AI-generated script from Claude Code for web and a GitHub Actions workflow for hosting. This makes browser compatibility data easily queryable via SQL, enabling developers to quickly answer questions about feature support across browsers without manual parsing of JSON files. The resulting ~66MB SQLite database is hosted on a GitHub orphan branch with open CORS headers, allowing direct querying via Datasette Lite. The build script was generated by Claude Code for web (Opus 4.8) and uses sqlite-utils.

rss · Simon Willison · Jun 24, 23:59

**Background**: Mozilla maintains a comprehensive browser-compat-data repository that tracks feature support across browsers. The new MDN MCP service provides AI-assisted access to this data. This project converts the data into a SQLite database for easier local querying.

<details><summary>References</summary>
<ul>
<li><a href="https://github.com/mdn/mcp">GitHub - mdn/mcp: MDN's prototype MCP server · GitHub</a></li>
<li><a href="https://sqlite-utils.datasette.io/">sqlite - utils</a></li>
<li><a href="https://simonwillison.net/2025/Oct/20/claude-code-for-web/">Claude Code for web—a new asynchronous coding agent from</a></li>

</ul>
</details>

**Tags**: `#browser-compatibility`, `#SQLite`, `#Mozilla`, `#developer-tools`

---

<a id="item-8"></a>
## [OS9Map brings online maps to classic Mac OS 9](https://yllan.org/software/OS9Map/) ⭐️ 6.0/10

OS9Map 1.0.0 was released on June 21, 2026, allowing classic Mac OS 9 systems to browse OpenStreetMap, search locations, and save bookmarks. This project demonstrates ongoing development for legacy systems, keeping retro hardware useful and engaging the classic Mac community. It requires a PowerPC processor, at least 16 MB of RAM (32 MB recommended), an Internet connection via Open Transport, and uses Nominatim for place search.

hackernews · LaSombra · Jun 25, 15:01 · [Discussion](https://news.ycombinator.com/item?id=48674484)

**Background**: Mac OS 9 is the final release of Apple's classic Mac OS, introduced in 1999 and discontinued in 2001. It lacks protected memory and full preemptive multitasking, but a dedicated retro community still develops software for it today.

<details><summary>References</summary>
<ul>
<li><a href="https://yllan.org/software/OS9Map/">yllan.org › software › OS9Map OS9Map | yllan's stories</a></li>
<li><a href="https://www.ic.work/article/os9map-1-0-0-brings-online-maps-to-mac-os-9">www.ic.work › article › os9map -1/0/0-brings-online-maps-to-mac OS9Map 1.0.0：2026 年了，Mac OS 9 还能打开一张在线地图</a></li>
<li><a href="https://en.wikipedia.org/wiki/Mac_OS_9">Mac OS 9</a></li>

</ul>
</details>

**Discussion**: Comments are positive, with users sharing similar projects like LegacyAI that brings LLM integration to classic Macs. Some express interest in the source code and underlying libraries, while others plan to dust off old PowerPC hardware to try OS9Map.

**Tags**: `#retro computing`, `#macOS`, `#legacy software`, `#mapping`

---

<a id="item-9"></a>
## [Apple raises MacBook and iPad prices due to memory cost surge](https://www.reuters.com/world/asia-pacific/apple-raises-prices-macbooks-ipads-memory-costs-skyrocket-2026-06-25/) ⭐️ 6.0/10

On June 25, 2026, Apple implemented price increases across its MacBook and iPad lineup, with hikes ranging from $100 to over $1,000, citing skyrocketing memory costs. This price adjustment reflects a broader industry trend of rising component costs driven by AI demand for memory chips, potentially dampening consumer demand and accelerating inflation in the electronics sector. Specific increases include the MacBook Neo from $599 to $699, the 13-inch MacBook Air from $1,099 to $1,299, and the M3 Ultra Mac Studio from $3,999 to $5,299. iPad prices also rose, with the base iPad increasing from $349 to $449.

hackernews · virgildotcodes · Jun 25, 13:02 · [Discussion](https://news.ycombinator.com/item?id=48672732)

**Background**: Memory chip prices, particularly DRAM and NAND, have surged in 2026 due to high demand from AI applications and constrained supply. According to TrendForce, PC DRAM contract prices grew significantly in Q2 2026, with the upward trend expected to continue. This component cost increase is forcing device manufacturers like Apple to pass on costs to consumers.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/2025–present_global_memory_supply_shortage">2025–present global memory supply shortage - Wikipedia</a></li>
<li><a href="https://www.trendforce.com/price/dram/dram_spot">DRAM Price Trends | TrendForce</a></li>
<li><a href="https://www.idc.com/resource-center/blog/global-memory-shortage-crisis-market-analysis-and-the-potential-impact-on-the-smartphone-and-pc-markets-in-2026/">IDC - Global Memory Shortage Crisis: Market Analysis and the Potential Impact on the Smartphone and PC Markets in 2026</a></li>

</ul>
</details>

**Discussion**: Community comments expressed frustration and concern, with users noting the severity of the hikes and worrying about broader industry price increases. Some commenters offered historical perspective on computing costs, while others speculated that AI-driven memory demand is the root cause, potentially triggering a hoarding frenzy.

**Tags**: `#Apple`, `#pricing`, `#MacBooks`, `#iPads`, `#memory costs`

---

<a id="item-10"></a>
## [Windows 10 gets one more year of support amid Windows 11 backlash](https://www.neowin.net/news/windows-10-quietly-gets-one-more-year-of-support-and-updates/) ⭐️ 6.0/10

Microsoft has quietly extended Windows 10 support by an additional year, allowing users who cannot upgrade to Windows 11 due to strict hardware requirements to continue receiving security updates. This move acknowledges the community's frustration with Windows 11's TPM 2.0 and Secure Boot requirements, which left many computers unsupported. It may reduce pressure on users to upgrade or switch to alternative operating systems like Linux. The extension is one additional year beyond the original end-of-support date, but specific dates were not disclosed. Users who choose to stay on Windows 10 will still miss out on new features and performance improvements available in Windows 11.

hackernews · bundie · Jun 25, 15:59 · [Discussion](https://news.ycombinator.com/item?id=48675369)

**Background**: Windows 11, released in 2021, requires TPM 2.0 and Secure Boot for installation, which many older computers lack. This has led to a significant portion of users remaining on Windows 10, despite Microsoft's push for adoption. The extension offers a temporary reprieve for those unable or unwilling to upgrade.

<details><summary>References</summary>
<ul>
<li><a href="https://support.microsoft.com/en-us/windows/enable-tpm-2-0-on-your-pc-1fd5a332-360d-4f46-a1e7-ae6b0c90645c">support.microsoft.com › en-us › windows Enable TPM 2.0 on your PC - Microsoft Support</a></li>

</ul>
</details>

**Discussion**: Community comments reflect strong frustration with Microsoft's strategy, with some users switching to Linux distributions like Fedora or Ubuntu. Others pointed out that Windows 10 IoT Enterprise LTSC 2021 already offers security updates until 2032, undermining the significance of the one-year extension.

**Tags**: `#Windows 10`, `#Microsoft`, `#support`, `#TPM`, `#Linux`

---

<a id="item-11"></a>
## [Proposal for a Dense Token Programming Language for LLMs](https://www.reddit.com/r/MachineLearning/comments/1ufgw7z/would_having_a_dedicated_programming_language/) ⭐️ 6.0/10

A Reddit user proposed creating a new programming language where each token carries dense semantic meaning, which could enable LLMs to write robust code with fewer tokens and faster inference. If feasible, such a language could significantly improve LLM inference speed and reduce costs, and allow more code to fit within limited context windows, benefiting developers and AI systems. The proposal identifies three benefits: faster inference due to fewer tokens, increased effective context size, and reduced noise from syntax like semicolons and braces. No implementation details or training data requirements are provided.

reddit · r/MachineLearning · /u/Spongebubs · Jun 25, 17:38

**Background**: LLMs process text in tokens, and token count directly impacts inference speed and cost. Current programming languages like Python are designed for human readability, often using verbose syntax. A language with denser token semantics could theoretically encode more meaning per token, but would require specialized training data and may be harder for humans to read.

**Tags**: `#LLM`, `#programming languages`, `#token efficiency`, `#inference optimization`, `#speculation`

---