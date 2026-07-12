---
layout: default
title: "Horizon Summary: 2026-07-12 (ZH)"
date: 2026-07-12
lang: zh
---

> 从 15 条内容中筛选出 9 条重要资讯。

---

1. [Claude Code 与 OpenCode 的代币开销对比：3.3 万 vs 7 千](#item-1) ⭐️ 8.0/10
2. [George Hotz：爱 LLM，恨炒作](#item-2) ⭐️ 8.0/10
3. [陶哲轩使用 LLM 编码代理构建数学教育应用](#item-3) ⭐️ 8.0/10
4. [CGI 与大模型：实用技能被低估](#item-4) ⭐️ 8.0/10
5. [带状疱疹疫苗或可降低痴呆风险](#item-5) ⭐️ 7.0/10
6. [Ghostel.el：由 libghostty 驱动的 Emacs 终端模拟器](#item-6) ⭐️ 7.0/10
7. [Zer0Fit MCP 服务器封装 Google TabFM 和 TimesFM，实现本地零样本机器学习](#item-7) ⭐️ 7.0/10
8. [sqlite-utils 4.1 为 insert/upsert 添加 --code 选项](#item-8) ⭐️ 6.0/10
9. [神经网络中的上下文与平均最佳线性映射](#item-9) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [Claude Code 与 OpenCode 的代币开销对比：3.3 万 vs 7 千](https://systima.ai/blog/claude-code-vs-opencode-token-overhead) ⭐️ 8.0/10

一项实证对比显示，Claude Code 在真正处理用户提示前，会消耗约 33,000 个代币的开销，而 OpenCode 仅需约 7,000 个代币，暴露出其在缓存策略和框架设计上的显著低效。 代币消耗直接影响使用 AI 编程工具的开发者成本；像 Claude Code 这样低效的工具会导致费用大幅增加，影响工具选择，并促使服务商优化其架构。 该研究在 AI 编程工具与 Anthropic 的 API 端点之间加入了日志记录，以捕获所有请求的用量数据，文章末尾讨论了关于可能存在的质量差异的一个注意事项。

hackernews · systima · 7月12日 18:25 · [社区讨论](https://news.ycombinator.com/item?id=48883275)

**背景**: Claude Code 和 OpenCode 这类 AI 编程工具使用“代理框架”来管理工具调用、记忆和执行，这会在模型响应之外增加额外开销。缓存策略决定了如何有效复用提示以避免冗余的代币消耗。此次对比凸显了框架设计和缓存策略对运营成本的巨大影响。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://prowe214.medium.com/agentic-coding-harnesses-a-comparison-4db34b87fd5c">Agentic Coding Harnesses: A Comparison | by Paul Cullen Rowe | Medium</a></li>
<li><a href="https://pub.towardsai.net/your-ai-coding-bill-is-not-a-model-problem-its-an-orchestration-problem-eeeacb340d1e">Your AI Coding Bill Is Not a Model Problem. | Towards AI</a></li>
<li><a href="https://www.mindstudio.ai/blog/what-is-agent-harness-architecture-explained">What Is an Agent Harness? The Architecture Behind Claude Code, Codex, and Cursor | MindStudio</a></li>

</ul>
</details>

**社区讨论**: 社区成员指出，子代理是代币消耗的主要来源，有用户报告 Claude Code 启动了 7 个子代理，还没等任何一个完成就耗尽了预算。另一用户猜测 Anthropic 可能有意增加代币用量以获取更多收益，并指出其订阅无法用于其他代理。还有用户称赞 Codex 的透明度和较低开销。

**标签**: `#AI coding tools`, `#token efficiency`, `#Claude Code`, `#OpenCode`, `#software engineering`

---

<a id="item-2"></a>
## [George Hotz：爱 LLM，恨炒作](https://geohot.github.io//blog/jekyll/update/2026/07/12/i-love-llms.html) ⭐️ 8.0/10

George Hotz 发表博客文章，表达了他对 LLM 生产力提升的赞赏，同时批评了围绕它们的炒作，并质疑为何承诺的新软件尚未出现。 作为知名技术专家，Hotz 的批评凸显了 LLM 能力与真实世界软件创新之间日益扩大的鸿沟，引发了对 AI 热潮可持续性及方向的重大质疑。 Hotz 指出，尽管使用 LLM 带来了可衡量的生产力提升，但预期的全新软件应用爆发并未出现，这暗示 LLM 可能更擅长增强现有工作流而非创造新工作流。

hackernews · therepanic · 7月12日 18:31 · [社区讨论](https://news.ycombinator.com/item?id=48883343)

**背景**: 大型语言模型（LLM）如 GPT-4 迅速发展，被广泛应用于编程、写作和分析。然而，批评者认为炒作常常超过实际效用，许多应用仍停留在实验性或增量改进阶段。comma.ai 创始人、以逆向思维闻名的 George Hotz 加入了这场辩论。

**社区讨论**: 评论者大体赞同 Hotz 的观点，分享了 LLM 带来生产力提升的个人体验，同时对成本上升和补贴定价表示担忧。一些人认为 LLM 开启了软件‘随心所欲’的时代，而另一些人则质疑真正变革性 AI 是否临近，并指出通用智能缺乏‘秘方’。

**标签**: `#LLM`, `#productivity`, `#hype`, `#open source`

---

<a id="item-3"></a>
## [陶哲轩使用 LLM 编码代理构建数学教育应用](https://terrytao.wordpress.com/2026/07/11/old-and-new-apps-via-modern-coding-agents/) ⭐️ 8.0/10

菲尔兹奖得主陶哲轩利用基于 LLM 的编码代理构建了用于数学教育的交互式可视化和应用程序，并记录了他的经验，强调了此类代理的实用性和局限性。 这意义重大，因为一位世界知名数学家积极验证了 LLM 编码代理在学术环境中的实际用途，可能鼓励更广泛的采用，并凸显了非传统领域中未被开发的软件需求。 陶哲轩指出，虽然 LLM 编码的可视化对其论文并非关键任务，但使用这些代理生成补充内容的下行风险是可以接受的。该博客文章在 Hacker News 上获得了高度关注（358 分，103 条评论）。

hackernews · subset · 7月12日 11:09 · [社区讨论](https://news.ycombinator.com/item?id=48880170)

**背景**: 陶哲轩是菲尔兹奖得主数学家，以分析、数论和偏微分方程领域的工作闻名。基于 LLM 的编码代理是能够根据自然语言提示生成代码的 AI 工具，从而实现软件的快速原型设计。这一新闻反映了领域专家利用 AI 构建工具而无需深厚编程技能的增长趋势。

**社区讨论**: 社区评论总体积极，一些人分享了使用 LLM 进行教育可视化的个人经验。部分评论幽默地将陶哲轩的使用比作厨师发现微波晚餐，但总体上认可了陶哲轩帖子中平衡的视角。

**标签**: `#AI coding agents`, `#LLM`, `#software development`, `#mathematics`, `#visualization`

---

<a id="item-4"></a>
## [CGI 与大模型：实用技能被低估](https://fabiensanglard.net/extinct/index.html) ⭐️ 8.0/10

Fabien Sanglard 发表文章，将电影行业从实际特效转向 CGI 与软件行业采用大语言模型（LLM）进行类比，认为数量不等于质量，实用技能正在被贬低。 这一类比凸显了软件工程中可能的手艺流失：依赖 LLM 生成的代码可能优先考虑产出而非理解，与电影中实际特效的衰退相似。 Sanglard 指出，拒绝使用 LLM 的人可能在生产力上落后，但质量仍需手动迭代；电影行业在几十年 CGI 后向实际特效的回归展示了类似模式。

hackernews · zdw · 7月12日 15:17 · [社区讨论](https://news.ycombinator.com/item?id=48881830)

**背景**: 大语言模型（LLM）是在海量文本数据上训练的 AI 模型，能够生成类似人类的文本和代码。它们被广泛应用于软件开发以提高生产力，但过度依赖和质量问题引发担忧。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Large_language_model">Large language model - Wikipedia</a></li>

</ul>
</details>

**社区讨论**: 评论者指出，CGI 因缺乏工会化而贬低了技能劳动；有人质疑数量是软件工程师的主要衡量标准，认为乐趣和工匠精神更重要。还有人分享使用 LLM 后仍需迭代精炼以达到手工质量。

**标签**: `#LLM`, `#software engineering`, `#CGI`, `#analogy`, `#productivity`

---

<a id="item-5"></a>
## [带状疱疹疫苗或可降低痴呆风险](https://www.economist.com/leaders/2026/07/09/a-no-brainer-for-protecting-your-brain) ⭐️ 7.0/10

《经济学人》报道称，带状疱疹疫苗（Shingrix）可能降低痴呆风险，基于观察性研究显示，在几年内痴呆诊断绝对减少了 1.8%至 3.5%。 如果存在因果关系，这一发现可能提供一种简单、可扩展的干预措施，以减轻痴呆负担，影响全球数百万老年人。它突显了疫苗在预防传染病之外的潜力。 在澳大利亚和加拿大的重复研究显示效果较小，一些研究人员认为这种表面上的保护作用可能是由于检测偏差：接种疫苗的人住院次数减少，从而降低了痴呆的偶然诊断率。其机制可能涉及感染引起的炎症加速神经退行性变。

hackernews · saikatsg · 7月12日 15:23 · [社区讨论](https://news.ycombinator.com/item?id=48881874)

**背景**: 带状疱疹是由水痘-带状疱疹病毒（该病毒也引起水痘）再激活引起的疼痛性皮疹。Shingrix 疫苗推荐给 50 岁及以上成人接种。痴呆，尤其是阿尔茨海默病，是一种进行性神经退行性疾病，无法治愈。此前研究已将与感染相关的痴呆风险增加联系起来，表明预防感染可能降低该风险。

**社区讨论**: 评论者意见不一：有人考虑自费提前接种疫苗，而另一些人则警告副作用并建议自然疗法。注意到重复研究的数据，但也有人提出虚假相关的论点——即较少的医院接触导致较少的痴呆诊断。总体而言，讨论反映了谨慎乐观和健康的怀疑态度。

**标签**: `#medicine`, `#vaccine`, `#dementia`, `#public health`, `#epidemiology`

---

<a id="item-6"></a>
## [Ghostel.el：由 libghostty 驱动的 Emacs 终端模拟器](https://dakra.github.io/ghostel/) ⭐️ 7.0/10

Ghostel.el 是一款新的 Emacs 终端模拟器，利用 libghostty-vt 提供更快的性能和更可靠的输入处理，优于现有的 vterm 和 eat 等选项。 Ghostel.el 显著提升了 Emacs 内的终端体验，使 TUI 应用运行更流畅，并提供更优雅的 ELisp API，让依赖编辑器内终端的 Emacs 用户受益。 Ghostel.el 使用 libghostty-vt（一个跨平台的 C 和 Zig 库），并在其网站上提供了与 vterm 和 eat 的详细对比表。但部分用户反映存在缓冲区清理问题和偶尔的卡顿。

hackernews · signa11 · 7月12日 08:52 · [社区讨论](https://news.ycombinator.com/item?id=48879504)

**背景**: Emacs 已有 vterm、eat 等多个终端模拟器包，但它们在性能和输入可靠性上常有不尽人意之处。libghostty 是由 Ghostty 项目开发的快速、功能丰富的终端核心，专为嵌入其他应用而设计。Ghostel.el 将该引擎引入 Emacs，提供了一种现代替代方案。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/ghostty-org/ghostty">GitHub - ghostty-org/ghostty: Ghostty is a fast, feature-rich, and...</a></li>
<li><a href="https://news.ycombinator.com/item?id=48879504">Ghostel . el : Terminal emulator powered by libghostty | Hacker News</a></li>
<li><a href="https://webteractive.co/blog/ghostty-and-libghostty-the-terminal-core-quietly-reshaping-the-ecosystem">Ghostty and libghostty : The Terminal Core Quietly... — Webteractive</a></li>

</ul>
</details>

**社区讨论**: 社区总体反应积极，用户报告相比 vterm 性能更快、TUI 支持更好。但有人指出存在缓冲区清理问题和偶尔卡顿，还有少数人对 Ghostty 的整体稳定性表示担忧。

**标签**: `#Emacs`, `#terminal emulator`, `#ghostty`, `#open source`, `#performance`

---

<a id="item-7"></a>
## [Zer0Fit MCP 服务器封装 Google TabFM 和 TimesFM，实现本地零样本机器学习](https://www.reddit.com/r/MachineLearning/comments/1uue8cc/zer0fit_i_took_googles_new_tabfm_timesfm_ml/) ⭐️ 7.0/10

一名研究生创建了 Zer0Fit，这是一个 MCP 服务器，封装了 Google 的 TabFM 和 TimesFM 基础模型，支持在本地 Nvidia GPU（16GB 以上显存）上零样本完成分类、回归和时间序列预测。项目以 Docker 容器形式提供，支持动态模型加载，并可集成 Open WebUI、Claude Code 和 Codex CLI。 该项目降低了使用最先进的表格和时间序列基础模型的门槛，使非专业人士无需训练或微调即可执行机器学习任务。它通过模型上下文协议（MCP）使 Google 的模型更易于访问，从而弥合了基于 LLM 的工具与传统机器学习之间的差距。 该服务器需要约 16GB 显存才能运行两个模型，且基于 PyTorch，因此仅支持 CUDA（不支持 Mac 或 AMD）。它会自动以 5 分钟 TTL 加载和卸载模型，以在空闲时释放显存；目前支持 CSV 输入，未来计划支持更多格式。作者报告在 Iris 分类上达到 94.7% 准确率，在加州房价回归任务上 R² 为 0.91。

reddit · r/MachineLearning · /u/Porespellar · 7月12日 12:32

**背景**: TabFM 是 Google Research 发布的零样本表格数据基础模型，无需微调即可进行分类和回归。TimesFM 是仅解码器的时间序列预测基础模型，在 1000 亿真实世界时间点上预训练。模型上下文协议（MCP）是 Anthropic 提出的开放标准，允许 AI 助手连接外部工具和数据源。Zer0Fit 将这些技术整合到一个 MCP 服务器中，可从 LLM 界面调用。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://research.google/blog/introducing-tabfm-a-zero-shot-foundation-model-for-tabular-data/">Introducing TabFM : A zero-shot foundation model for tabular data</a></li>
<li><a href="https://research.google/blog/a-decoder-only-foundation-model-for-time-series-forecasting/">A decoder-only foundation model for time -series forecasting</a></li>
<li><a href="https://modelcontextprotocol.io/docs/getting-started/intro">What is the Model Context Protocol (MCP)? - Model Context Protocol</a></li>

</ul>
</details>

**标签**: `#MCP`, `#TabFM`, `#TimesFM`, `#zero-shot ML`, `#local ML`

---

<a id="item-8"></a>
## [sqlite-utils 4.1 为 insert/upsert 添加 --code 选项](https://simonwillison.net/2026/Jul/11/sqlite-utils/#atom-everything) ⭐️ 6.0/10

sqlite-utils 4.1 为 insert 和 upsert 命令引入了 --code 选项，允许用户提供内联 Python 代码来生成行，而无需从文件导入。此外，还添加了 --type 以覆盖列类型、drop-index 命令以及 query 命令的标准输入支持。 此版本增强了 sqlite-utils 作为 CLI 数据工具的灵活性，使得无需编写单独文件即可通过编程方式生成和插入数据。--type 选项修复了 CSV/TSV 导入中列类型错误识别的常见痛点。 --code 选项接受定义 rows() 函数或 rows 可迭代对象的 Python 代码字符串，或者 .py 文件的路径。--type 选项允许用户显式设置列类型（例如 TEXT）以保留邮政编码中的前导零。drop-index 方法和命令支持 --ignore 标志以静默跳过缺失的索引。

rss · Simon Willison · 7月11日 23:50

**背景**: sqlite-utils 是一个 Python 命令行工具和库，用于以最少的样板代码创建和操作 SQLite 数据库。它提供了从 CSV、JSON 等格式导入数据以及查询和转换数据的实用程序。--code 选项扩展了现有的模式，即用户可以传递 Python 代码进行数据转换，现在允许在 insert/upsert 命令中直接生成行。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://sqlite-utils.datasette.io/">sqlite - utils</a></li>
<li><a href="https://pypi.org/project/sqlite-utils/">sqlite - utils · PyPI</a></li>

</ul>
</details>

**标签**: `#python`, `#sqlite`, `#cli`, `#data tools`

---

<a id="item-9"></a>
## [神经网络中的上下文与平均最佳线性映射](https://www.reddit.com/r/MachineLearning/comments/1uu2p63/context_and_average_best_linear_mappings_d/) ⭐️ 6.0/10

一篇 Reddit 帖子提出，在考虑上下文时，神经网络层可以被理解为平均最佳线性映射，并引用了一个 archive.org 文档进行详细说明。 这一视角为深度学习提供了更简单的理论框架，可能桥接线性模型与复杂神经网络，但缺乏实证验证或详细分析。 该帖子得分为 6.0/10，因其细节有限且无明显社区讨论，链接文档似乎是一份草稿或个人笔记，而非同行评审作品。

reddit · r/MachineLearning · /u/oatmealcraving · 7月12日 02:18

**背景**: 神经网络通常被视为高度非线性的函数逼近器。然而，线性化模型（如线性神经网络）已被用于研究深度学习中的优化和泛化。这篇帖子认为，即使是非线性层也可以被解释为基于条件的平均最佳线性映射，这一视角可能在不损失表达能力的情况下简化分析。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://web.stanford.edu/~montanar/RESEARCH/FILEPAP/linear-nets.pdf">web.stanford.edu › ~montanar › RESEARCH Six Lectures on Linearized Neural Networks</a></li>

</ul>
</details>

**标签**: `#neural networks`, `#linear mappings`, `#context`, `#deep learning theory`

---