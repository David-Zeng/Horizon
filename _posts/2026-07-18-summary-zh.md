---
layout: default
title: "Horizon Summary: 2026-07-18 (ZH)"
date: 2026-07-18
lang: zh
---

> 从 17 条内容中筛选出 13 条重要资讯。

---

1. [LG 显示器通过 Windows Update 未经同意安装软件](#item-1) ⭐️ 9.0/10
2. [GPT-5.6 通过提示词攻克凸优化三十年未解难题](#item-2) ⭐️ 8.0/10
3. [告别，感谢所有的自行车棚](#item-3) ⭐️ 8.0/10
4. [Stack Overflow 衰落可视化：AI、政策与收购](#item-4) ⭐️ 8.0/10
5. [DeepMind/Kaggle AI 竞赛获奖者被指毫无意义](#item-5) ⭐️ 8.0/10
6. [Stereo2Spatial：用 AI 将立体声音乐转换为双耳空间音频](#item-6) ⭐️ 8.0/10
7. [Fable 5 与 GPT-5.6 Sol 在 NP-hard 问题上的对决：/goal 指令有效吗？](#item-7) ⭐️ 7.0/10
8. [Claude Fable 5 在订阅计划中永久保留](#item-8) ⭐️ 7.0/10
9. [你若建造，他们自会来](#item-9) ⭐️ 6.0/10
10. [指南：利用备用 Mac 隔离 Claude Code 代理](#item-10) ⭐️ 6.0/10
11. [Elixir 官网全新设计，支持暗色模式](#item-11) ⭐️ 6.0/10
12. [逆向 JPEG 图像从下往上加载](#item-12) ⭐️ 6.0/10
13. [TabFM Studio：在电子表格上通过表格基础模型进行无代码预测](#item-13) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [LG 显示器通过 Windows Update 未经同意安装软件](https://videocardz.com/newz/lg-monitors-silently-install-software-through-windows-update-without-user-consent) ⭐️ 9.0/10

发现 LG 显示器会触发 Windows Update 在用户 PC 上静默安装 LG 软件，完全未经用户同意或通知，构成安全与隐私风险。 此问题影响数百万拥有 LG 显示器的 Windows 用户，因为只要通过 HDMI 连接显示器，软件就会自动安装并获得系统级访问权限。它暴露了 Windows Update 驱动同意模型的根本缺陷，任何硬件制造商都可能利用此机制部署潜在不需要的软件。 该软件通过 Windows Update 的驱动预置机制安装，每次启动时运行，拥有完全的系统与网络访问权限且无沙盒隔离，甚至影响已经连接旧款 LG 显示器的用户。解决方法是通过组策略或设备安装设置禁用自动下载制造商应用。

hackernews · baranul · 7月18日 10:21 · [社区讨论](https://news.ycombinator.com/item?id=48956688)

**背景**: Windows Update 可以自动下载并安装硬件制造商提供的驱动程序及相关软件，以确保设备正常工作。但这一“驱动预置”功能可能被制造商滥用，未经用户同意推送无关软件，正如本例所示。此问题类似于过去 Windows 的自动运行恶意软件问题，责任指向微软过于宽松的更新模型。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.bleepingcomputer.com/news/microsoft/microsoft-blames-unexpected-windows-driver-updates-on-caching-issue/">Microsoft blames unexpected Windows driver updates on caching issue</a></li>
<li><a href="https://windowsnews.ai/article/microsofts-july-update-blocks-clfs-driver-attack-that-could-hand-system-control-to-local-users.438618">Microsoft’s July Update Blocks CLFS Driver Attack That Could Hand SYSTEM Control to Local Users - Windows News</a></li>

</ul>
</details>

**社区讨论**: 社区评论强烈谴责此行为，用户指出其严重性：第三方软件在零用户交互下自动安装，仅需插入 HDMI 设备，且拥有完全系统权限。用户提供了通过组策略设置解决的方法，部分人批评微软未对硬件制造商执行更严格的规定。

**标签**: `#privacy`, `#security`, `#windows`, `#lg`, `#driver attack`

---

<a id="item-2"></a>
## [GPT-5.6 通过提示词攻克凸优化三十年未解难题](https://old.reddit.com/r/math/comments/1uxj3cy/after_openais_cdc_proof_announcement_gpt56_used_a/) ⭐️ 8.0/10

先进语言模型 GPT-5.6 通过精心设计的提示词，解决了一个长期悬而未决的凸优化问题，填补了球域上凸 Lipschitz 函数最优时间复杂度的三十年空白。 这一突破表明，大型语言模型能够为基础数学研究做出贡献，可能加速优化及相关领域的发现，同时也对人类研究员在解决开放问题中的未来角色提出了疑问。 该问题涉及凸 Lipschitz 函数的时间复杂度上界，其中球域的限制并非实质性的。据一些消息来源称，解决方案是通过 GPT-5.6 的“vibe coding”功能实现的，这是一项具体的数学贡献。

hackernews · mbustamanter · 7月18日 13:00 · [社区讨论](https://news.ycombinator.com/item?id=48957779)

**背景**: 凸优化是数学优化的一个子领域，研究在凸集上最小化凸函数。核心问题是确定解决此类问题的时间复杂度；对于有界域上的凸 Lipschitz 函数，最优迭代复杂度三十年来未知。这里的“填补空白”指的是建立了匹配的上界，从而解决了该开放问题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://news.ycombinator.com/item?id=48957779">GPT-5.6 used a prompt to close a 30-year gap in convex optimization | Hacker News</a></li>
<li><a href="https://haltmal.com/learning-knowledge-work/gpt-5-6-used-a-prompt-to-close-a-30-year-gap-in-convex-optimization/">GPT - 5 .6 Used A Prompt To Close A 30-Year Gap In Convex ... - Halt Mal</a></li>

</ul>
</details>

**社区讨论**: 社区成员承认这一贡献，但对功劳归属存在质疑，认为应归功于人类研究员而非语言模型。有用户指出，这解决的是一个特定的、小众猜想；其他人则讨论了对初级研究员及数学研究未来的影响。部分评论对人工智能的潜力表示兴奋，同时提醒不要过度归因。

**标签**: `#AI`, `#convex optimization`, `#mathematics`, `#research`, `#LLM`

---

<a id="item-3"></a>
## [告别，感谢所有的自行车棚](https://queue.acm.org/detail.cfm?id=3818307) ⭐️ 8.0/10

Poul-Henning Kamp (PHK) 发表了一篇告别文章，回顾了他的职业生涯和软件工程中的自行车棚（bikeshedding）概念，并分享了他对大型语言模型（LLM）和开源年龄限制的看法。 这篇文章意义重大，因为 PHK 是 FreeBSD 和开源领域极具影响力的人物，他对自行车棚（bikeshedding）的见解塑造了软件工程文化。他对 LLM 和监管的前瞻性评论可能影响社区讨论。 PHK 预测 LLM 辅助代码审查不会带来巨大变革，一些评论者认为这一观点脱离现实。他还对 FOSS 可能面临的年龄限制表示担忧，认为这可能威胁到生态系统。

hackernews · Ygg2 · 7月18日 17:27 · [社区讨论](https://news.ycombinator.com/item?id=48960155)

**背景**: 自行车棚（bikeshedding），也称为琐事定律，描述了在琐碎问题上花费过多时间的倾向。这一术语由 PHK 在软件工程中推广。他是一位丹麦开发者，以对 FreeBSD 的重大贡献而闻名，包括创建 MD5crypt 密码哈希算法和 Varnish Cache 项目。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Law_of_triviality">en.wikipedia.org › wiki › Law_of_triviality Law of triviality - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Poul-Henning_Kamp">en.wikipedia.org › wiki › Poul -Henning_Kamp Poul-Henning Kamp - Wikipedia</a></li>
<li><a href="https://people.freebsd.org/~phk/">people. freebsd .org › ~phk Poul-Henning Kamp - FreeBSD</a></li>

</ul>
</details>

**社区讨论**: 评论者大多表示尊重，throw0101a 强调了 PHK 创建 MD5crypt 的贡献。一些人，如 st3fan，强烈反对他对 LLM 的预测，认为其脱离现实。另一些人，如 ai_critic，建议多次阅读文章以充分领会其深度。

**标签**: `#software engineering`, `#bikeshedding`, `#PHK`, `#FreeBSD`, `#community reflection`

---

<a id="item-4"></a>
## [Stack Overflow 衰落可视化：AI、政策与收购](https://data.stackexchange.com/stackoverflow/query/1953768#graph) ⭐️ 8.0/10

Stack Exchange Data Explorer 的一个数据可视化图表显示了 Stack Overflow 活动的长期下降，引发了社区关于原因的讨论。讨论指出 AI 工具、排他性的审核政策以及 2021 年 Prosus 收购是关键因素。 Stack Overflow 是开发者知识的重要基石，其衰落预示着程序员寻求帮助方式的转变，AI 和更现代化的平台正在取代传统的问答论坛。理解原因有助于技术社区适应不断变化的信息寻求行为。 该图表显示活动在 2014 年左右达到顶峰，然后在 ChatGPT 兴起之前就稳定下降。评论者指出，在 Prosus 收购和实施严格的审核政策后，下降加速，这些政策劝阻了新用户。

hackernews · secretslol · 7月18日 11:12 · [社区讨论](https://news.ycombinator.com/item?id=48956949)

**背景**: Stack Overflow 是一个面向程序员的问答网站，于 2008 年推出。它因其严格的审核和游戏化系统而变得不可或缺，但同样的政策后来为新人设置了高门槛。该网站于 2021 年被 Prosus 收购，而 ChatGPT 等 AI 聊天机器人的兴起为快速获取答案提供了替代方案。

**社区讨论**: 评论者普遍认为 Stack Overflow 的衰落是由多种因素造成的：AI、排他性的社区审核以及企业收购。有人认为该网站严格的‘不对话’政策赶走了用户，而另一些人则指出衰落早在 AI 成为主流之前就开始了。情绪上对 Stack Overflow 的管理持批评态度，并对早期的互联网论坛感到怀念。

**标签**: `#Stack Overflow`, `#AI impact`, `#community management`, `#online platforms`, `#data analysis`

---

<a id="item-5"></a>
## [DeepMind/Kaggle AI 竞赛获奖者被指毫无意义](https://www.reddit.com/r/MachineLearning/comments/1uzyf66/did_blatant_ai_slop_just_win_a_25k_usd_deepmind/) ⭐️ 8.0/10

一位 Reddit 用户声称，DeepMind/Kaggle "衡量 AGI 进展" 竞赛的大奖得主提交了毫无意义的作品，质疑评审过程的公正性。 此争议挑战了高知名度的 AI 竞赛的可信度，并引发了对 AI 研究同行评审的担忧，可能削弱对基准驱动进展声明的信任。 据报道，获奖作品是要求提交规模的 10 倍，包含“光说不练”的代码和无根据的声明，却获得了 25,000 美元的大奖。

reddit · r/MachineLearning · /u/TheWerkmeister · 7月18日 15:10

**背景**: Kaggle 是一个数据科学竞赛平台。该特定挑战由 Google DeepMind 赞助，要求参与者设计基于认知科学的新基准，以衡量人工通用智能（AGI）的进展。该帖子暗示获奖团队的提交缺乏严谨的方法论。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://cognitiveaibenchmarking.org/">cognitiveaibenchmarking.org Cognitive-AI Benchmarking - CAB @ CogSci 2023</a></li>
<li><a href="https://arcprize.org/">ARC Prize Foundation is a nonprofit advancing open-source AGI ...</a></li>

</ul>
</details>

**标签**: `#AI ethics`, `#Kaggle`, `#DeepMind`, `#research integrity`, `#controversy`

---

<a id="item-6"></a>
## [Stereo2Spatial：用 AI 将立体声音乐转换为双耳空间音频](https://www.reddit.com/r/MachineLearning/comments/1uzevbg/stereo2spatial_convert_stereo_music_tracks_to/) ⭐️ 8.0/10

作者发布了 Stereo2Spatial 模型，该模型使用流匹配扩散方法，并引入记忆令牌以实现稳定的长上下文生成，将立体声音乐转换为空间化双耳混音。该模型在 7,669 首曲目上训练了约 20 天，使用了两块 A6000 GPU。 这解决了现有音乐缺乏高质量空间混音的问题，使任何人都可以从立体声源创建沉浸式双耳体验。该方法结合了扩散模型与波形域训练，并通过幅度提升克服了稳定性问题。 该模型在波形域中运行，采用幅度提升（将 RMS 缩放到 0.33，然后乘以 3，限幅为 4.0）以确保训练稳定，灵感来自 WavFlow 论文。它包含可选的混音风格条件控制以实现可控输出，并以 Apache 2.0 许可证发布，附带 Windows 桌面推理应用。

reddit · r/MachineLearning · /u/kittenkrazy · 7月17日 22:55

**背景**: 流匹配扩散是一种生成建模技术，通过连续时间过程学习将噪声转换为数据。变分自编码器（VAE）将音频压缩到低维潜在空间中。双耳音频通过两个声道重建 3D 声音体验，模拟人类听到的空间线索。EAR-VAE 是一种用于高保真音乐重建的感知 VAE。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://diffusion.csail.mit.edu/2026/index.html">diffusion .csail.mit.edu Flow Matching and Diffusion Models — 2026 Version</a></li>
<li><a href="https://huggingface.co/earlab/EAR_VAE">earlab/ EAR _ VAE · Hugging Face</a></li>
<li><a href="https://arxiv.org/abs/2605.18226">[2605.18226] Context Memorization for Efficient Long Context Generation</a></li>

</ul>
</details>

**标签**: `#MachineLearning`, `#AudioProcessing`, `#SpatialAudio`, `#DiffusionModels`, `#VAE`

---

<a id="item-7"></a>
## [Fable 5 与 GPT-5.6 Sol 在 NP-hard 问题上的对决：/goal 指令有效吗？](https://charlesazam.com/blog/fable-5-gpt-5-6-sol-goal/) ⭐️ 7.0/10

Charles Azam 进行了一项技术评估，比较 Anthropic 的 Claude Fable 5 和 OpenAI 的 GPT-5.6 Sol 在 NP-hard 问题上的表现，并测试 /goal 指令是否能提升性能。 这项比较为开发者在复杂推理任务中选择领先 AI 模型提供了实用见解，并揭示了 /goal 这类提示指令的有效性。 评估聚焦于一个 NP-hard 问题（可能是组合优化），并衡量添加 /goal 指令是否能帮助模型保持专注。社区成员建议在类似测试中尝试“ultra 模式”。

hackernews · couAUIA · 7月18日 11:00 · [社区讨论](https://news.ycombinator.com/item?id=48956879)

**背景**: NP-hard 问题是一类尚无已知高效算法的问题，因此成为测试 AI 推理能力的严格基准。/goal 指令是一种提示技术，旨在让模型在整个交互过程中牢记特定目标，可能有助于提升任务完成度。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/claude/fable">Claude Fable \ Anthropic</a></li>
<li><a href="https://en.wikipedia.org/wiki/GPT-5.6">GPT-5.6 - Wikipedia</a></li>
<li><a href="https://openai.com/index/previewing-gpt-5-6-sol/">Previewing GPT-5.6 Sol: a next-generation model | OpenAI</a></li>

</ul>
</details>

**社区讨论**: 社区成员指出，ultra 模式可能对搜索策略更有效；一些用户反映 Claude（Fable）在长会话中表现不佳，而 GPT-5.6 Sol 配合 Codex 提供了更好的编码体验。还有人希望展示随时间变化的最佳得分，而非仅最终结果。

**标签**: `#AI comparison`, `#NP-hard problem`, `#coding`, `#GPT`, `#Claude`

---

<a id="item-8"></a>
## [Claude Fable 5 在订阅计划中永久保留](https://simonwillison.net/2026/Jul/18/claude-make-fable-5-permanent/#atom-everything) ⭐️ 7.0/10

Anthropic 撤销了之前从订阅账户中移除 Claude Fable 5 的决定，自 7 月 20 日起，将其以 50% 的配额包含在 Max 和 Team Premium 计划中，并为 Pro 和 Team Standard 用户提供一次性 100 美元积分及按用量访问的权限。 这一逆转凸显了来自 GPT-5.6 Sol 和 Kimi 3 等竞争对手的压力如何迫使 Anthropic 将其最佳模型保留给订阅用户，从而避免用户流失并维持高端订阅的价值。 每月 20 美元的计划仍不包含 Fable 5；只有 Max 计划（每月 100 美元和 200 美元）包含该模型。最初的移除是由于计算能力限制，Anthropic 可能需要将 GPU 资源从训练重新分配给模型服务。

rss · Simon Willison · 7月18日 06:00

**背景**: Claude Fable 5 是 Anthropic 功能最强大的广泛发布模型，专为要求苛刻的编码和长期代理任务而设计。它是 Claude Mythos 系列的一部分。OpenAI 的 GPT-5.6 Sol 和新兴的 Kimi 3 等竞争对手加剧了 AI 模型市场的竞争，迫使公司调整定价和访问策略以留住订阅用户。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/claude/fable">www.anthropic.com › claude › fable Claude Fable \ Anthropic</a></li>
<li><a href="https://platform.claude.com/docs/en/about-claude/models/introducing-claude-fable-5-and-claude-mythos-5">platform. claude .com › docs › en Introducing Claude Fable 5 and Claude Mythos 5</a></li>
<li><a href="https://coursiv.io/blog/chatgpt-5-6-sol">GPT - 5 . 6 Sol : Benchmarks, API Pricing & Review | Coursiv Blog</a></li>

</ul>
</details>

**标签**: `#Claude`, `#Fable 5`, `#Anthropic`, `#AI pricing`, `#competition`

---

<a id="item-9"></a>
## [你若建造，他们自会来](https://www.benlandautaylor.com/p/if-you-build-it-they-will-come) ⭐️ 6.0/10

文章指出，社区需要主动的努力而非被动消费，挑战了人们对社交场景常见的消费者心态。 这一观点意义重大，因为它通过鼓励个人在构建社会资本中承担责任感来应对社会疏离，影响所有寻求有意义联系的人。 作者用野生蓝莓丛作比喻，说明人们常以为社区会自然出现，但实际上需要精心培养和努力。

hackernews · barry-cotter · 7月18日 15:37 · [社区讨论](https://news.ycombinator.com/item?id=48959090)

**背景**: 社区建设指的是有意地创造社会纽带和共享空间，而非被动消费现有资源。许多人以为社交场景（如派对或读书小组）会自发出现，但实际上它们往往需要组织者和积极参与者。本文批评了这种被动期望，并倡导主动贡献。

**社区讨论**: 评论者反思了消费者心态，并分享了作为社区建设者的个人经历，强调脆弱性和倦怠风险。一些人将搭便车者视为问题，而另一些人则视其为变现的机会。总体情绪是赞赏的，并与文章的核心论点产生了共鸣。

**标签**: `#community building`, `#social dynamics`, `#personal responsibility`, `#culture`

---

<a id="item-10"></a>
## [指南：利用备用 Mac 隔离 Claude Code 代理](https://ykdojo.github.io/claude-controls-mac/) ⭐️ 6.0/10

一篇分步指南已发布，详细说明如何设置备用 Mac，在隔离环境中运行 Claude Code，以降低 AI 代理操作的风险。 该指南解决了开发者使用 Claude Code 等 AI 编码代理时的实际安全问题，尽管社区讨论表明虚拟化可能比物理硬件隔离更高效。 该指南特别提到图形开发作为隔离用例，而社区成员提出使用 libvirt 或 UTM 运行 macOS 虚拟机作为替代方案。

hackernews · ykev · 7月18日 16:12 · [社区讨论](https://news.ycombinator.com/item?id=48959392)

**背景**: Claude Code 是 Anthropic 开发的代理式编程工具，可以编辑文件并在终端中运行命令。运行具有系统访问权限的此类代理存在风险，因此催生了多种隔离方法。物理硬件隔离是一种极端方式，但虚拟化更为常见。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Claude_Code">Claude Code</a></li>
<li><a href="https://claude.com/product/claude-code">Claude Code by Anthropic | AI Coding Agent, Terminal, IDE</a></li>

</ul>
</details>

**社区讨论**: 用户 esaym 认为除图形开发外，物理硬件隔离没有必要，并分享了一个 libvirt 脚本。Catoc 质疑 24 小时 AI 助手的实际用例。Arxari 开玩笑说前提是得有台备用 Mac。Somewhatrandom9 建议使用 UTM 虚拟机，但指出其 UI 性能不佳。

**标签**: `#Claude Code`, `#Mac automation`, `#AI agents`, `#virtualization`

---

<a id="item-11"></a>
## [Elixir 官网全新设计，支持暗色模式](https://elixir-lang.org/) ⭐️ 6.0/10

Elixir 编程语言的官方网站 (elixir-lang.org) 进行了全面改版，采用了现代设计风格，支持暗色模式，并更新了内容以反映最新的生态发展。 此次改版提升了新用户的首次印象，展示了 Elixir 的成熟度，有望吸引更多开发者加入其生态系统。同时，它也迎合了暗色模式等现代网页可用性偏好。 网站现在默认使用暗色模式，但一些用户指出缺少显眼的切换按钮来返回亮色模式。社区还指出了 Erlang 卡片中的一个微小拼写错误。

hackernews · bbg2401 · 7月18日 15:32 · [社区讨论](https://news.ycombinator.com/item?id=48959042)

**背景**: Elixir 是一种基于 Erlang 虚拟机 (BEAM) 的动态函数式编程语言，以其并发性和容错性著称。官方网站是文档、新闻和社区信息的主要来源。旧版设计已使用多年，因此此次更新是一次显著的刷新。

**社区讨论**: 社区普遍对新设计表示赞赏，并对 José Valim 及其团队表示感谢。然而，一些用户希望有更显眼的亮色模式切换按钮，同时还有一个拼写错误被指出。总体情绪积极，大家欣赏其现代外观。

**标签**: `#Elixir`, `#website redesign`, `#programming languages`, `#web development`

---

<a id="item-12"></a>
## [逆向 JPEG 图像从下往上加载](https://maurycyz.com/projects/bad_jpeg/) ⭐️ 6.0/10

一个项目展示了“逆向 JPEG”效果，图片从下往上加载，而非传统的自上而下或渐进式解码。这是通过 JPEG 文件中的多个扫描头实现的，每个扫描头代表一个水平条带。 该技术提供了一种独特的视觉效果，并可能在隐写术中发挥作用——中间帧可以隐藏数据，也可作为网络加载的新型进度条。它还凸显了 JPEG 格式超乎常规用途的灵活性。 每个条带的显示时间完全取决于网络延迟，但服务器可以通过将每个扫描作为独立块发送并设置固定延迟来控制时序。该项目包含一个概念验证，展示了恶搞动画。

hackernews · vitaut · 7月18日 03:14 · [社区讨论](https://news.ycombinator.com/item?id=48954851)

**背景**: JPEG 图像可以存储为基线（自上而下）或渐进（交错）模式。渐进式 JPEG 通过多次扫描解码，先显示低分辨率版本再逐步细化。逆向 JPEG 则反转这一过程，从下往上显示图像。JPEG 隐写术通常通过修改量化 DCT 系数来隐藏数据。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ctrl.blog/entry/jpeg-progressive-loading.html">Progressive JPEGs make a meaningful impact on perceived... | Ctrl blog</a></li>

</ul>
</details>

**社区讨论**: 评论者提到了类似的使用交错 PNG 的工作，并提出了实用场景如进度条和隐写术。一位评论者指出，服务器控制的时序可以实现可预测的播放。整体氛围积极，这项技术被称为“邪门”但有趣。

**标签**: `#jpeg`, `#compression`, `#steganography`, `#web`, `#visual-effects`

---

<a id="item-13"></a>
## [TabFM Studio：在电子表格上通过表格基础模型进行无代码预测](https://www.reddit.com/r/MachineLearning/comments/1uzx1el/tabfm_studio_pointandclick_predictions_on/) ⭐️ 6.0/10

TabFM Studio 是一款新的无代码 Web 应用，用户只需拖入 CSV/Excel 文件并点击即可在本地运行 Google 的 TabFM 表格基础模型进行预测。它将该模型封装在点击式界面中，让非编程人员也能进行零样本预测。 该工具让非编程人员也能使用表格基础模型，降低了在电子表格数据上进行本地预测的门槛。它简化了如 TabFM 等先进 ML 模型的使用，这些模型传统上需要编程技能。 TabFM Studio 目前仅支持 Google 的 TabFM 模型，完全在本地运行，并利用上下文学习，填充的单元格作为示例。该应用是开源的，其代码仓库在 GitHub 上。

reddit · r/MachineLearning · /u/Lckylke · 7月18日 14:15

**背景**: 表格基础模型 (TFM) 在数百万数据集上预训练，可通过上下文学习进行预测而无需微调。Google 的 TabFM 是一个零样本表格数据模型，支持分类和回归。类似 TabPFN 的 TFM 在中小型数据集上表现优异，且 TabFM 正被集成到 BigQuery 中。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://research.google/blog/introducing-tabfm-a-zero-shot-foundation-model-for-tabular-data/">research. google › blog › introducing- tabfm -a-zero-shot Introducing TabFM: A zero-shot foundation model for tabular data</a></li>
<li><a href="https://github.com/google-research/tabfm">github.com › google -research › tabfm GitHub - google-research/tabfm: TabFM (Tabular Foundation Model)...</a></li>
<li><a href="https://tabularfoundationmodels.com/">tabularfoundationmodels.com Tabular Foundation Models</a></li>

</ul>
</details>

**标签**: `#tabular foundation models`, `#no-code ML`, `#spreadsheet predictions`, `#TabFM`, `#local AI`

---