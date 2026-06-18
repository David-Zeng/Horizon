---
layout: default
title: "Horizon Summary: 2026-06-18 (ZH)"
date: 2026-06-18
lang: zh
---

> 从 18 条内容中筛选出 14 条重要资讯。

---

1. [智谱 AI 发布 GLM-5.2：强大的开源权重 LLM](#item-1) ⭐️ 10.0/10
2. [发现一万个 GitHub 仓库分发木马恶意软件](#item-2) ⭐️ 9.0/10
3. [瑞士议会解除新建核电站禁令](#item-3) ⭐️ 8.0/10
4. [医院药物再利用使成本降低 90%](#item-4) ⭐️ 8.0/10
5. [罗塞塔神经元随规模亚线性增长并更单语义化](#item-5) ⭐️ 8.0/10
6. [康奈尔大学高级编译器课程免费上线](#item-6) ⭐️ 7.0/10
7. [Modos 彩色电子纸显示器树立新标杆](#item-7) ⭐️ 7.0/10
8. [Emacs 31 预览引发社区讨论](#item-8) ⭐️ 7.0/10
9. [W Social：欧洲数字主权还是政治作秀？](#item-9) ⭐️ 7.0/10
10. [DeepSeek 为聊天模型增加视觉理解功能](#item-10) ⭐️ 7.0/10
11. [超越 .gitignore：Git 忽略文件的其他方法](#item-11) ⭐️ 7.0/10
12. [对话级语音调试比孤立基准指标更有用](#item-12) ⭐️ 7.0/10
13. [Transformer 模型中探针强度分析](#item-13) ⭐️ 7.0/10
14. [独立网站提交平台的元目录](#item-14) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [智谱 AI 发布 GLM-5.2：强大的开源权重 LLM](https://simonwillison.net/2026/Jun/17/glm-52/#atom-everything) ⭐️ 10.0/10

智谱 AI 于 2026 年 6 月 16 日发布了 GLM-5.2，这是一个 7530 亿参数的混合专家语言模型，拥有 100 万 token 的上下文窗口，并采用 MIT 许可证。 GLM-5.2 在 Artificial Analysis 智能指数上领先所有开源权重模型，超越了 DeepSeek V4 Pro 和 Kimi K2.6 等模型，使最先进的 AI 更易获取。 该模型总参数 7530 亿，激活参数 400 亿（MoE），存储需求 1.51 TB，且仅处理文本。它还在 Code Arena WebDev 排行榜上排名第二，仅次于 Claude Fable 5。

rss · Simon Willison · 6月17日 23:58

**背景**: 混合专家（MoE）是一种将模型划分为多个专用子网络（专家）的技术，每个输入仅激活部分专家以节省计算。智谱 AI（曾用名 Zhipu AI）是一家中国 AI 公司，以其 GLM 模型系列闻名，自 2025 年以来已发布多个 MIT 许可证的版本。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Z.ai">Z.ai</a></li>
<li><a href="https://en.wikipedia.org/wiki/Mixture_of_experts">Mixture of experts</a></li>
<li><a href="https://huggingface.co/blog/moe">Mixture of Experts Explained</a></li>

</ul>
</details>

**社区讨论**: 社区对 GLM-5.2 的性能和开放许可证感到兴奋，但有人指出其 token 消耗高于同类模型且缺乏视觉输入。作者观察到其生成的鹈鹕 SVG 非常出色，但负鼠效果令人失望。

**标签**: `#LLM`, `#open-weights`, `#GLM-5.2`, `#Z.ai`, `#Mixture of Experts`

---

<a id="item-2"></a>
## [发现一万个 GitHub 仓库分发木马恶意软件](https://orchidfiles.com/github-repositories-distributing-malware/) ⭐️ 9.0/10

一位安全研究人员发现超过一万个 GitHub 仓库正在活跃地分发木马恶意软件，对软件开发社区构成了重大威胁。 这种大规模供应链攻击削弱了对开源软件的信任，可能使无数开发者和组织面临数据盗窃或系统被入侵的风险，凸显了平台安全性的关键漏洞。 这些恶意仓库通常由新注册的 GitHub 用户创建，频繁更新，并设计为出现在自动化依赖解析工具的搜索结果中，目标是自动化代理而非直接的人类用户。

hackernews · theorchid · 6月18日 11:45 · [社区讨论](https://news.ycombinator.com/item?id=48583928)

**背景**: 供应链攻击是一种日益增长的网络安全威胁，其中 66%的攻击集中在供应商代码上。正如 ENISA 所警告的，插入到 GitHub 等仓库中的恶意包可以在自动化构建过程中感染下游项目。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.enisa.europa.eu/news/enisa-news/understanding-the-increase-in-supply-chain-security-attacks">Understanding the increase in Supply Chain Security Attacks |</a></li>

</ul>
</details>

**社区讨论**: 社区评论揭示了针对开发者通过 AI 生成工具进行复杂攻击的趣闻轶事，对 GitHub 对恶意软件回应不足的批评，以及与搜索引擎未能过滤恶意内容的比较。

**标签**: `#security`, `#malware`, `#github`, `#open-source`, `#supply-chain-attack`

---

<a id="item-3"></a>
## [瑞士议会解除新建核电站禁令](https://www.bluewin.ch/en/news/switzerland/parliament-lifts-ban-on-new-nuclear-power-plants-3257535.html) ⭐️ 8.0/10

瑞士议会投票决定解除新建核电站的禁令，推翻了 2017 年公投中逐步淘汰核能的决定。 这一政策转变标志着瑞士核能可能复苏，将影响该国的能源结构和气候目标，并可能影响其他国家的核能辩论。 该决定仍可能面临公众公投，因为瑞士政治体系允许公民质疑议会决策。左翼和绿党强烈反对核能，理由涉及成本和废物问题。

hackernews · leonidasrup · 6月18日 14:17 · [社区讨论](https://news.ycombinator.com/item?id=48585746)

**背景**: 2011 年福岛核事故后，瑞士决定逐步淘汰核能，2017 年公投确认了禁止新建核电站。目前核能约占该国电力的 35%。瑞士的能源辩论还涉及季节性不平衡问题，夏季水力发电充足，但冬季短缺。

**社区讨论**: 评论凸显了深刻分歧：有人认为核能昂贵是人为选择，废物可管理，而另一些人则批评其成本高于可再生能源。还有人质疑瑞士能否进行理性的公众辩论，该问题很可能进入全民公投。

**标签**: `#nuclear energy`, `#Switzerland`, `#energy policy`, `#technology policy`, `#climate change`

---

<a id="item-4"></a>
## [医院药物再利用使成本降低 90%](https://www.kcl.ac.uk/news/hospitals-and-universities-repurposing-drugs-at-90-lower-cost) ⭐️ 8.0/10

医院和大学正在将现有已批准药物用于治疗新病症，与开发新药相比，成本降低高达 90%。 这挑战了高昂的药品定价，可能使治疗更加可负担，尤其是针对罕见病。同时揭示了激励机制的扭曲——通过微小的化学修饰来获取专利以维持高利润。 例如，Avastin（贝伐珠单抗，约 50 美元/剂）和 Lucentis（雷珠单抗，约 1500 美元/剂）在分子层面几乎相同，但未修饰的版本价格低 30 倍。同样地，Esketamine（Spravato）是氯胺酮的右旋异构体修饰版，虽有证据显示疗效更低却仍获专利。

hackernews · giuliomagnifico · 6月18日 10:33 · [社区讨论](https://news.ycombinator.com/item?id=48583386)

**背景**: 药物再利用（或重定位）是研究现有药物用于新的治疗目的，可减少临床试验步骤和上市时间。这种方法常带有偶然性，但目前得益于基因组学和网络生物学的进展。它能够绕过传统药物开发的高昂成本，并利用现有供应链。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Drug_repurposing">Drug repurposing</a></li>
<li><a href="https://www.elsevier.com/en-au/industry/drug-repurposing">Drug repurposing: approaches, methods and considerations | Elsevier</a></li>

</ul>
</details>

**社区讨论**: 评论者分享了第一手经验，如眼科医生超说明书使用 Avastin 治疗黄斑变性，并指出系统性缺陷：尽管效果相似或更差，专利变体（如 Lucentis、Spravato）仍主导市场。有人表示支持像 Cures Within Reach 这样的非营利组织，它们资助罕见病的药物再利用研究。

**标签**: `#drug repurposing`, `#healthcare costs`, `#pharmaceuticals`, `#medical research`, `#public health`

---

<a id="item-5"></a>
## [罗塞塔神经元随规模亚线性增长并更单语义化](https://www.reddit.com/r/MachineLearning/comments/1u9g7lk/neuron_populations_exhibit_divergent_selectivity/) ⭐️ 8.0/10

一项新研究发现，不同神经网络中通用的“罗塞塔”神经元随着模型规模的增大呈亚线性幂律增长，并且变得更加单语义化和专业化。 这一发现推进了机制可解释性，表明大型模型会发展出更特化的神经元，并带来实际应用：使用单个罗塞塔神经元过滤数据进行持续预训练，其效果几乎可以匹配最优数据过滤的性能。 该论文将罗塞塔神经元定义为在不同模型中激活值呈正相关的神经元，并证明其数量呈亚线性增长（幂律），而占总神经元的比例随规模增大而缩小。

reddit · r/MachineLearning · /u/avd4292 · 6月18日 19:40

**背景**: 罗塞塔神经元是指在不同任务和架构训练的不同神经网络中发现的通用特征，由 Dravid 等人在 2023 年首次提出。单语义性（monosemanticity）指一个神经元只对单一可解释概念激活，而多语义性（polysemanticity）指一个神经元响应多个不相关的特征。深度学习中的缩放定律描述了模型性能如何随规模、数据和计算量的增加而提升。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://transformer-circuits.pub/2024/scaling-monosemanticity/">Scaling Monosemanticity: Extracting Interpretable Features from Claude 3 Sonnet</a></li>

</ul>
</details>

**标签**: `#mechanistic interpretability`, `#scaling laws`, `#neuron universality`, `#monosemanticity`, `#deep learning`

---

<a id="item-6"></a>
## [康奈尔大学高级编译器课程免费上线](https://www.cs.cornell.edu/courses/cs6120/2025fa/self-guided/) ⭐️ 7.0/10

康奈尔大学的 CS 6120 高级编译器课程现已作为免费的自学在线资源开放，任何人都可以按照自己的进度学习编译器优化和高级主题。 这为缺乏正式编译器培训的学生、研究人员和行业专业人士提供了前所未有的一流编译器教育机会，尽管该课程可能未涵盖动态编译的最新技术进展。 该课程涵盖传统的编译器优化主题，如死代码消除、数据流分析、支配者分析和 SSA 形式，但社区讨论指出其在跟踪编译和现代动态编译器技术方面深度不足。

hackernews · ibobev · 6月18日 11:04 · [社区讨论](https://news.ycombinator.com/item?id=48583606)

**背景**: 编译器将高级编程语言转换为机器代码，而高级编译器专注于优化以提高性能。康奈尔的 CS 6120 是一门研究生课程，介绍关键的优化框架和中间表示。

**社区讨论**: 评论者们对免费开放表示赞赏，但也提出了批评：'titzer'指出跟踪编译是一条死胡同，建议关注类型反馈、推测和去优化；'j2kun'质疑死代码消除等主题是否真正属于高级内容；其他人将其与替代资源比较，或提到 Rust 编译器使用了机器学习。

**标签**: `#compilers`, `#computer science education`, `#online course`, `#programming languages`, `#systems`

---

<a id="item-7"></a>
## [Modos 彩色电子纸显示器树立新标杆](https://spectrum.ieee.org/modos-e-paper-monitor) ⭐️ 7.0/10

两人初创公司 Modos 推出了一款 13.3 英寸彩色电子纸显示器，分辨率达 3200×2400，支持触摸输入，刷新率为 60Hz，大幅超越以往电子纸的性能。 这一进步使电子纸更接近取代日常使用的传统 LCD/OLED 显示器，具备超低功耗和阳光下可读性，可能改变生产力计算方式并减轻眼疲劳。 Modos Flow 显示器实现了 60Hz 刷新率——几乎达到视频播放的流畅度——同时保持电子纸的双稳态、低功耗特性。它面向重视长续航和户外可用性的开发者与写作者。

hackernews · Vinnl · 6月18日 11:41 · [社区讨论](https://news.ycombinator.com/item?id=48583897)

**背景**: 电子纸显示器（如电子阅读器中所用）通过微胶囊中的带电粒子移动来显示文字和图像，仅在内容变化时耗电。历史上，它们受限于低刷新率（通常低于 15Hz）和有限的色彩表现，只能用于静态或慢速更新场景。Modos 通过自定义驱动方案克服了这些障碍，在不牺牲画质的前提下实现了流畅的视频级刷新。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://spectrum.ieee.org/e-paper-display-modos">E-Paper Display Refresh Rate Reaches New Heights - IEEE Spectrum</a></li>

</ul>
</details>

**社区讨论**: 评论普遍积极，用户对这项技术用于辅助设备和超轻平板电脑的潜力表示兴奋。有人赞赏独立创业团队的坚韧精神，还有人开玩笑说将显示器与 LLM 结合可以制作交互式'魔法肖像'。

**标签**: `#e-paper`, `#display technology`, `#startups`, `#color monitors`, `#hardware`

---

<a id="item-8"></a>
## [Emacs 31 预览引发社区讨论](https://www.rahuljuliato.com/posts/emacs-31-around-the-corner) ⭐️ 7.0/10

一篇基于作者日常使用经验预览 Emacs 31 特性的博客文章，引发了关于该编辑器持久价值的活跃社区讨论。 这很重要，因为它突显了 Emacs 的持续相关性和积极开发，社区在 VSCode 等现代编辑器时代讨论其优势。 该文章本身是对 Emacs 31 变化的预览，但社区评论更关注用户为何仍选择 Emacs 而非其他编辑器。

hackernews · frou_dh · 6月18日 12:10 · [社区讨论](https://news.ycombinator.com/item?id=48584135)

**背景**: Emacs 是一款高度可扩展和可定制的文本编辑器，自 1970 年代以来一直在开发。它以强大的按键绑定、基于 Lisp 的配置（Emacs Lisp）和庞大的包生态系统而闻名。尽管 VSCode 等现代编辑器兴起，Emacs 仍拥有忠实的用户群。

**社区讨论**: 社区评论中既有怀旧也有实用性。许多用户确认他们几十年来仍在使用 Emacs，理由是其速度和掌控力。一些人指出 AI 代理使得 Emacs 陡峭的学习曲线变得可控，而另一些则幽默地评论说他们会升级然后忽略变化。

**标签**: `#Emacs`, `#Editor`, `#Open Source`, `#Development Tools`

---

<a id="item-9"></a>
## [W Social：欧洲数字主权还是政治作秀？](https://blog.elenarossini.com/w-social-public-institutions-and-the-theater-of-european-digital-sovereignty/) ⭐️ 7.0/10

Elena Rossini 的一篇文章批评了在达沃斯宣布的欧洲社交网络 W Social 的推出是 opaque 且受政治驱动的，将其比作带有欧洲口音的 TruthSocial。该网络声称提供身份验证和数据主权，但被指责缺乏透明度，不如 Eurosky 等替代方案。 这一辩论凸显了欧洲数字主权倡议中的紧张关系，政治权宜之计可能掩盖真正的开源和透明替代方案。其结果可能影响欧洲机构如何对待社交媒体监管和公共投资。 W Social 是一家有限责任公司，创始人有金融背景，并在世界经济论坛上亮相。该平台要求人工验证，但一名评论者声称轻松创建了 6 个账户，质疑验证过程。

hackernews · nemoniac · 6月18日 12:46 · [社区讨论](https://news.ycombinator.com/item?id=48584497)

**背景**: 欧洲数字主权指的是欧盟推动减少对美国科技巨头依赖、培育本地替代方案的努力。W Social 将自己定位为欧洲所有、受欧盟法律管辖、数据托管在欧洲的平台，旨在通过身份验证打击虚假信息。然而，批评者指出，与基于 AT Protocol 并由非营利基金会运营的 Eurosky 等项目相比，它缺乏开放开发和透明度。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.elenarossini.com/w-social-uncovered-the-reality-behind-the-hype/">W Social uncovered: the reality behind the hype - Elena Rossini</a></li>
<li><a href="https://wsocial.news/">W - The European social network for verified humans</a></li>
<li><a href="https://wsocial.eu/">W Social</a></li>

</ul>
</details>

**社区讨论**: 社区评论表达了广泛的怀疑：一位用户从 W Social 的第一个 HN 广告起就觉得它可疑；另一位强调媒体对 Eurosky 保持沉默却大肆推广 W Social，暗示存在政治动机。另一位评论者指出创始人的金融背景和有限责任公司身份，暗示盈利动机，并将其与 Truth Social 比较，预测会失败。

**标签**: `#European digital sovereignty`, `#social media`, `#transparency`, `#politics`, `#W Social`

---

<a id="item-10"></a>
## [DeepSeek 为聊天模型增加视觉理解功能](https://chat.deepseek.com/) ⭐️ 7.0/10

DeepSeek 已更新其聊天模型，使其能够理解并描述图像，实现了多模态能力，但不支持图像生成或修改。该功能现已在 chat.deepseek.com 上提供。 此次更新使 DeepSeek 跻身领先的多模态 AI 模型之列，增强了其在图像描述和可访问性等任务中的实用性。同时引发了社区关于扩展语音识别等功能的讨论，表明用户对更全面的 AI 助手有需求。 视觉理解功能允许 DeepSeek 分析图像并提供描述，但不能生成或编辑图像。用户指出聊天应用仍然缺乏文本转语音和语音转文本功能，有些人认为这是一个限制。

hackernews · RIshabh235 · 6月18日 06:17 · [社区讨论](https://news.ycombinator.com/item?id=48581458)

**背景**: DeepSeek 是一家成立于 2023 年的私营人工智能公司，专注于开发大型语言模型。多模态 AI 模型同时处理多种数据类型（文本、图像、音频），能够完成视觉问答和图像描述等任务。增加视觉理解功能使 DeepSeek 与 GPT-4o 和 Google Gemini 等已提供多模态能力的模型保持一致。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/DeepSeek">en.wikipedia.org › wiki › DeepSeek DeepSeek - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Multimodal_AI">Multimodal AI</a></li>

</ul>
</details>

**社区讨论**: 评论者反应不一：有人对视觉更新未包含语音功能感到惊讶，而另一些人则讨论与本地视觉框架集成以生成替代文本的可能性。一位用户注意到 DeepSeek 出现了中文回复，暗示可能有无声更新。总体来说，社区认可视觉理解的价值，但期待更多的多模态能力。

**标签**: `#deepseek`, `#AI`, `#vision`, `#multimodal`, `#hackernews`

---

<a id="item-11"></a>
## [超越 .gitignore：Git 忽略文件的其他方法](https://nelson.cloud/.gitignore-isnt-the-only-way-to-ignore-files-in-git/) ⭐️ 7.0/10

本文探讨了除 .gitignore 之外的 Git 忽略机制，包括每仓库排除文件（.git/info/exclude）、全局排除文件（通过 core.excludesfile）以及使用 .gitattributes 跳过某些文件的差异比较。 这些技术允许开发者在不影响仓库的情况下本地忽略文件，减少噪音并改进工作流程。全局排除文件有助于避免将 IDE 或操作系统文件提交到每个项目中，而 .gitattributes 则能保持自动生成文件的差异比较整洁。 每仓库排除文件存储在 .git/info/exclude 中，仅本地生效。全局排除通过 `git config --global core.excludesfile` 配置，指向类似 ~/.gitignore_global 的文件。.gitattributes 可以将 `diff` 属性设为 false 或使用 `binary` 完全跳过差异比较。

hackernews · FergusArgyll · 6月18日 10:29 · [社区讨论](https://news.ycombinator.com/item?id=48583356)

**背景**: Git 通常使用（存入仓库的）.gitignore 来忽略未跟踪的文件。但有时你需要在本地忽略文件而不影响他人。Git 通过 .git/info/exclude（每仓库）和 core.excludesfile 全局排除文件提供了本地机制。此外，.gitattributes 可以控制特定文件的差异比较行为。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://docs.github.com/en/get-started/git-basics/ignoring-files">docs.github.com › en › get-started Ignoring files - GitHub Docs</a></li>
<li><a href="https://git-scm.com/docs/gitignore">git -scm.com › docs › gitignore Git - gitignore Documentation</a></li>
<li><a href="https://git-scm.com/docs/gitattributes">git -scm.com › docs › gitattributes Git - gitattributes Documentation</a></li>

</ul>
</details>

**社区讨论**: 评论者称赞了本文，强调全局排除文件和 .gitattributes 功能。有人分享了使用 ~/.config/git/ignore 作为全局忽略文件、以及在全局忽略中添加 'attic' 目录等技巧。还有人指出每仓库排除文件使用较少，因为它不会被提交。

**标签**: `#git`, `#version control`, `#dotfiles`, `#productivity`

---

<a id="item-12"></a>
## [对话级语音调试比孤立基准指标更有用](https://www.reddit.com/r/MachineLearning/comments/1u99fe5/voice_debugging_at_the_conversation_level_seems/) ⭐️ 7.0/10

一篇 Reddit 帖子认为，对于评估现实世界中的多轮对话质量，对话级语音调试远比传统孤立基准指标更有效，这一结论基于自动 QA 的实践经验。 这突出现有对话 AI 系统评估实践中的重大缺口，敦促开发者将关注点从聚合指标转向决定用户满意度的涌现交互模式。 帖子提到，微小的时序错误、重复确认以及不自然的轮流发言是基准测试无法捕捉的失败，而对话级调试有助于识别重复出现的模式。

reddit · r/MachineLearning · /u/OwlZealousideal4779 · 6月18日 15:29

**背景**: 传统对话 AI 评估依赖孤立指标，如语音转文字准确率、延迟和任务完成率。然而在多轮对话中，时序和轮流发言等涌现问题显著影响用户体验，这些基准测试常常忽略这些问题。

**标签**: `#conversational AI`, `#voice debugging`, `#evaluation metrics`, `#multi-turn systems`

---

<a id="item-13"></a>
## [Transformer 模型中探针强度分析](https://www.reddit.com/r/MachineLearning/comments/1u8lo60/how_do_you_analyze_the_relative_strength_of/) ⭐️ 7.0/10

一位研究者提出了关于在基于 Transformer 的模型中从理论上分析线性探针相对强度的问题，寻求奈奎斯特型采样保证和能力平衡原则。 这个问题涉及机械可解释性中的一个关键缺口：如何确保探针相对于底层网络不过拟合或欠拟合，这影响电路分析的可靠性以及语言模型的事实性保证。 该帖子引用了一项关于使用逻辑回归判断 Transformer 是否“知道”某个词属于哪个词组的旧研究，并指出了潜在的陷阱，如词汇量过小导致性能虚高以及结果被误解。

reddit · r/MachineLearning · /u/RepresentativeBee600 · 6月17日 20:29

**背景**: 在机械可解释性中，线性探针在隐藏状态上训练以提取特定特征（例如词位置）。来自信号处理的奈奎斯特-香农采样定理为从离散样本重建连续信号提供了保证。问题类比是否在语言模型表示中探测特征频率存在类似的保证，考虑到数据和模型能力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://learn.arena.education/chapter1_transformer_interp/11_probing/">Chapter 1: Transformer Interpretability - ARENA</a></li>

</ul>
</details>

**标签**: `#machine learning`, `#interpretability`, `#probes`, `#circuit analysis`, `#language models`

---

<a id="item-14"></a>
## [独立网站提交平台的元目录](https://www.submission.directory/) ⭐️ 6.0/10

新网站 submission.directory 提供了一个经过筛选的目录列表，独立网站创始人可以在这些目录中提交他们的网站以获取曝光。它作为一个元目录，将提交机会集中在一个地方。 对于独立网站创始人和增长黑客来说，寻找合法的提交目录既耗时又常常充满垃圾信息。该网站简化了发现过程，有助于建立反向链接和受众，但也突显了生态系统中持续存在的垃圾信息和资格挑战。 该目录是一个包含链接的单页网站列表，被称为“元目录”，因为它列出了其他目录。社区评论显示，提交平台经常面临垃圾信息、虚假提交和人工审核成本的问题，正如 BetaList 和 ListenNotes 的创始人指出的那样。

hackernews · azeemkafridi · 6月18日 15:12 · [社区讨论](https://news.ycombinator.com/item?id=48586631)

**背景**: IndieWeb 运动强调个人网站而非企业平台，鼓励个人拥有自己的内容。增长黑客涉及快速实验以增长用户群，通常通过反向链接和目录提交。提交目录是一种经典但不断演变的策略，现在面临垃圾信息和不断变化的算法的挑战。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/IndieWeb">IndieWeb</a></li>
<li><a href="https://en.wikipedia.org/wiki/Growth_hacking">Growth hacking</a></li>

</ul>
</details>

**社区讨论**: 社区讨论揭示了不同的经历：marc（BetaList 创始人）分享了人工审核的困难，并创建了 submit.co；wenbin（ListenNotes）描述了如何打击包含反向链接垃圾信息的虚假播客；susam 分享了他自己的目录元列表；transitorykris 指出这与 90 年代的提交服务相似；andrelaszlo 开了一个递归玩笑。总的来说，尽管该生态系统有用，但垃圾信息泛滥，需要筛选。

**标签**: `#web directories`, `#indie web`, `#startups`, `#submission platforms`, `#growth hacking`

---