---
layout: default
title: "Horizon Summary: 2026-06-24 (ZH)"
date: 2026-06-24
lang: zh
---

> 从 15 条内容中筛选出 14 条重要资讯。

---

1. [自对弈强化学习代理登顶 Generals.io 排行榜](#item-1) ⭐️ 9.0/10
2. [OpenAI 发布首款定制 AI 推理芯片'Jalapeno'](#item-2) ⭐️ 8.0/10
3. [Nub：一个类似 Bun 的全能 Node.js 工具包](#item-3) ⭐️ 8.0/10
4. [Datasette 1.0a35 添加创建和修改表界面](#item-4) ⭐️ 8.0/10
5. [HDD-RoPE：利用高维旋转嵌入实现更快收敛](#item-5) ⭐️ 8.0/10
6. [DeepSWE：一个无污染的编程 AI 基准测试](#item-6) ⭐️ 8.0/10
7. [LLM 推理定价对比揭露惊人缓存成本差异](#item-7) ⭐️ 8.0/10
8. [RubyLLM：面向主要 AI 提供商的统一 Ruby 框架](#item-8) ⭐️ 7.0/10
9. [Bunny DNS 宣布免费，支持最多 500 个域名](#item-9) ⭐️ 7.0/10
10. [卡马克反思 id 软件早期错误](#item-10) ⭐️ 7.0/10
11. [Tom MacWright 警告：LLM 生成的申请材料掩盖候选人真实能力](#item-11) ⭐️ 7.0/10
12. [Papers with Code 上精选的开源 OCR 模型概览](#item-12) ⭐️ 7.0/10
13. [MuJoFil：面向视觉强化学习的 GPU 原生高保真模拟器](#item-13) ⭐️ 7.0/10
14. [复制作为创意工具：通过模仿学习](#item-14) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [自对弈强化学习代理登顶 Generals.io 排行榜](https://www.reddit.com/r/MachineLearning/comments/1uei2yg/i_made_a_superhuman_generalsio_agent_with/) ⭐️ 9.0/10

一个使用 JAX 和 Vision Transformer、通过行为克隆和强化学习微调训练的自对弈强化学习代理在 Generals.io 1v1 排行榜上取得了第一名，整个流程（包括 JAX 模拟器）已开源。 这表明现代扩展技术（如 JAX 和 Vision Transformer）可以在不完全信息游戏中实现超人类水平的表现，开源代码也为从事游戏 AI 的研究人员和开发者提供了实用资源。 该代理使用了 Vision Transformer 架构而非 CNN，并且整个流程从 NumPy/Torch 重新实现为 JAX 以提升性能。博客详细记录了开发过程中遇到的死胡同、决策和技巧。

reddit · r/MachineLearning · /u/shrekofspeed · 6月24日 16:18

**背景**: Generals.io 是一款在线实时策略游戏，具有不完全信息，玩家通过占领城市和生产军队来击败对手。JAX 是一个高性能数值计算库，支持自动微分和 GPU/TPU 加速；而 Vision Transformer（ViT）则将 Transformer 架构适配到图像块上，在大数据集上通常优于 CNN。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://generals.io/">generals . io</a></li>
<li><a href="https://en.wikipedia.org/wiki/Vision_transformer">Vision transformer</a></li>

</ul>
</details>

**标签**: `#reinforcement-learning`, `#self-play`, `#game-ai`, `#jax`, `#vision-transformer`

---

<a id="item-2"></a>
## [OpenAI 发布首款定制 AI 推理芯片'Jalapeno'](https://techcrunch.com/2026/06/24/openai-unveils-its-first-custom-chip-built-by-broadcom/) ⭐️ 8.0/10

OpenAI 宣布推出其首款定制 AI 推理芯片'Jalapeno'，该芯片与博通联合开发，并由台积电制造。 这标志着 OpenAI 战略性进入 AI 推理定制芯片领域，减少对 NVIDIA GPU 的依赖，并可能降低服务大型语言模型的成本。 该芯片从设计到量产仅用九个月，部分得益于 OpenAI 自身模型加速设计过程。它是一款专为推理工作负载设计的 ASIC。

hackernews · jamdesk · 6月24日 17:47 · [社区讨论](https://news.ycombinator.com/item?id=48663324)

**背景**: 推理芯片是一种专用处理器，用于执行已训练好的 AI 模型以进行预测，区别于用于模型开发的训练芯片。ASIC（专用集成电路）是为特定任务优化的芯片，比通用处理器效率更高。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://naddod.medium.com/inference-chip-guide-the-foundation-of-scalable-ai-applications-d18f2c22b36c">Inference Chip Guide: The Foundation of Scalable AI Applications | by NADDOD | Medium</a></li>
<li><a href="https://grokipedia.com/page/Application-specific_integrated_circuit">Application-specific integrated circuit (ASIC)</a></li>
<li><a href="https://aws.amazon.com/ai/machine-learning/inferentia/">AI Chip - Amazon Inferentia - AWS</a></li>

</ul>
</details>

**社区讨论**: 社区评论对 AI 在芯片设计加速中的作用表示好奇，澄清了台积电为制造商，并担忧在 AI 快速进步下芯片可能过时。一些人将其与 Google 的 TPU 和其他定制芯片进行比较。

**标签**: `#AI hardware`, `#semiconductors`, `#OpenAI`, `#inference`, `#custom chip`

---

<a id="item-3"></a>
## [Nub：一个类似 Bun 的全能 Node.js 工具包](https://github.com/nubjs/nub) ⭐️ 8.0/10

Nub 是一个新的 Node.js 工具包，通过预加载钩子添加了 TypeScript 转译、现代 API 填充和更快的包管理器，而不替换 Node 的运行时。 它在标准 Node.js 之上提供了类似 Bun 的开发体验，无需锁定即可实现更快的开发和更轻松的采用，有望提高 Node.js 开发者的生产力。 Nub 使用编译为原生 Node 插件的 oxc 转译器来实现快速的 TypeScript 转译，并通过预加载钩子注入像 Worker 和 Temporal 等 API 的填充，完全采用增量方式。

hackernews · colinmcd · 6月24日 14:14 · [社区讨论](https://news.ycombinator.com/item?id=48660267)

**背景**: Bun 是一个全能的 JavaScript 运行时，包含打包器、测试运行器和包管理器，但需要替换 Node.js。Nub 采取了不同的方法，通过 Node.js 的扩展机制（如预加载钩子）来增强 Node.js，使现有项目无需迁移即可受益。Node.js 中的预加载钩子允许在主应用程序之前执行代码，从而在启动时进行转译和填充注入。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/nubjs/nub">GitHub - nubjs/nub: The fast all-in-one Node.js toolkit · GitHub</a></li>
<li><a href="https://nubjs.com/blog/introducing-nub">Introducing Nub: an all-in-one toolkit for Node.js — Nub</a></li>
<li><a href="https://nubjs.com/">Nub — an all-in-one toolkit for Node.js</a></li>

</ul>
</details>

**社区讨论**: 社区反应积极，用户称赞其增量式方法，一位用户报告称其整个 monorepo 迁移顺利。然而，也有人提出了关于生产环境就绪性、性能开销和额外攻击面的问题。

**标签**: `#Node.js`, `#TypeScript`, `#Toolkit`, `#Performance`, `#Bundless Development`

---

<a id="item-4"></a>
## [Datasette 1.0a35 添加创建和修改表界面](https://simonwillison.net/2026/Jun/23/datasette/#atom-everything) ⭐️ 8.0/10

Datasette 1.0a35 引入了新的用户界面和 JSON API，用于创建和修改数据库表，支持列、主键、约束、默认值和外键等操作。 此版本将 Datasette 从只读探索工具升级为数据编辑平台，增强了数据管理能力，降低了用户通过网页界面直接修改 SQLite 数据库的门槛。 创建表 API 位于 /<database>/-/create，修改表 API 位于 /<database>/<table>/-/alter，两者支持多种模式变更，包括列重排和表重命名。该功能仍处于 alpha 阶段（1.0a35），可能发生变化。

rss · Simon Willison · 6月23日 21:34

**背景**: Datasette 是一个开源的多功能数据探索和发布工具，主要针对 SQLite 数据库。它提供用于查询和可视化数据的网页界面以及用于编程访问的 JSON API。以前，Datasette 不允许从界面创建或修改表；用户必须使用外部 SQLite 客户端。此版本添加了这些缺失的功能。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://datasette.io/">Datasette: An open source multi-tool for exploring and</a></li>

</ul>
</details>

**标签**: `#datasette`, `#data exploration`, `#SQLite`, `#release`, `#JSON API`

---

<a id="item-5"></a>
## [HDD-RoPE：利用高维旋转嵌入实现更快收敛](https://www.reddit.com/r/MachineLearning/comments/1uelcm9/high_dimensional_dynamic_rotary_positional/) ⭐️ 8.0/10

一种名为 HDD-RoPE（高维动态旋转位置嵌入）的新型位置编码方法被提出，它利用累积矩阵乘积为每个令牌位置创建数据依赖的多维旋转。 HDD-RoPE 在 TinyStories 数据集上相比 xPos 基线显示出更快的训练收敛，可能提高语言任务中 transformer 模型的效率。 该方法将令牌嵌入分成大小为 4 的块（而不是标准 RoPE 的 2 元组），实现 6 个旋转轴；旋转量通过层激活实现数据依赖。

reddit · r/MachineLearning · /u/mikayahlevi · 6月24日 18:16

**背景**: 像 RoPE（旋转位置嵌入）这样的位置嵌入通过成对旋转查询和键向量来帮助 transformer 模型编码令牌顺序。HDD-RoPE 将其推广到更高维度的块，并学习旋转速度。

**标签**: `#Machine Learning`, `#Transformer`, `#Positional Encoding`, `#RoPE`

---

<a id="item-6"></a>
## [DeepSWE：一个无污染的编程 AI 基准测试](https://www.reddit.com/r/MachineLearning/comments/1ue0hlp/deepswe_new_benchmark_looking_at_how_well_todays/) ⭐️ 8.0/10

DeepSWE 是一个新的开源基准测试，用于衡量前沿 AI 模型编写代码的能力。其任务全部从头编写以避免污染，涵盖 5 种语言的 91 个代码库，并采用手工编写的验证器进行可靠测试。 现有像 SWE-bench 这样的编程基准测试存在数据污染和缺乏真实世界复杂度的问题，导致性能估计虚高。DeepSWE 提供了更准确、更公平的评估，帮助研究者和从业者更好地理解编程代理的真实能力。 DeepSWE 的提示词长度约为 SWE-bench Pro 的一半，但解决方案所需代码量是后者的 5.5 倍，输出令牌数约为两倍。验证器测试软件行为而非实现细节，确保评估可靠。

reddit · r/MachineLearning · /u/we_are_mammals · 6月24日 02:03

**背景**: 数据污染是指模型在预训练期间已经见过基准测试的解决方案，从而人为提高得分。SWE-bench 及其变体被广泛用于评估编程 AI，但它们重复使用来自真实提交的任务，存在污染风险。DeepSWE 通过从头编写任务来解决这一问题，同时增加了多样性和复杂性，以更好地反映真实的软件工程工作。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.swebench.com/original.html">SWE-bench</a></li>
<li><a href="https://scaleapi.github.io/SWE-bench_Pro-os/">SWE-Bench Pro</a></li>

</ul>
</details>

**标签**: `#benchmark`, `#AI coding`, `#software engineering`, `#machine learning`, `#open-source`

---

<a id="item-7"></a>
## [LLM 推理定价对比揭露惊人缓存成本差异](https://www.reddit.com/r/MachineLearning/comments/1ueavxn/i_compiled_llm_inference_pricing_across_7/) ⭐️ 8.0/10

一位 Reddit 用户整理了一份公开表格，比较了七家提供商（OpenRouter、DeepSeek、Together AI、Fireworks、Groq 等）的 LLM 推理定价，发现缓存输入价格差异巨大——缓存命中有时比未命中便宜数十倍。 这一对比对于构建对成本敏感的 agent 和 RAG 工作流的开发者至关重要，因为缓存策略可能比标称 token 价格更重要。它凸显了透明缓存文档的必要性，并可能影响提供商的选择。 该表格跟踪了输入/输出 token 定价、上下文窗口、缓存输入价格和支持的模型，但不包括吞吐量或延迟基准。用户指出，不同提供商的模型可用性和上下文窗口并不一致。

reddit · r/MachineLearning · /u/Technomadlyf · 6月24日 11:28

**背景**: LLM 推理定价通常基于处理的 token 数量，但缓存允许重用先前计算的键值状态以处理重复提示，从而降低成本与延迟。主要提供商如 OpenAI 和 Anthropic 均提供提示缓存，但定价和透明度差异很大。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://benchlm.ai/llm-pricing">benchlm.ai › llm - pricing LLM API Pricing Comparison 2026 — Cost Per Token for GPT, Claude...</a></li>
<li><a href="https://machinelearningmastery.com/the-complete-guide-to-inference-caching-in-llms/">machinelearningmastery.com › the-complete-guide-to- inference The Complete Guide to Inference Caching in LLMs - Machine...</a></li>

</ul>
</details>

**标签**: `#LLM`, `#pricing`, `#inference`, `#caching`, `#providers`

---

<a id="item-8"></a>
## [RubyLLM：面向主要 AI 提供商的统一 Ruby 框架](https://rubyllm.com/) ⭐️ 7.0/10

RubyLLM 是一个新的 Ruby 框架，为多个主要 AI 提供商（包括 GPT、Claude 和本地 Ollama 模型）提供统一接口，旨在通过单一 API 简化集成。 该框架大大降低了 Ruby 开发人员处理不同 AI 提供商的复杂性，使得在模型之间切换和测试更加容易，促进了 AI 在 Ruby 应用中的使用。 RubyLLM 仅有三个依赖项：Faraday、Zeitwerk 和 Marcel。它支持 OpenAI、Anthropic 和 Ollama 等提供商，并旨在让 Ruby 开发人员感到自然。

hackernews · doener · 6月24日 14:41 · [社区讨论](https://news.ycombinator.com/item?id=48660711)

**背景**: Ruby 开发人员之前必须为每个 AI 提供商使用单独的 SDK，每个都有不同的 API 和响应格式。RubyLLM 抽象了这些差异，提供一致的接口。该框架轻量级且遵循 Ruby 惯例。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://rubyllm.com/">rubyllm .com RubyLLM | One beautiful Ruby framework for all major AI...</a></li>
<li><a href="https://rubyllm.com/next/">rubyllm .com › next RubyLLM | Ruby’s AI agent framework. One delightful API for...</a></li>

</ul>
</details>

**社区讨论**: 社区讨论显示反应积极，用户注意到其可用性与 Vercel 的 AI 框架相当，并且被 Raix 等其他 gem 采用。一些用户提到对于 xAI 等某些提供商的缓存无法工作的问题，但总体兴趣很高。

**标签**: `#Ruby`, `#AI`, `#framework`, `#LLM`, `#multi-provider`

---

<a id="item-9"></a>
## [Bunny DNS 宣布免费，支持最多 500 个域名](https://bunny.net/blog/were-making-bunny-dns-free/) ⭐️ 7.0/10

Bunny DNS 取消了所有 DNS 查询费用，现提供每个账户最多 500 个域名的免费 DNS 托管服务，无查询限制，并包含智能记录和健康监控等全部功能。 此举使 Bunny 成为 Cloudflare 及其他 DNS 提供商的有力免费替代方案，尤其吸引寻求尊重隐私的非美国选项的欧盟用户。这可能改变 DNS 托管市场的定价常态。 免费套餐每账户最多支持 500 个域名，无隐藏的企业功能，包括智能 DNS 记录和健康监控。Bunny 是一家仅融资 600 万美元的私营公司，专注于有机增长而非投资者驱动的扩张。

hackernews · dabinat · 6月24日 08:50 · [社区讨论](https://news.ycombinator.com/item?id=48657030)

**背景**: DNS 托管通常根据查询次数或域名数量收费，AWS Route 53 和 Cloudflare 等提供商提供有限免费套餐。Bunny.net 是一个全球边缘平台，提供 CDN、边缘存储和优化服务，支持超过 150 万个网站。通过完全取消查询费用，Bunny 旨在将自己定位为成本效益高、欧盟本土的替代方案，与美国主导的提供商竞争。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://bunny.net/">bunny . net - The Global Edge Platform that truly Hops</a></li>
<li><a href="https://grokipedia.com/page/Bunnynet">Bunny.net</a></li>

</ul>
</details>

**社区讨论**: 评论者普遍欢迎此举，称赞 Bunny 是欧盟本土的 Cloudflare 替代方案及其有机增长策略。但也有人担心爬虫流量导致意外收费，指出 Bunny 的价格保护仅适用于其 CDN 产品。还有人对与提供免费静态托管的提供商相比的整体价值提出质疑。

**标签**: `#DNS`, `#Cloudflare alternative`, `#free hosting`, `#EU tech`, `#Bunny.net`

---

<a id="item-10"></a>
## [卡马克反思 id 软件早期错误](https://twitter.com/ID_AA_Carmack/status/2069799283369345247) ⭐️ 7.0/10

约翰·卡马克发推反思他在 id 软件早期的领导失误，承认自己过于压榨团队，未能适应公司成熟化的需求，并指出《雷神之锤》的开发最终掏空了公司，但他认为这一切是值得的。 作为游戏开发界的传奇人物，卡马克坦诚的自我批评为领导力、团队倦怠以及创造经典游戏与维持健康公司文化之间的权衡提供了宝贵经验。 卡马克特别指出，初创公司的强度无法无限持续，成熟的公司需要更多弹性；他还表示《雷神之锤》掏空了 id 软件，但这是值得的，因为“游戏比游戏公司更重要”。

hackernews · shadowtree · 6月24日 15:56 · [社区讨论](https://news.ycombinator.com/item?id=48661825)

**背景**: 约翰·卡马克是游戏编程先驱和 id 软件的联合创始人，以《毁灭战士》和《雷神之锤》等经典作品闻名。1996 年发布的《雷神之锤》以真 3D 图形革新了第一人称射击游戏，但其开发据称给团队带来了巨大压力，导致随后多名核心创意人员离职。围绕卡马克推文的讨论涉及游戏开发中平衡技术创新、艺术愿景与团队福祉的更广泛挑战。

**社区讨论**: 评论者大多赞赏卡马克的反思，有人指出尽管压力巨大，《雷神之锤 III 竞技场》依然非常出色；也有人认为《毁灭战士 2》之后创意人才的流失导致了艺术设计的衰退。数位用户还引用桑迪·彼得森在访谈中的相关观点。

**标签**: `#John Carmack`, `#id Software`, `#leadership`, `#game development`, `#software engineering`

---

<a id="item-11"></a>
## [Tom MacWright 警告：LLM 生成的申请材料掩盖候选人真实能力](https://simonwillison.net/2026/Jun/24/tom-macwright/#atom-everything) ⭐️ 7.0/10

Tom MacWright 观察到，求职申请中越来越多地出现 LLM 协作的痕迹，包括 AI 生成的作品集和 GitHub 项目，这使得招聘者无法评估候选人的真实技能。 这一趋势削弱了技术招聘的真实性，招聘者无法再区分真实工作与 AI 生成内容，可能导致错误招聘并贬低真正的专业能力。 MacWright 描述了一系列由 LLM 生成的产物：简历、作品集网站、GitHub 项目和提交信息，这些均缺乏个人风格和真实努力。

rss · Simon Willison · 6月24日 18:13

**背景**: 像 GPT-4 这样的大型语言模型能够生成令人信服的文本和代码，导致一些求职者使用它们来优化申请。然而，这可能会产生同质化、缺乏个性的作品集，无法展示个人的问题解决能力或创造力，使依赖细微能力信号的资深招聘者感到困扰。

**标签**: `#ai`, `#careers`, `#llm`, `#hiring`, `#ethics`

---

<a id="item-12"></a>
## [Papers with Code 上精选的开源 OCR 模型概览](https://www.reddit.com/r/MachineLearning/comments/1ueiam6/find_the_best_opensource_ocr_models_in_one_place/) ⭐️ 7.0/10

Papers with Code 上新推出一个页面，汇总了最佳开源 OCR 模型和基准，重点介绍了百度发布的 Unlimited OCR（一个拥有 3B 参数并采用参考滑动窗口注意力的模型）以及 Mistral 的 OCR 4 API。 这一精选帮助 AI 从业者在众多近期 OCR 发布中选择用于文档数字化的模型，从而支持代理 RAG 和其他企业用例。纳入了百度和 Mistral 的模型，标志着开源 OCR 领域的持续创新。 Unlimited OCR 基于 DeepSeek OCR 构建，引入了参考滑动窗口注意力（R-SWA）以实现高效的长序列解析；Mistral OCR 4 可通过 API 使用。该页面列出了 OlmOCRBench 和 OmniDocBench 等顶级基准，并推荐了 Chandra OCR 2 和 Mistral OCR v4。

reddit · r/MachineLearning · /u/NielsRogge · 6月24日 16:26

**背景**: 光学字符识别（OCR）将扫描文档和 PDF 转换为机器可读文本，对于检索增强生成（RAG）等 AI 代理用例至关重要。Papers with Code 是一个索引研究论文、代码和基准的平台；该网站近期在被关闭后重新上线。参考滑动窗口注意力是一种高效的注意力机制，通过结合固定参考令牌和局部窗口来维持有界的键/值缓存。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.emergentmind.com/topics/reference-sliding-window-attention-r-swa">Reference Sliding Window Attention (R-SWA)</a></li>
<li><a href="https://en.wikipedia.org/wiki/DeepSeek">DeepSeek</a></li>
<li><a href="https://www.e2enetworks.com/blog/complete-guide-open-source-ocr-models-2025">The Complete Guide to Open-Source OCR Models for 2025 | E2E</a></li>

</ul>
</details>

**标签**: `#OCR`, `#Open Source`, `#Papers With Code`, `#Deep Learning`, `#AI Agents`

---

<a id="item-13"></a>
## [MuJoFil：面向视觉强化学习的 GPU 原生高保真模拟器](https://www.reddit.com/r/MachineLearning/comments/1uemrch/mujoco_derived_simulator_for_high_fidelity_vision/) ⭐️ 7.0/10

一位开发者宣布了 MuJoFil，这是一个开源的、GPU 原生的视觉强化学习模拟器，它结合了 NVIDIA 的 Newton 物理引擎和 Google 的 Filament 渲染引擎。该模拟器旨在支持高度并行化的视觉策略训练，并提供高视觉保真度。 MuJoFil 填补了强化学习模拟生态系统中的一个关键空白：现有的 GPU 加速模拟器（如 MJX）缺乏视觉支持，而专有解决方案（如 NVIDIA Isaac）需要昂贵的硬件和许可证。该项目通过提供免费的开源替代方案，可能使高保真视觉机器人研究更加普及。 MuJoFil 利用了 NVIDIA Newton（基于 Warp 的开源 GPU 物理引擎）和经过修改的 Google Filament 进行并行渲染。它支持 PBR 纹理以及 GLB、OpenUSD 等环境格式，并提供两个软件包：mujofil（CPU 版本）和 mujofil-warp（GPU CUDA 版本）。该项目处于早期开发阶段，预计存在大量 bug。

reddit · r/MachineLearning · /u/MT1699 · 6月24日 19:07

**背景**: MuJoCo 是机器人领域广泛使用的物理模拟器，但基于 CPU 运行，限制了并行性。MJX 是 MuJoCo 的 GPU 加速版本，使用 JAX，但侧重于物理仿真而非视觉渲染。NVIDIA Isaac Sim 提供高保真模拟，但需要高端 GPU 和商业许可。Newton 是由 NVIDIA、DeepMind 和 Disney Research 开发的新开源 GPU 物理引擎，基于 NVIDIA Warp 构建。Filament 是 Google 的开源实时物理基础渲染（PBR）引擎。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://developer.nvidia.com/newton-physics">Newton Physics Engine | NVIDIA Developer</a></li>
<li><a href="https://github.com/newton-physics/newton">GitHub - newton-physics/newton: An open-source, GPU-accelerated physics ...</a></li>
<li><a href="https://github.com/google/filament">GitHub - google/filament: Filament is a real-time physically based rendering engine for Android, iOS, Windows, Linux, macOS, and WebGL2 · GitHub</a></li>

</ul>
</details>

**标签**: `#reinforcement learning`, `#simulation`, `#GPU`, `#MuJoCo`, `#robotics`

---

<a id="item-14"></a>
## [复制作为创意工具：通过模仿学习](https://ben-mini.com/2026/stealing-is-a-skill) ⭐️ 6.0/10

一篇题为《偷窃是一门技能》的文章认为，刻意复制现有设计可以是一种有价值的学习技巧和创作实践，而不仅仅是抄袭。 这一观点挑战了设计中对原创性的高度重视，引发了关于伦理、影响以及模仿在技能发展中的作用的讨论。 作者将此技巧与作家和音乐家使用的“抄写练习”相比较，通过复现杰作来理解其底层原理；此文引发了关于道德学习与抄袭之间界限的讨论。

hackernews · bewal416 · 6月24日 13:08 · [社区讨论](https://news.ycombinator.com/item?id=48659165)

**背景**: 抄写练习是在各种创意领域中历史悠久的实践，学习者通过复制现有作品来内化技巧和风格。然而在设计中，抄袭很容易越界成为剽窃，尤其是未经许可用于商业目的时。该文章倡导将复制视为一种合理的学习步骤，而非最终输出。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://sahedkawser.medium.com/the-ultimate-way-to-rapidly-improve-your-design-skills-180235becb8a">Copywork : The Ultimate Way to Rapidly Improve Your Design Skills</a></li>

</ul>
</details>

**社区讨论**: 评论意见不一：一些人支持抄袭作为学习方法，并引用自己在写作和音乐中的经验；另一些人则批评该文章模糊了灵感与赤裸裸的盗窃之间的界限，尤其是在未注明出处的情况下商业使用。

**标签**: `#design`, `#creativity`, `#ethics`, `#copywork`, `#web design`

---