---
layout: default
title: "Horizon Summary: 2026-07-03 (ZH)"
date: 2026-07-03
lang: zh
---

> 从 14 条内容中筛选出 12 条重要资讯。

---

1. [本地运行顶级 LLM 指南引发争议](#item-1) ⭐️ 8.0/10
2. [PostgreSQL 与 OOM Killer：为何严格过量提交至关重要](#item-2) ⭐️ 8.0/10
3. [Valve 开源 Steam Machine 电子墨水屏设计](#item-3) ⭐️ 8.0/10
4. [Wordgard：ProseMirror 创建者推出的新富文本编辑器](#item-4) ⭐️ 8.0/10
5. [将代码转图像并通过 OCR 节省 LLM 令牌成本 60%](#item-5) ⭐️ 8.0/10
6. [半成品：对创业脱节的批判](#item-6) ⭐️ 8.0/10
7. [螺旋蝇的衰落与复苏](#item-7) ⭐️ 8.0/10
8. [对比解码差异法仅凭 logits 恢复微调原文数据](#item-8) ⭐️ 8.0/10
9. [Costco 仓储会员模式避开最后一英里复杂性](#item-9) ⭐️ 7.0/10
10. [工厂只是房间：简化制造思维](#item-10) ⭐️ 7.0/10
11. [开放权重大模型微调抵抗性的讨论](#item-11) ⭐️ 7.0/10
12. [Fable 的判断：让 AI 模型自主分配任务](#item-12) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [本地运行顶级 LLM 指南引发争议](https://github.com/jamesob/local-llm) ⭐️ 8.0/10

Jamesob 在 GitHub 上发布了一份全面指南，介绍如何构建和运行最先进的本地 LLM，涵盖从 2000 美元到 4 万美元的硬件配置。 这份指南凸显了本地部署 LLM 日益增长的兴趣，但社区反馈揭示了关于成本、硬件权衡以及与云服务相比实用性的担忧。 最昂贵的配置包括 4 块每块 1.2 万美元的 GPU，总成本约 5-5.5 万美元，依赖量化技术；还讨论了更便宜的选择，如 2 块 RTX 3090（48GB 显存）或具有统一内存的 MacBook Pro。

hackernews · livestyle · 7月3日 15:03 · [社区讨论](https://news.ycombinator.com/item?id=48775921)

**背景**: 本地运行大型语言模型需要大量显存和计算能力，通常使用多块高端 GPU。量化技术可以减小模型大小和精度，以适应消费级硬件。基于云的 LLM（如 Claude Opus）按月收费，这引发了关于本地设置成本效益的疑问。

**社区讨论**: 评论者争论本地设置的成本效益，jacobgold 指出 4 万美元的配置相当于 16.8 年的 Claude Opus 订阅费用。其他人建议中档选项，如 48GB 统一内存用于通过 DwarfStar 运行 DeepSeek V4 flash，以平衡成本和性能。

**标签**: `#LLM`, `#local deployment`, `#hardware`, `#open-source`, `#AI`

---

<a id="item-2"></a>
## [PostgreSQL 与 OOM Killer：为何严格过量提交至关重要](https://www.ubicloud.com/blog/postgresql-and-the-oom-killer-why-we-use-strict-memory-overcommit) ⭐️ 8.0/10

托管 PostgreSQL 提供商 Ubicloud 发布博客文章，主张使用严格内存过量提交（vm.overcommit_memory=2）以防止 OOM killer 中断 PostgreSQL 数据库，同时承认可能存在副作用。 这一建议直接影响 PostgreSQL 运维人员的数据库稳定性和可靠性，因为 OOM killer 的中断可能导致数据丢失或停机。它还引发了关于 Linux 内存管理默认值的讨论，许多人认为这些默认值在生产负载下表现不佳。 严格过量提交模式根据 swap + RAM * overcommit_ratio 强制实施硬限制（CommitLimit），拒绝超出该限制的分配。Ubicloud 警告，如果之前调整过过量提交比率，模式 2 可能会阻止进程 fork，因此在生产部署前必须在 QA/性能环境中进行彻底测试。

hackernews · furkansahin · 7月3日 13:00 · [社区讨论](https://news.ycombinator.com/item?id=48774509)

**背景**: Linux OOM killer 在系统内存不足时激活，终止进程以释放资源。内存密集型的 PostgreSQL 如果分配了过量提交的内存，常常成为目标。Linux 默认的过量提交模式（启发式）允许过量提交，增加了 OOM 风险。严格过量提交（模式 2）禁止过量提交，降低了但并未消除 OOM 的可能性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ubicloud.com/blog/postgresql-and-the-oom-killer-why-we-use-strict-memory-overcommit">PostgreSQL and the OOM Killer: Why We Use Strict Memory Overcommit</a></li>
<li><a href="https://www.postgresql.org/docs/current/kernel-resources.html">PostgreSQL: Documentation: 18: 18.4. Managing Kernel Resources</a></li>
<li><a href="https://linuxhandbook.com/oom-killer/">linuxhandbook.com › oom - killer What is Out of Memory Killer (OOM Killer) in Linux?</a></li>

</ul>
</details>

**社区讨论**: 评论者普遍认同技术内容，但提醒不要无条件启用严格过量提交。一位评论者（baq）批评 Linux 的默认 vm 设置“疯狂”，并指出 Windows/macOS 的内存压力处理更好。另一位（来自 Ubicloud 的 ozgune）缓和了博客的强硬立场，承认严格过量提交在许多场景下可能有意料之外的副作用。还有评论者建议仔细测试并逐步推出。

**标签**: `#PostgreSQL`, `#memory management`, `#Linux`, `#OOM killer`, `#database administration`

---

<a id="item-3"></a>
## [Valve 开源 Steam Machine 电子墨水屏设计](https://www.gamingonlinux.com/2026/07/valve-open-source-the-steam-machine-e-ink-screen-so-you-can-make-your-own/) ⭐️ 8.0/10

Valve 已开源 2026 年款 Steam Machine 所使用的电子墨水屏的设计和规格，使爱好者可以自行复制或制作定制版本。 此举促进社区创新和改造，可能带来电子墨水屏在游戏硬件及其他领域的创意应用，也体现了 Valve 对开放性的承诺。 这款电子墨水屏是标准的 Adafruit 5.83 英寸面板，开源发布内容包括将其集成到 Steam Machine 前面板的设计文件。

hackernews · ahlCVA · 7月3日 13:01 · [社区讨论](https://news.ycombinator.com/item?id=48774518)

**背景**: Steam Machine 是一系列运行 SteamOS 的游戏迷你 PC，旨在提供类似游戏主机的电视体验。2026 年版于 2025 年 11 月公布，2026 年 6 月发布。电子墨水屏利用反射自然光，无需背光，功耗低且在阳光下可读。Valve 将此组件开源，延续了社区驱动硬件定制的趋势。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Steam_Machine">Steam Machine</a></li>
<li><a href="https://en.wikipedia.org/wiki/E_Ink">en.wikipedia.org/wiki/E_Ink</a></li>

</ul>
</details>

**社区讨论**: 评论者对 Valve 的开放态度表示赞赏，有人指出很少有公司会让社区自由改造可选配件。另一位评论者确认该面板是 Adafruit 5.83 英寸电子墨水屏，其他人则讨论实际应用，并希望看到针对 Framework Desktop 等其他形态的指南。还有人质疑游戏机为何需要慢速电子墨水屏。

**标签**: `#open-source`, `#hardware`, `#valve`, `#e-ink`, `#steam-machine`

---

<a id="item-4"></a>
## [Wordgard：ProseMirror 创建者推出的新富文本编辑器](https://wordgard.net/) ⭐️ 8.0/10

ProseMirror 的创建者 Marijn Haverbeke 发布了 Wordgard，这是一个全新的浏览器内富文本编辑器系统，代表了 ProseMirror 风格编辑的现代迭代，融入了过去九年的经验教训。 Wordgard 为开发者提供了一个强大、可编程的语义化编辑器，可能成为 ProseMirror 的现代替代方案，其架构更优；但缺乏迁移路径意味着现有 ProseMirror 用户若要切换将面临巨大的工作量。 Wordgard 不是一个自由格式的 HTML 编辑器，而是一个让开发者精确控制所支持内容类型的系统，其编程接口专为复杂、定制的编辑器设计。0.1 版本于 2025 年 2 月 16 日发布，其架构受到了 CodeMirror 6 的启发。

hackernews · indy · 7月3日 08:50 · [社区讨论](https://news.ycombinator.com/item?id=48772573)

**背景**: ProseMirror 是一个广泛使用的开源富文本编辑器库，为结构化文档实现了所见即所得（WYSIWYG）风格的编辑界面，被《纽约时报》和 Atlassian 等公司采用。Wordgard 是同一作者的新项目，旨在解决 ProseMirror 的限制并融入新想法，但不向后兼容。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://wordgard.net/">wordgard .net Wordgard</a></li>
<li><a href="https://marijnhaverbeke.nl/blog/wordgard-0.1.html">marijnhaverbeke.nl › blog › wordgard -0 Wordgard Release 0.1</a></li>
<li><a href="https://prosemirror.net/">prosemirror .net ProseMirror</a></li>

</ul>
</details>

**社区讨论**: Hacker News 上的评论反应不一：有人赞赏其设计和技术愿景，也有人对缺乏从 ProseMirror 升级的路径表示沮丧，并报告了诸如 iOS 上文本消失等 bug。社区参与积极，并与 ProseMirror 和 CodeMirror 进行了比较。

**标签**: `#rich-text-editor`, `#ProseMirror`, `#web-development`, `#open-source`, `#JavaScript`

---

<a id="item-5"></a>
## [将代码转图像并通过 OCR 节省 LLM 令牌成本 60%](https://github.com/teamchong/pxpipe) ⭐️ 8.0/10

一位开发者发现，将代码转换为图像并通过 OCR 输入视觉语言模型，可大幅降低令牌消耗，在 Fable 基准测试上节省 60%成本。工具 pxpipe 实现了这一流程自动化。 这一技巧揭示了定价漏洞：图像令牌比文本令牌更便宜，可能为开发者降低 API 成本。但此漏洞可能是暂时的，供应商可能调整定价或加强检测。 该方法通过截取代码截图，并用 OCR 模型提取文本，诱使系统按图像令牌计费。社区测试显示其在 Claude 和 OpenAI 模型上有效，但需要更多补全令牌，有时会抵消节省。

hackernews · dimitropoulos · 7月3日 15:50 · [社区讨论](https://news.ycombinator.com/item?id=48776464)

**背景**: LLM API 按令牌计费，图像令牌通常比文本令牌便宜。一些模型如 Gemini 处理 PDF 时会内部 OCR 而不额外收取文本令牌费用。此技巧利用类似的计费差异。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://news.ycombinator.com/item?id=48776464">60% Fable cost cut by converting code to images and having the model OCR it | Hacker News</a></li>
<li><a href="https://dev.to/0xrelogic/deepseek-ocr-when-a-picture-is-actually-worth-10x-fewer-tokens-19p6">DeepSeek-OCR: When a Picture Is Actually Worth 10 Fewer Tokens - DEV Community</a></li>

</ul>
</details>

**社区讨论**: 评论者讨论了其可持续性，有人指出 Gemini 已内部 OCR 不收费文本令牌，猜测 Claude 也可能如此。其他人分享了补全令牌增加抵消节省的经验，并类比了旧有的"caveman"技巧。普遍认为这是一个巧妙但可能临时的漏洞。

**标签**: `#cost-optimization`, `#LLM`, `#OCR`, `#image-tokens`, `#hack`

---

<a id="item-6"></a>
## [半成品：对创业脱节的批判](https://weli.dev/blog/half-baked-product/) ⭐️ 8.0/10

一篇博客文章批评了初创公司中半成品盛行的问题，将其归因于创始人、工程师和销售角色之间的脱节以及缺乏领域专业知识。 这一分析在技术社区引起了强烈共鸣，因为它指出了初创公司屡次失败的根本原因，并为改进产品开发提供了见解。 文章强调，创始人通常缺乏领域专业知识，且主要受财富驱动，导致与技术上可行及客户需求之间出现不匹配。

hackernews · weli · 7月3日 08:23 · [社区讨论](https://news.ycombinator.com/item?id=48772388)

**背景**: 初创公司常常因产品与市场不匹配而失败。文章认为，一个关键因素是三个关键角色之间的脱节：创始人（愿景和资金）、工程师（技术执行）和销售人员（客户洞察）。每个角色各自为政，导致产品在技术或市场上都不成熟。

**社区讨论**: 评论者赞同核心论点，有人指出创始人追求财富的动机常导致选择缺乏领域专业知识的领域，并以马斯克作为反例。另一位希望看到销售人员的视角。还有评论提到类似故事中有新竞争对手'OpenOven'，但内容不完整。

**标签**: `#product development`, `#startup`, `#engineering`, `#management`, `#entrepreneurship`

---

<a id="item-7"></a>
## [螺旋蝇的衰落与复苏](https://www.construction-physics.com/p/the-fall-and-rise-of-screwworm) ⭐️ 8.0/10

一篇关于螺旋蝇的文章详细介绍了美国利用昆虫不育技术根除该害虫的历史，并警告其最近在德克萨斯州和南美洲重新出现。 螺旋蝇是一种毁灭性的农业害虫，其重新出现威胁到畜牧业和野生动物，凸显了在没有持续国际合作的情况下维持长期害虫防治的困难。 昆虫不育技术通过释放不育雄蝇与野生雄蝇竞争，导致种群崩溃，但最近达连隘口屏障的失败导致了该害虫的重新蔓延。

hackernews · crescit_eundo · 7月3日 12:58 · [社区讨论](https://news.ycombinator.com/item?id=48774492)

**背景**: 螺旋蝇（Cochliomyia hominivorax）是一种寄生性苍蝇，其幼虫以活体组织为食，引起牲畜乃至人类的蝇蛆病。昆虫不育技术（SIT）于 20 世纪 50 年代开发，成功根除了北美和中美洲的螺旋蝇。然而，维持达连隘口的屏障以防止从南美洲重新入侵一直颇具挑战，最近德克萨斯州已出现入侵案例。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Screwworm">Screwworm</a></li>
<li><a href="https://en.wikipedia.org/wiki/Sterile_insect_technique">Sterile insect technique</a></li>

</ul>
</details>

**社区讨论**: 评论者提出对螺旋蝇可能产生辐射抗性的担忧，质疑维持屏障与大陆范围根除之间的经济性，并赞扬先驱者的历史性努力。还分享了 Hacker News 上关于 2025/2026 年螺旋蝇病例的相关讨论链接。

**标签**: `#biology`, `#agriculture`, `#pest control`, `#entomology`, `#history`

---

<a id="item-8"></a>
## [对比解码差异法仅凭 logits 恢复微调原文数据](https://www.reddit.com/r/MachineLearning/comments/1umn2dk/contrastive_decoding_diffing_cdd_recovering/) ⭐️ 8.0/10

研究人员提出了对比解码差异法（CDD），该方法仅通过基础模型和微调模型的对数几率（logits）差异就能恢复微调内容的原文，无需访问模型权重或激活值。在四个模型家族（1B 到 32B 参数）的 20 个模型对中，CDD 在 19 个上取得了 4+/5 的恢复评分，而先前需要完全权重访问的激活差异透镜（ADL）方法最高仅达到 3/5。 CDD 极大推动了 AI 安全与可解释性发展，因为它允许在仅具有 API 对数几率（logits）访问权限的灰盒场景下检测微调数据，有助于识别隐藏后门或不当训练数据。其高效性和无需逐模型校准的特点使其在实际审计微调模型时非常实用。 CDD 完全运行在输出层对数几率（logits）上，使用单一默认配置，无需逐模型校准或层选择。一个意外发现是，虚构人物'Dr. Elena Rodriguez'出现在四个语义无关的微调领域中，追溯发现 Claude Sonnet 3.6 在生成合成数据时倾向于使用该名字。

reddit · r/MachineLearning · /u/CebulkaZapiekana · 7月3日 19:01

**背景**: 模型差异分析（Model diffing）研究基础模型与其微调版本之间的差异，以理解被引入的知识或行为。激活差异透镜（ADL）方法分析隐藏层激活差异，但需要完整模型权重。对比解码（Contrastive decoding）是一种通过对比两个模型输出来改进生成质量的技术；CDD 将该思想应用于比较对数几率（logits），从而在无需权重访问的情况下恢复微调数据。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.machinebrief.com/news/unlocking-ais-hidden-memories-with-contrastive-decoding-9a3m">www.machinebrief.com › news › unlocking-ais-hidden-memories Unlocking AI's Hidden Memories with Contrastive Decoding</a></li>
<li><a href="https://arxiv.org/abs/2510.13900">arxiv.org › abs › 2510 Narrow Finetuning Leaves Clearly Readable Traces in Activation... www.lesswrong.com › posts › sBSjEBykQkmSfqrwt Narrow Finetuning Leaves Clearly Readable Traces in Activation vieweyewear.com › blog › photochromic- lens -guide-transitions Photochromic Lens Guide — Transitions vs Sensity vs PhotoFusion arxiv.org › html › 2510 Narrow Finetuning Leaves Clearly Readable Traces in Activation... github.com › src › diffing diffing-toolkit/src/diffing/methods/activation_difference_lens... github.com › zhaoyang97 › Paper-Notes-en Paper-Notes-en/docs/ICLR2026/interpretability/narrow ... - GitHub</a></li>
<li><a href="https://transformer-circuits.pub/2024/model-diffing/">Stage-Wise Model Diffing</a></li>

</ul>
</details>

**标签**: `#AI Safety`, `#Model Interpretability`, `#LLMs`, `#Finetuning`, `#Grey-box Attacks`

---

<a id="item-9"></a>
## [Costco 仓储会员模式避开最后一英里复杂性](https://phenomenalworld.org/analysis/the-anti-amazon/) ⭐️ 7.0/10

文章分析了 Costco 的仓储会员模式如何刻意避开最后一英里配送的物流复杂性和成本，这与亚马逊以便利为中心、注重送货上门的方式形成鲜明对比。 这一分析凸显了零售业的一个根本性战略分歧：Costco 通过将配送任务转嫁给顾客来实现成本效益，而亚马逊则在最后一英里基础设施上大量投资。它挑战了送货上门总是更优越的假设，并为运营效率提供了启示。 仓储会员模式通常提供约 4,000 种有限 SKU，批量销售，并收取年费，从而创收并培养忠诚度。值得注意的是，Costco 现在与 Instacart 合作提供当日达服务，部分弥补了与送货上门之间的差距。

hackernews · bookofjoe · 7月3日 15:14 · [社区讨论](https://news.ycombinator.com/item?id=48776044)

**背景**: 仓储会员店是一种基于会员制的零售业态，以折扣价批量销售各种商品，在简陋的仓库环境中运营。最后一英里配送是供应链中从配送中心到客户家门口的最后一段，通常是最复杂和昂贵的一环。亚马逊的商业模式高度依赖高效的最后一英里配送来提供便利性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Warehouse_club">en.wikipedia.org › wiki › Warehouse_club Warehouse club - Wikipedia</a></li>
<li><a href="https://www.ryder.com/en-us/insights/blogs/last-mile/last-mile-delivery">www.ryder.com › insights › blogs Last mile delivery explained: Definition, cost, and how to get...</a></li>

</ul>
</details>

**社区讨论**: 评论者大多赞同核心论点，有人称赞 Costco“避开最后一英里问题”是明智的工程设计。另有人指出，Costco 现在通过 Instacart 提供当日达服务，使“反亚马逊”的标签变得复杂。一些人就 Costco 和亚马逊因产品类别不同而竞争的程度进行了辩论。

**标签**: `#business-model`, `#logistics`, `#e-commerce`, `#warehouse-club`, `#analysis`

---

<a id="item-10"></a>
## [工厂只是房间：简化制造思维](https://interconnected.org/home/2026/07/03/factories) ⭐️ 7.0/10

一篇博客文章主张将工厂视为简单的房间，揭开制造业的神秘面纱，鼓励任何人都可以制造东西的思维方式。它倡导降低生产的进入门槛。 这一观点挑战了现代制造业令人生畏的复杂性，可能激励更多人成为制造者和小规模生产者。它可能促使教育和文化转向动手制作和创新。 这篇文章源于作者在学校的一次演讲，旨在激励孩子们成为设计师、工程师和发明家。评论讨论了‘工厂就是房间’的实际商业案例，以及‘你可以做到’这种心态的缺失。

hackernews · arbesman · 7月3日 15:13 · [社区讨论](https://news.ycombinator.com/item?id=48776035)

**社区讨论**: 评论既有支持也有批评。一些人欣赏简单化思维，并回忆起《万物运转的秘密》等书籍，而另一些人质疑工厂对劳动者来说是否‘只是房间’，并指出这种态度可能无法维持稳定的业务。

**标签**: `#manufacturing`, `#education`, `#mindset`, `#maker culture`

---

<a id="item-11"></a>
## [开放权重大模型微调抵抗性的讨论](https://www.reddit.com/r/MachineLearning/comments/1um9bs7/what_does_safe_ai_look_like_d/) ⭐️ 7.0/10

Reddit 上一场讨论质疑开放权重大模型微调抵抗性的实用性，以及如果安全训练可以被自动化脚本轻松绕过，是否还值得投入。 这场辩论对人工智能安全治理至关重要，因为它质疑了当前开放权重模型安全对齐的有效性，并凸显了开放与控制之间的张力。 原帖指出新模型的‘未经审查’变体迅速出现，并询问即使无法完美预防，提高攻击者成本或降低安全移除的可靠性是否有价值。

reddit · r/MachineLearning · /u/Aaron_Rock · 7月3日 09:07

**背景**: 开放权重大模型是指权重公开的模型，允许任何人对其进行微调。微调可能无意或故意移除安全护栏，正如近期研究（如 ArXiv 2310.03693）所示，微调后安全对齐被削弱。这促使了微调抵抗性方案的提出，但其可行性仍存争议。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/pdf/2310.03693">FINE-TUNING ALIGNED LANGUAGE MODELS COMPROMISES SAFETY,</a></li>
<li><a href="https://cdt.org/press/new-report-reveals-unexpected-safety-risks-from-ai-fine-tuning/">New Report Reveals Unexpected Safety Risks from AI Fine-Tuning - Center for Democracy and Technology</a></li>

</ul>
</details>

**标签**: `#AI safety`, `#fine-tuning`, `#open-weight models`, `#model governance`, `#adversarial robustness`

---

<a id="item-12"></a>
## [Fable 的判断：让 AI 模型自主分配任务](https://simonwillison.net/2026/Jul/3/judgement/#atom-everything) ⭐️ 6.0/10

Simon Willison 分享了来自 Claude Code 团队的一个技巧：不要硬编码任务委派规则，而是让 Fable 等模型根据自己的判断来决定哪些任务要自动化、运行哪些测试以及为子任务使用哪个模型。他随后通过提示 Claude Code 将编码任务委派给运行较低功率模型的子代理，从而节省了 Fable 令牌。 这种方法提高了使用 Claude Code 等 AI 编码助手的开发者的工作效率，在不牺牲质量的情况下降低了 API 成本。它还突出了一种微妙的提示工程策略，利用模型自主性，可以应用于其他大型语言模型的工作流程。 使用的关键提示是“对于所有编码任务，使用你的判断来决定一个合适的较低功率模型并在子代理中运行它”，这使 Claude Code 创建了一个记忆文件，其中包含将任务委派给 Sonnet 或 Haiku 模型的详细说明。用户报告说，这让他们能够完成大量工作，同时消耗 Fable 令牌的速度变慢了。

rss · Simon Willison · 7月3日 18:51

**背景**: Fable 是 Anthropic 强大的 Mythos 模型的一个受限版本，属于 Claude 系列。Claude Code 是一个 AI 驱动的编码助手，可以将任务委派给运行不同模型（如 Haiku、Sonnet、Opus）的子代理，这些模型具有不同的成本和能力。通过让模型自行决定每个子任务使用哪个模型，用户可以在性能和令牌经济性之间进行优化。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://sanmartinowine.com/article/anthropic-s-fable-ai-model-the-pandora-s-box-of-ai-capabilities">Anthropic's Fable AI Model: The Pandora's Box of AI</a></li>
<li><a href="https://en.wikipedia.org/wiki/Claude_Code">Claude Code</a></li>
<li><a href="https://en.wikipedia.org/wiki/Prompt_engineering">Prompt engineering - Wikipedia</a></li>

</ul>
</details>

**标签**: `#AI`, `#prompt engineering`, `#Claude`, `#workflow optimization`, `#token management`

---