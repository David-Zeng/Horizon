---
layout: default
title: "Horizon Summary: 2026-06-30 (ZH)"
date: 2026-06-30
lang: zh
---

> 从 22 条内容中筛选出 17 条重要资讯。

---

1. [Claude Code 秘密嵌入隐写标记](#item-1) ⭐️ 8.0/10
2. [Anthropic 发布面向数据科学的 Claude Science](#item-2) ⭐️ 8.0/10
3. [Google DeepMind 推出 Flash Lite：超快图像生成模型](#item-3) ⭐️ 8.0/10
4. [PostgreSQL 19 功能预览](#item-4) ⭐️ 8.0/10
5. [Waag 将 Bluesky 数据迁移至自托管 PDS Eurosky](#item-5) ⭐️ 8.0/10
6. [欧盟数字身份钱包依赖于谷歌和苹果的安全服务](#item-6) ⭐️ 8.0/10
7. [ZLUDA 6 发布：在非 Nvidia GPU 上运行未修改的 CUDA 应用](#item-7) ⭐️ 8.0/10
8. [shot-scraper video 录制 AI 代理驱动的 Web 应用演示视频](#item-8) ⭐️ 8.0/10
9. [1.1 亿篇论文按语义相似度和时间切片映射](#item-9) ⭐️ 8.0/10
10. [拥有 37 个数据中心的弗吉尼亚县要求学校节约用电](#item-10) ⭐️ 7.0/10
11. [1852 年的经典：群体狂热与金融泡沫](#item-11) ⭐️ 7.0/10
12. [报道称，加密公司已为 2026 年美国大选投入 1.89 亿美元](#item-12) ⭐️ 7.0/10
13. [Claude Sonnet 5 发布受批评：成本与性能倒退](#item-13) ⭐️ 6.0/10
14. [免费计算机视觉面试清单新增分割、OCR 和 VLM 方向](#item-14) ⭐️ 6.0/10
15. [EACL 2027 将作者回复和讨论分为两个阶段](#item-15) ⭐️ 6.0/10
16. [对比学习中为什么用 NCE 而不是直接近似分母？](#item-16) ⭐️ 6.0/10
17. [LLM 研究论文是否过长且缺乏数学？](#item-17) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [Claude Code 秘密嵌入隐写标记](https://thereallo.dev/blog/claude-code-prompt-steganography) ⭐️ 8.0/10

一名开发者发现，Anthropic 的 AI 编程助手 Claude Code 在其 API 请求中嵌入了不可见的隐写标记，可能用于检测滥用行为，例如未经授权的模型蒸馏。 这一发现引发了对 AI 工具透明性和信任的严重担忧，因为用户并未被告知有隐写数据被发送到 Anthropic 的服务器，可能影响隐私和伦理使用。 这些标记可能通过不可见的 Unicode 字符实现，这种技术被称为 ASCII 走私（ASCII smuggling），可以在不改变可见内容的情况下在纯文本中嵌入隐藏数据。

hackernews · kirushik · 6月30日 15:44 · [社区讨论](https://news.ycombinator.com/item?id=48734373)

**背景**: 隐写术是一种将信息隐藏在看似无害的数据中的做法。在 AI 的背景下，它可以用于在文本中嵌入不可见的标记，模型可以读取但用户无法察觉。Claude Code 是一个命令行工具，它在向 Anthropic 的 API 发送提示之前会加上系统指令。这种技术类似于提示注入攻击中用于隐藏恶意负载的方法。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://netlok.com/the-rise-of-steganography-bots-and-ai-strategic-analysis-for-2025/">The Rise of Steganography Bots and AI: Strategic Analysis for</a></li>
<li><a href="https://owlcyberdefense.com/blog/hidden-threats-in-ai-data-protecting-against-steganography/">Hidden Threats in AI Data: Protecting Against Steganography</a></li>

</ul>
</details>

**社区讨论**: Hacker News 社区的评论褒贬不一：一些人认为这种做法是必要的，可以防止中国公司的模型蒸馏，而另一些人则批评缺乏诚实披露，并担心隐私影响。一些评论者建议使用 Codex CLI 等替代工具，这些工具是开源的，因此不太可能进行此类隐藏行为。

**标签**: `#steganography`, `#Claude Code`, `#AI transparency`, `#ethics`, `#software engineering`

---

<a id="item-2"></a>
## [Anthropic 发布面向数据科学的 Claude Science](https://claude.com/product/claude-science) ⭐️ 8.0/10

Anthropic 发布了新产品 Claude Science，它运行一个带有 Web 界面的本地服务器，用于数据科学，并整合了数据库和高性能计算（HPC）集群。 该产品对于制药研究等受限制环境具有战略意义，这些环境无法通过云访问敏感数据。它能在不牺牲数据隐私的情况下，实现安全的本地 AI 辅助数据分析。 与 Claude Code 或 Cowork 不同，Claude Science 运行本地服务器并通过基于浏览器的界面连接，适用于离线环境。它支持数据库、HPC 集群，并能处理基于图像的数据可视化任务。

hackernews · lebovic · 6月30日 17:07 · [社区讨论](https://news.ycombinator.com/item?id=48735770)

**背景**: 传统 AI 工具通常需要云连接，这对处理敏感数据的行业来说是个问题。Claude Science 的本地架构允许直接将 AI 能力部署在机构网络内，兼具灵活性和安全性。HPC 集群用于分子建模和药物发现等复杂计算任务。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/news/claude-for-life-sciences">anthropic.com/news/claude-for-life-sciences</a></li>
<li><a href="https://en.wikipedia.org/wiki/High-performance_computing">High-performance computing - Wikipedia</a></li>

</ul>
</details>

**社区讨论**: 开发者指出该架构专为受限制的制药环境设计。有人担心 AI 工具主导了讨论，使焦点偏离了原本的科学话题。其他人则强调了图像理解在探索性数据分析中的价值，这是一个此前未被充分重视的用例。

**标签**: `#Claude Science`, `#Anthropic`, `#AI Tools`, `#Data Science`, `#Scientific Computing`

---

<a id="item-3"></a>
## [Google DeepMind 推出 Flash Lite：超快图像生成模型](https://deepmind.google/models/gemini-image/flash-lite/) ⭐️ 8.0/10

Google DeepMind 发布了 Nano Banana 2 Lite（也称 Gemini 3.1 Flash-Lite），这是一个经过蒸馏的图像生成模型，能够在 5 秒内生成图像，速度比基础版 Nano Banana 2 快得多。 这一突破使得高质量图像生成能够应用于实时场景，并将成本降至每千张图像 0.034 美元，从而支持更广泛的企业和消费者使用。 Flash Lite 是 Nano Banana 2 的蒸馏版本，保留了良好的文本渲染能力，但在处理高细节提示时不如基础模型。目前无法通过编程方式控制宽高比。

hackernews · minimaxir · 6月30日 16:48 · [社区讨论](https://news.ycombinator.com/item?id=48735444)

**背景**: 模型蒸馏是一种将知识从大型、强大的模型转移到更小、更快的模型的技术，使其能够在性能较低的硬件上运行。Google DeepMind 的 Flash Lite 就是这样一个例子，它压缩了 Nano Banana 2 模型以提高速度和成本效率。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://venturebeat.com/technology/google-unveils-nano-banana-2-lite-aka-gemini-3-1-flash-lite-for-low-cost-4-second-fast-enterprise-image-generations">Google unveils Nano Banana 2 Lite aka Gemini 3.1 Flash-Lite for low cost, 4-second fast enterprise image generations | VentureBeat</a></li>
<li><a href="https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-omni-flash-nano-banana-2-lite/">Start building with Nano Banana 2 Lite and Gemini Omni Flash</a></li>
<li><a href="https://en.wikipedia.org/wiki/Model_distillation">Model distillation</a></li>

</ul>
</details>

**社区讨论**: 社区成员对速度印象深刻，一位用户报告每张图像生成时间不到 5 秒，而基础版 NB2 需要约 30 秒。但也有用户担忧其在房地产列表中的滥用，还有人指出其缺乏宽高比控制、在高细节提示上表现不佳等限制。

**标签**: `#AI`, `#image generation`, `#Google DeepMind`, `#machine learning`, `#model distillation`

---

<a id="item-4"></a>
## [PostgreSQL 19 功能预览](https://www.snowflake.com/en/blog/engineering/postgresql-19-features-beta/) ⭐️ 8.0/10

PostgreSQL 19 预计将原生支持基于 SQL:2011 标准的时间表，并带来显著的 COPY 命令改进和逻辑复制增强。 这些功能满足了社区长期以来的诉求，使 PostgreSQL 在历史数据分析和大规模复制方面更具竞争力，并改善了日常数据工作流。 PostgreSQL 19 中的时间表将提供系统时间和应用时间支持，COPY 改进可能包括并行和二进制增强。逻辑复制增强可能降低延迟，并增加过滤和模式变更的灵活性。

hackernews · thinkingemote · 6月30日 14:14 · [社区讨论](https://news.ycombinator.com/item?id=48733031)

**背景**: 时间表允许查询数据在任意时间点的状态，常用于审计和历史分析。PostgreSQL 长期以来通过扩展支持时间数据，但原生支持符合 SQL:2011 标准。逻辑复制在 PostgreSQL 10 中引入，将插入、更新和删除操作从发布者流式传输到一个或多个订阅者，支持实时数据集成和高可用性。版本 19 的增强旨在提升操作便利性和性能。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://pgxn.org/dist/temporal_tables/">temporal_tables: Temporal Tables Extension / PostgreSQL Extension Network</a></li>
<li><a href="https://www.postgresql.org/docs/current/logical-replication.html">PostgreSQL: Documentation: 18: Chapter 29. Logical Replication</a></li>

</ul>
</details>

**社区讨论**: 社区成员对原生时间表以及改进的 COPY/逻辑复制表现出浓厚兴趣，但也对缺乏内置列式存储和原地大版本升级表示担忧，这些仍是许多用户的痛点。

**标签**: `#PostgreSQL`, `#database`, `#SQL`, `#open source`, `#version 19`

---

<a id="item-5"></a>
## [Waag 将 Bluesky 数据迁移至自托管 PDS Eurosky](https://waag.org/en/article/why-we-moved-our-bluesky-data-eurosky/) ⭐️ 8.0/10

荷兰研究机构 Waag 将其 Bluesky 账户数据迁移到了名为 Eurosky 的自托管个人数据服务器（PDS）上，展示了 AT Protocol 所承诺的数据可移植性。 这一举动验证了 Bluesky 的去中心化愿景，表明用户确实可以控制自己的数据并切换服务商。同时，它也引发了关于风险资本在去中心化基础设施中作用的讨论。 此次迁移使用了 Bluesky 官方的自托管工具，Eurosky 是欧洲构建主权社交网络基础设施计划的一部分。该过程需要技术专业知识来设置和维护 PDS。

hackernews · dotcoma · 6月30日 15:17 · [社区讨论](https://news.ycombinator.com/item?id=48733937)

**背景**: Bluesky 是基于 AT Protocol（身份验证传输协议）构建的去中心化社交网络，该协议使用户能够拥有自己的数据并在不同服务商之间迁移。个人数据服务器（PDS）是存储用户数据的服务器，可以自托管，从而实现完全控制。AT Protocol 旨在通过促进可互操作的服务生态系统来解决社交媒体中的中心化问题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/AT_Protocol">AT Protocol</a></li>
<li><a href="https://github.com/bluesky-social/pds">GitHub - bluesky-social/pds: Bluesky PDS (Personal Data Server)</a></li>
<li><a href="https://eurosky.tech/">Eurosky – mu is here. The first of a thousand social apps.</a></li>

</ul>
</details>

**社区讨论**: 评论者表达了不同观点：一些人称赞此举是去中心化的实际示范，而另一些人则质疑其新颖性，因为自托管本就是 AT Protocol 的核心功能。有人对批评风险资本融资的观点提出反驳，认为互联网等大型去中心化系统正是由风投支持的公司建立的。

**标签**: `#Bluesky`, `#AT Protocol`, `#decentralization`, `#self-hosting`, `#social media`

---

<a id="item-6"></a>
## [欧盟数字身份钱包依赖于谷歌和苹果的安全服务](https://waag.org/en/article/european-digital-id-wallets-are-gift-google-and-apple/) ⭐️ 8.0/10

欧盟数字身份钱包（如 EU Digital Identity Wallet 框架下的钱包）被发现依赖于 Google Play Integrity API 和 Apple DeviceCheck 来保障安全，这引发了关于数字主权的担忧。这种依赖在参考实现和意大利的 IO 应用等国家应用中显而易见，这些应用要求使用 Google Play 服务。 这种依赖性破坏了欧洲的数字主权目标，将关键身份基础设施的控制权交给了两家美国公司。这可能影响隐私、安全以及用户选择替代操作系统或设备的能力。 EUDI 钱包在 Android 上的参考实现明确要求 Google Play Integrity API，而意大利的 IO 应用因这一要求拒绝支持 GrapheneOS。此外，对远程证明的依赖引发了关于政府过度干预和潜在滥用的担忧。

hackernews · donohoe · 6月30日 10:36 · [社区讨论](https://news.ycombinator.com/item?id=48730729)

**背景**: 欧盟数字身份钱包（EUDI Wallet）是一项由欧盟法规强制要求的移动身份系统，允许公民跨境证明身份和共享属性。它依赖于平台安全功能，如 Google Play Integrity API（用于 Android）和 Apple DeviceCheck（用于 iOS），以验证设备完整性和应用真实性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/EU_Digital_Identity_Wallet">EU Digital Identity Wallet</a></li>
<li><a href="https://commission.europa.eu/topics/digital-economy-and-society/european-digital-identity_en">commission.europa. eu › european- digital -identity_en European Digital Identity - European Commission</a></li>
<li><a href="https://developer.android.com/google/play/integrity">developer.android.com › google › play Play Integrity API | Android Developers</a></li>

</ul>
</details>

**社区讨论**: 社区评论表达了对数字主权的强烈担忧，许多人指出欧洲的数字身份系统依赖于美国公司。一些用户认为这赋予了政府控制可接受操作系统的权力，而另一些人则认为这是监管失败，导致了垄断。

**标签**: `#digital identity`, `#digital sovereignty`, `#privacy`, `#European regulation`, `#mobile security`

---

<a id="item-7"></a>
## [ZLUDA 6 发布：在非 Nvidia GPU 上运行未修改的 CUDA 应用](https://vosen.github.io/ZLUDA/blog/zluda-update-q1q2-2026/) ⭐️ 8.0/10

ZLUDA 6 已发布，允许在非 Nvidia GPU 上运行未修改的 CUDA 应用，现作为周末项目开发，不再有商业资金支持。新功能包括 32 位 PhysX 支持以及其他先前不在路线图内的特性，这些均由开发者的个人兴趣驱动。 此版本扩展了依赖 CUDA 的软件的 GPU 兼容性，可能减少供应商锁定，为用户提供更广泛的硬件选择。32 位 PhysX 支持的加入尤为引人注目，因为 Nvidia 此前曾试图从 5000 系列驱动中移除该功能。 ZLUDA 6 是一个翻译层，可将 CUDA 指令转换为 AMD ROCm 或其他平台的调用，无需修改代码。该项目现由原作者作为业余爱好独自维护，优先级从商业可行性转向技术趣味性。

hackernews · Tiberium · 6月30日 10:34 · [社区讨论](https://news.ycombinator.com/item?id=48730713)

**背景**: CUDA 是 Nvidia 的专有并行计算平台，广泛应用于 AI、科学计算和游戏领域。像 ZLUDA 这样的翻译层能够将 CUDA 调用解释给其他 GPU，使专为 Nvidia 设计的软件能在 AMD 或 Intel 硬件上运行。Nvidia 此前曾更新许可条款以限制此类翻译层，这使得 ZLUDA 在法律和技术上都是一个引人注目的项目。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.techpowerup.com/319984/nvidia-cracks-down-on-cuda-translation-layers-changes-licensing-terms">NVIDIA Cracks Down on CUDA Translation Layers, Changes</a></li>
<li><a href="https://community.topazlabs.com/t/topaz-video-ai-v4-1-1/61704?page=11">Topaz Video AI v4.1.1 - Page 11 - Releases - Topaz Community</a></li>

</ul>
</details>

**社区讨论**: 社区赞赏开发者对趣味性和技术挑战的专注，有用户指出名称中的波兰语双关（Złuda 意为“幻影”）。另一评论强调了 32 位 PhysX 支持的重要性，尤其是考虑到 Nvidia 曾短暂尝试放弃该功能。还有用户询问在 LLM 场景下与 Vulkan 的性能比较。

**标签**: `#CUDA`, `#GPU`, `#translation layer`, `#open source`, `#PhysX`

---

<a id="item-8"></a>
## [shot-scraper video 录制 AI 代理驱动的 Web 应用演示视频](https://simonwillison.net/2026/Jun/30/shot-scraper-video/#atom-everything) ⭐️ 8.0/10

shot-scraper 1.10 引入了 `shot-scraper video` 命令，它接受一个 storyboard YAML 文件，并使用 Playwright 录制针对 Web 应用程序定义的操作流程的视频。 该工具使编码代理能够生成其工作的视频演示，解决了测试和文档自动化中的实际问题。它帮助开发者和代理证明功能按预期工作。 storyboard YAML 文件指定了输出路径、服务器命令、URL、视口大小、光标可见性、可选的 JavaScript 覆盖以及包含暂停和点击等动作的场景。视频默认录制为 WebM 格式，使用 --mp4 参数可转换为 MP4。

rss · Simon Willison · 6月30日 16:54

**背景**: shot-scraper 是一个基于 Playwright 的浏览器自动化工具，最初设计用于为文档截图。视频命令将其扩展到录制演示，特别适用于需要展示其结果的 AI 代理。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://simonwillison.net/2022/Mar/10/shot-scraper/">shot-scraper: automated screenshots for documentation, built on Playwright</a></li>
<li><a href="https://fedi.simonwillison.net/@simon/116840107518193284">Simon Willison: "I've added video support to my…" - Mastodon</a></li>

</ul>
</details>

**标签**: `#automation`, `#testing`, `#devtools`, `#web development`, `#AI agents`

---

<a id="item-9"></a>
## [1.1 亿篇论文按语义相似度和时间切片映射](https://www.reddit.com/r/MachineLearning/comments/1ujn3u5/a_map_of_the_latest_11_million_papers_split_by/) ⭐️ 8.0/10

该项目创建了一个免费的交互式地图，涵盖来自 OpenAlex 和 arXiv 的 1100 万篇科学论文，使用 SPECTER2 嵌入和 UMAP 投影，支持时间滑动探索并每日自动更新数据。 该工具通过可视化宏观趋势并支持跨时间发现相关工作，帮助研究人员应对海量出版物，可能改变科学文献的探索方式。 该地图使用 SPECTER2 编码标题和摘要，UMAP 降维至 2D，并在高密度峰值周围生成 Voronoi 边界进行标注；支持关键词和语义查询，并提供机构、作者和主题等分析。

reddit · r/MachineLearning · /u/icannotchangethename · 6月30日 11:55

**背景**: SPECTER2 是一族在科学论文上微调的模型，用于生成捕捉语义相似性的嵌入，常用于检索和聚类。UMAP（均匀流形近似与投影）是一种降维技术，能同时保留局部和全局结构，适合可视化高维数据。Voronoi 图根据到一组点的距离将平面划分成区域，此处用于在论文聚类周围创建标注区域。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/allenai/specter2">allenai/specter2 · Hugging Face</a></li>
<li><a href="https://en.wikipedia.org/wiki/Voronoi_diagram">Voronoi diagram</a></li>
<li><a href="https://datasciencediscovery.com/index.php/2018/09/18/umap/">UMAP - Best technique for Dimensionality Reduction? | Data</a></li>

</ul>
</details>

**标签**: `#machine learning`, `#scientific literature`, `#embeddings`, `#visualization`, `#research tools`

---

<a id="item-10"></a>
## [拥有 37 个数据中心的弗吉尼亚县要求学校节约用电](https://www.404media.co/henrico-virginia-datacenter-energy-cost-email/) ⭐️ 7.0/10

弗吉尼亚州亨里科县拥有 37 个数据中心，因电网容量紧张及数据中心行业需求激增，已要求当地学校节约用电。 此事凸显了数据中心能源消耗与公共基础设施之间的日益紧张关系，可能导致居民成本上升，并引发对可再生能源转型政策的审视。 该县的请求正值美国过去二十年发电量增长趋于平缓之际，而 Dominion Energy 根据《弗吉尼亚清洁经济法案》大力投资的可再生能源项目尚未投入运营。

hackernews · 01-_- · 6月30日 16:05 · [社区讨论](https://news.ycombinator.com/item?id=48734699)

**背景**: 数据中心是容纳计算机系统的设施，需要大量电力用于计算和冷却。数据中心的快速扩张给当地电网带来压力，导致节约用电请求和电价上涨。弗吉尼亚州因税收优惠和靠近互联网基础设施而成为数据中心枢纽。

**社区讨论**: 评论者指出，《弗吉尼亚清洁经济法案》迫使 Dominion 投资可再生能源，导致短期电价上涨。还有人对不同地区的电价进行比较，认为弗吉尼亚的需求电费较低但每千瓦时电费较高。一些人批评科技公司将成本转嫁给消费者，预测将引发政治反弹。

**标签**: `#data centers`, `#energy consumption`, `#renewable energy`, `#infrastructure`, `#policy`

---

<a id="item-11"></a>
## [1852 年的经典：群体狂热与金融泡沫](https://www.gutenberg.org/ebooks/24518) ⭐️ 7.0/10

一本 1852 年的经典著作，探讨历史上的金融泡沫和群体心理学，最近在在线讨论中重新出现，社区成员正在争论其历史准确性和现代相似之处。 这场讨论突显了金融市场中人类非理性的持久性，与当今科技和 AI 投资狂热相关，并强调了理解群体心理学对软件工程师和投资者的价值。 这本书由查尔斯·麦基（Charles Mackay）撰写，以其生动但经常添油加醋的描述而闻名，尤其是关于荷兰郁金香狂热的部分；评论家指出，现代研究对其规模提出了质疑。

hackernews · lstodd · 6月30日 12:47 · [社区讨论](https://news.ycombinator.com/item?id=48731989)

**背景**: 这本书是一本关于历史金融泡沫和集体妄想（如南海泡沫和密西西比公司）的论文集。它被广泛引用在讨论非理性行为和市场低效中，尽管一些历史学家提醒说麦基为了效果夸大了事件。

**社区讨论**: 社区评论赞扬了该书的娱乐价值，但对其历史准确性提出批评，特别是关于郁金香泡沫的部分。一位用户推荐了约翰·肯尼思·加尔布雷思的类似著作，另一位则反思了心理学课程在理解非理性方面的价值。

**标签**: `#finance`, `#history`, `#psychology`, `#bubbles`, `#classic literature`

---

<a id="item-12"></a>
## [报道称，加密公司已为 2026 年美国大选投入 1.89 亿美元](https://www.reuters.com/world/crypto-firms-have-spent-189-million-so-far-2026-us-election-report-says-2026-06-30/) ⭐️ 7.0/10

一份报告显示，加密货币公司及行业参与者已为 2026 年美国大选周期总计投入 1.89 亿美元，主要通过像 Fairshake 这样的超级政治行动委员会来支持支持加密货币的候选人。 这一巨额支出凸显了加密行业在寻求有利监管时日益增长的政治影响力，同时也引发了人们对金钱政治和潜在利益冲突的担忧。 最大的捐赠方包括风险投资公司 Andreessen Horowitz (a16z)，捐赠超过 5100 万美元，以及加密公司 Ripple 捐赠 2500 万美元。Fairshake PAC 网络在 2026 年周期内总共筹集了超过 1.9 亿美元。

hackernews · tartoran · 6月30日 16:44 · [社区讨论](https://news.ycombinator.com/item?id=48735376)

**背景**: 政治行动委员会（PAC）汇集竞选捐款以支持或反对候选人。超级 PAC 可以筹集无限资金，但不能与候选人直接协调。Fairshake 是一个著名的专注于加密货币的超级 PAC，自 2024 年选举周期以来一直活跃，旨在选举支持加密货币的立法者。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.politico.com/live-updates/2026/01/28/congress/crypto-super-pac-war-chest-00752834">www.politico.com › crypto -super- pac -war-chest-00752834 Crypto super PAC group expands war chest to more than $190M</a></li>
<li><a href="https://www.theblock.co/data/alternative-crypto-metrics/politics/crypto-pac-total-raised-per-committee">www.theblock.co › crypto - pac -total-raised-per- committee Crypto PAC Total Raised per Committee (2024 and 2026 Cycles)</a></li>

</ul>
</details>

**社区讨论**: 社区评论褒贬不一：有人指出文章将 a16z 归类为“加密公司”可能具有误导性，实际上它是一家风险投资公司。还有人讨论了一起相关的英国丑闻，涉及一位加密货币捐赠者向政党领袖个人提供 500 万英镑。同时，对美国最高法院允许无限协调支出的裁决表示担忧，认为这加剧了金钱在政治中的影响。

**标签**: `#crypto`, `#politics`, `#election`, `#regulation`, `#finance`

---

<a id="item-13"></a>
## [Claude Sonnet 5 发布受批评：成本与性能倒退](https://www.anthropic.com/news/claude-sonnet-5) ⭐️ 6.0/10

Anthropic 发布了 Claude Sonnet 5，号称是最具代理能力的 Sonnet 模型，在规划、工具使用和自主操作方面有增强。 此次发布意义重大，因为 Sonnet 是中端主力模型，其成本效益权衡直接影响依赖 Anthropic API 进行代理任务的开发者和企业。 社区对每任务成本图的分析显示，在大多数努力级别下，Opus 以相同成本表现优于 Sonnet 5；该模型在漏洞发现方面出现倒退，在默认安全措施下 CyberGym 得分为零。

hackernews · marinesebastian · 6月30日 17:59 · [社区讨论](https://news.ycombinator.com/item?id=48736605)

**背景**: Anthropic 的 Claude 模型家族包括三个规模：Haiku（最小）、Sonnet（中端）和 Opus（最强），另有针对特定企业客户的 Mythos 模型。代理 AI 指能在定义约束内自主追求目标、使用工具并采取行动的 AI 系统。LLM 漏洞发现是检测代码安全缺陷的挑战性领域，近期研究显示进展有限。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Agentic_AI">Agentic AI</a></li>
<li><a href="https://en.wikipedia.org/wiki/Claude_Opus">Claude Opus</a></li>
<li><a href="https://arxiv.org/abs/2509.19117">arxiv.org › abs › 2509 LLM-based Vulnerability Discovery through the Lens of Code... arxiv.org › abs › 2511 VulInstruct: Teaching LLMs Root-Cause Reasoning for Vulnerability... dl.acm.org › doi › 10 LLMs in Software Security: A Survey of Vulnerability Detection... github.com › huhusmang › Awesome- LLMs -for- Vulnerability -Detection GitHub - huhusmang/Awesome-LLMs-for-Vulnerability-Detection: The... link.springer.com › article › 10 Large language models for software vulnerability detection ... -... ieeexplore.ieee.org › document › 11146900 Towards Explainable Vulnerability Detection With Large Language... dlnext.acm.org › doi › 10 LLMs in Code Vulnerability Analysis: A Proof of Concept</a></li>

</ul>
</details>

**社区讨论**: 社区情绪普遍负面，用户指出 Opus 提供更好的成本效益，且 Sonnet 5 在漏洞发现上比 Sonnet 4.6 倒退。一些用户质疑在更高努力级别下为何有人会用 Sonnet 5 而非 Opus，少数人则认为若将任务分解，它算是不错的增量更新。

**标签**: `#AI`, `#model release`, `#agentic AI`, `#cost-performance`, `#Claude`

---

<a id="item-14"></a>
## [免费计算机视觉面试清单新增分割、OCR 和 VLM 方向](https://www.reddit.com/r/MachineLearning/comments/1ujlmy2/update_on_cvil_the_free_cv_interview_prep/) ⭐️ 6.0/10

作者更新了免费资源 CVIL（计算机视觉面试清单），新增三个专业方向：分割（Segmentation）、光学字符识别（OCR）和视觉语言模型（VLM）。同时优化了结构并添加了贡献指南。 此次更新使 CVIL 成为面向计算机视觉岗位求职者的更全面的免费资源，覆盖了视觉语言模型等新兴且需求旺盛的领域。它帮助候选人高效地将面试准备聚焦在最相关的主题上。 新增方向加入了原有的行人重识别（ReID）和部署等方向，作者鼓励社区贡献 3D 视觉、姿态估计等其他方向。该清单按阶段组织，从数学基础开始，经过 CNN、ViT、检测、跟踪，再到专业方向。

reddit · r/MachineLearning · /u/PolarIceBear_ · 6月30日 10:40

**背景**: CVIL（计算机视觉面试清单）是一个 GitHub 仓库，提供计算机视觉和机器学习面试的结构化学习计划。它不是教科书，而是学习主题的地图，包含针对不同角色的专业方向。视觉语言模型（VLM）结合了计算机视觉和自然语言处理，而行人对重识别（ReID）则跨摄像头匹配个体。这些都是计算机视觉中的高级主题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.roboflow.com/what-is-a-vision-language-model/">Popular Vision-Language Models: What Are VLMs?</a></li>
<li><a href="https://arxiv.org/abs/2601.20598">arxiv.org › abs › 2601 [2601.20598] Person Re-ID in 2025: Supervised, Self-Supervised,...</a></li>

</ul>
</details>

**标签**: `#computer vision`, `#interview preparation`, `#machine learning`, `#free resource`

---

<a id="item-15"></a>
## [EACL 2027 将作者回复和讨论分为两个阶段](https://www.reddit.com/r/MachineLearning/comments/1ujj63g/eacl_2027_author_response_and_authorreviewer/) ⭐️ 6.0/10

EACL 2027 在其征稿通知中宣布，将作者回复期（2026 年 9 月 14-19 日）与作者-审稿人讨论期（2026 年 9 月 20-24 日）分为两个独立的阶段，相比以往的 ARR 周期，每个阶段都分配了更多时间。 这一变化缓解了作者和审稿人在讨论期间的时间压力，允许更深入的交流，有可能提高 NLP/ML 社区审稿流程的质量。 之前的 ARR 周期，例如 2026 年 5 月的周期，总共只有五天时间用于作者回复和讨论，这对于开展额外实验或进行有意义的对话来说时间非常紧张。

reddit · r/MachineLearning · /u/S4M22 · 6月30日 08:16

**背景**: EACL 使用 ACL 滚动审稿（ARR）平台，该平台以两个月为周期实施集中式同行评审流程。传统上，ARR 周期包括一个单一的讨论期，作者在此回复审稿意见并与审稿人交流。新的两阶段方法旨在优化这一流程。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://aclrollingreview.org/">aclrollingreview.org ACL Rolling Review – A peer review platform for the Association...</a></li>

</ul>
</details>

**社区讨论**: Reddit 社区对这一变化表示强烈认可，原帖作者指出这是一个受欢迎的改进，为深思熟虑的回复提供了更多时间，并减轻了作者和审稿人的压力。

**标签**: `#ACL`, `#conference`, `#review process`, `#NLP`

---

<a id="item-16"></a>
## [对比学习中为什么用 NCE 而不是直接近似分母？](https://www.reddit.com/r/MachineLearning/comments/1uj8nse/loss_functions_in_instance_representation/) ⭐️ 6.0/10

一位 Reddit 用户质疑，在实例表示学习中，为什么使用噪声对比估计（NCE）而不是直接近似损失函数中的分母。 这个问题突出了对比学习损失函数中的一个微妙设计选择，它影响计算效率和估计偏差。理解这一点有助于澄清自监督学习方法中的权衡。 原始的非参数 softmax 损失由于图像数量巨大而不可行，因此 NCE 通过二元分类任务来近似。用户指出在实践中分母仍然被估计，质疑其优势。

reddit · r/MachineLearning · /u/No_Balance_9777 · 6月29日 23:34

**背景**: 在自监督表示学习中，InfoNCE 和 NCE 等对比损失通过拉近正样本对、推远负样本对来学习嵌入。完整的 softmax 分母需要对所有负样本求和，计算成本高昂。NCE 通过使用噪声样本来近似配分函数，从而避免了这一问题，在偏差和方差之间做出了权衡。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.baeldung.com/cs/noise-contrastive-estimation-loss">www.baeldung.com › cs › noise- contrastive -estimation- loss What Is Noise Contrastive Estimation Loss? - Baeldung</a></li>
<li><a href="https://wandb.ai/self-supervised-learning/index/reports/What-Is-Noise-Contrastive-Estimation-Loss-A-Tutorial-With-Code--Vmlldzo2NzY2OTY2">wandb.ai › self-supervised- learning › index What Is Noise Contrastive Estimation Loss? A Tutorial With Code</a></li>

</ul>
</details>

**标签**: `#contrastive learning`, `#NCE`, `#loss functions`, `#representation learning`, `#self-supervised learning`

---

<a id="item-17"></a>
## [LLM 研究论文是否过长且缺乏数学？](https://www.reddit.com/r/MachineLearning/comments/1ujv03i/are_all_llm_research_papers_nowadays_100_pages/) ⭐️ 6.0/10

一位 Reddit 用户批评近期的 LLM 研究论文超过 100 页，内容密集、缺乏数学严谨性，且依赖专有模型，质疑其可读性和目的。 这一批评凸显了 AI 研究中可访问性与深度之间的日益分化，可能影响可重复性、同行评审以及公众对 LLM 能力的理解。 该帖子指出，这些论文通常包含密集的提示截图、枯燥的写作、零数学符号，并讨论 LLM 情感等主观话题，使其难以复制或评估。

reddit · r/MachineLearning · /u/NeighborhoodFatCat · 6月30日 17:04

**背景**: LLM 研究论文已从传统的数学证明转向大规模实证评估，导致篇幅膨胀。许多作者包含详尽的提示示例和定性分析来展示模型行为，这可能让读者不堪重负。这一趋势反映了该领域的快速演进以及出版新标准的必要性。

**标签**: `#LLM`, `#research papers`, `#academic publishing`, `#readability`

---