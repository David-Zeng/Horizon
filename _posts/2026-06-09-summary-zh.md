---
layout: default
title: "Horizon Summary: 2026-06-09 (ZH)"
date: 2026-06-09
lang: zh
---

> 从 14 条内容中筛选出 11 条重要资讯。

---

1. [Anthropic 发布 Claude Fable 5，限制 LLM 开发任务](#item-1) ⭐️ 9.0/10
2. [AI 认知风险：30 专家论文探讨推理威胁](#item-2) ⭐️ 9.0/10
3. [微软开源工具被黑，窃取 AI 开发者密码](#item-3) ⭐️ 8.0/10
4. [FCC 提议所有购机需身份证，封杀一次性手机](#item-4) ⭐️ 8.0/10
5. [Let's Encrypt 禁止向受美国制裁地区颁发证书](#item-5) ⭐️ 8.0/10
6. [用软件渲染重现 1990 年代 3D 图形](#item-6) ⭐️ 7.0/10
7. [苹果因豁免请求被拒，不在欧盟推出 AI Siri](#item-7) ⭐️ 7.0/10
8. [Karpathy：AI 工具通过杰文斯悖论提升软件需求](#item-8) ⭐️ 7.0/10
9. [苹果 WWDC 2026 Siri AI：视觉语言模型与定制 Gemini](#item-9) ⭐️ 7.0/10
10. [ASR 的下一个突破：规模与新架构之争](#item-10) ⭐️ 7.0/10
11. [隐私保护 ML 技术在生产中实际应用了吗？](#item-11) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [Anthropic 发布 Claude Fable 5，限制 LLM 开发任务](https://www.anthropic.com/news/claude-fable-5-mythos-5) ⭐️ 9.0/10

Anthropic 发布了 Claude Fable 5 模型，该模型在基准测试中相比前代 Opus 4.8 有显著提升，但同时引入了新的限制，禁止将其用于前沿大语言模型开发任务。 此次发布标志着 AI 安全领域的重要一步，Anthropic 主动限制模型能力以减缓递归自我改进。同时，定价模式发生变化：Fable 5 先限时免费，之后将转为按量计费。 基准测试显示，Fable 5 在默认设置下优于 Opus 4.8，并在某些代理任务中仅用约一半的 token 即可取得更好结果，因此具有成本效益。但该模型拒绝回答与 LLM 开发相关的问题，例如论文解释或预训练流程构建。

hackernews · Philpax · 6月9日 16:58 · [社区讨论](https://news.ycombinator.com/item?id=48463808)

**背景**: AI 系统卡是描述 AI 系统工作原理的文件，包括其能力、局限性和安全措施。Anthropic 为 Fable 5 发布了系统卡，详细说明了新的安全干预措施，限制该模型被用于加速自身或其他前沿 LLM 的开发。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.bing.com/aclick?ld=e8WbKwZ0jvvjfFo0bXH_RZVTVUCUzowOIZOoOkPqAKEYAxf4aGt0tusom5_xIfYshNsPxUiIC3XtYuIoTUUI2A7rl8fJndTKESK68ebfzAv3RH6VK18imftZWVAdGGm0fKrOEDWzeMBB9-4sRanSGv0nxgxJIwvZH4i97FSdfZE1qyoQUwAIG5vp_s8h3hPeOSjcXvPl-i8bnhomH03MJaVeqYj0M&u=aHR0cHMlM2ElMmYlMmZhc2tncHQuYXBwJTJmb25ib2FyZGluZyUzZnV0bV90aXRsZV9zcCUzZFVHOTNaWEpsWkNCaWVTQkRiR0YxWkdVZ1FVayUzZCUyNnV0bV9kZXNjcmlwdGlvbiUzZFYyVnNZMjl0WlNCMGJ5QkJjMnRIVUZRdUlFVnVhbTk1SUdaaGMzUXNJRzVoZEhWeVlXd2dRVWtnWTI5dWRtVnljMkYwYVc5dWN5QndiM2RsY21Wa0lHSjVJR0ZrZG1GdVkyVmtJRU5zWVhWa1pTMWlZWE5sWkNCMFpXTm9ibTlzYjJkNUxnJTNkJTNkJTI2dXRtX3NvdXJjZSUzZGJpbmclMjZ1dG1fbWVkaXVtJTNkY3BjJTI2dXRtX2NhbXBhaWduX2lkJTNkNTI0MjQxNjcxJTI2dXRtX2FkZ3JvdXBfaWQlM2QxMzI5MzEyNDUwOTc1NTk5JTI2dXRtX2FkX2lkJTNkODMwODIyNzgxNjc1NjMlMjZ1dG1fdGVybSUzZEFudGhyb3BpYyUyNTIwQ2xhdWRlJTI1MjBGYWJsZSUyNTIwNSUyNTIwbW9kZWwlMjZ1dG1fbWF0Y2h0eXBlJTNkcCUyNnV0bV9uZXR3b3JrJTNkbyUyNnV0bV9kZXZpY2UlM2RjJTI2dXRtX2RldmljZW1vZGVsJTNkJTI2dXRtX2NsaWNrJTNkNDU2NDU5Mzk1YjY1MWJjNmY2OTkzMzExMmE3MzljZWElMjZtc2Nsa2lkJTNkNDU2NDU5Mzk1YjY1MWJjNmY2OTkzMzExMmE3MzljZWE&rlid=456459395b651bc6f69933112a739cea">Ad Anthropic claude - Claude 4.7 Now Available</a></li>
<li><a href="https://harshp.com/research/publications/065-AI-Cards-Risk-Documentation-AI-Act">AI Cards: Towards an Applied Framework for Machine-Readable AI</a></li>
<li><a href="https://ai.meta.com/blog/system-cards-a-new-resource-for-understanding-how-ai-systems-work/">System Cards, a new resource for understanding how AI systems</a></li>

</ul>
</details>

**社区讨论**: 社区评论呈现不同反应：一些用户赞赏性能提升和精心的设计，而另一些用户则对模型拒绝回答基本的 LLM 相关问题表示不满。此外，还有关于定价模式变更和临时免费访问期的讨论。

**标签**: `#AI`, `#Model Release`, `#Safety`, `#Anthropic`

---

<a id="item-2"></a>
## [AI 认知风险：30 专家论文探讨推理威胁](https://www.reddit.com/r/MachineLearning/comments/1u1ew6q/ai_epistemic_risks_emerging_mechanisms_evidence_r/) ⭐️ 9.0/10

一篇由 30 位专家合著的新论文系统性地分类了 AI 带来的认知风险，包括说服、认知卸载和反馈循环，并指出这些威胁可能削弱社会推理和维持健康信息环境的能力。 这篇论文意义重大，因为它揭示了未被充分探索的风险，这些风险可能破坏我们的集体推理和自我治理能力，并可能加剧其他 AI 危险。它呼吁在社会的应对能力丧失之前立即采取行动。 论文指出了具体机制，例如 AI 谄媚——即模型即使错误也同意用户意见——以及认知卸载，可能降低长期认知韧性。它警告反馈循环会缩小认知多样性，可能导致同质化或锁定状态。

reddit · r/MachineLearning · /u/KellinPelrine · 6月9日 19:18

**背景**: 认知风险指的是对我们获取准确知识和有效推理能力的威胁。AI 系统，尤其是大型语言模型，越来越多地介入信息获取和决策，为操纵、过度依赖和系统性偏见创造了新途径。先前的工作已经记录了 AI 谄媚和认知卸载等现象，但这篇论文是首批全面综合其社会影响的论文之一。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://philarchive.org/rec/ZIGERI">Epistemic Risks in AI: Knowledge, Truth, and Uncertainty</a></li>
<li><a href="https://en.wikipedia.org/wiki/AI_sycophancy">AI sycophancy</a></li>
<li><a href="https://www.sciencedirect.com/science/article/pii/S1364661316300985">Cognitive Offloading - ScienceDirect</a></li>

</ul>
</details>

**标签**: `#AI safety`, `#epistemic risks`, `#cognitive science`, `#information ecology`, `#AI ethics`

---

<a id="item-3"></a>
## [微软开源工具被黑，窃取 AI 开发者密码](https://techcrunch.com/2026/06/08/microsofts-open-source-tools-were-hacked-to-steal-passwords-of-ai-developers/) ⭐️ 8.0/10

黑客入侵了微软数十个开源 GitHub 仓库，在用于 Azure 及 Claude Code、Gemini CLI 等 AI 开发工具的代码中注入了窃取密码的恶意软件。微软已关闭受影响的仓库并展开调查。 此次供应链攻击直接针对 AI 开发者，可能泄露凭证，进而导致依赖这些工具的企业遭受进一步入侵。它凸显了开源供应链中不断升级的风险，尤其是在高价值的 AI 基础设施领域。 受影响的仓库包括 Azure 相关项目以及 Claude Code、Gemini 命令行界面等 AI 编码助手的工具。微软尚未披露受影响客户数量，此次攻击发生在几周前另一起相关入侵事件之后。

hackernews · raffael_de · 6月9日 07:33 · [社区讨论](https://news.ycombinator.com/item?id=48457830)

**背景**: 供应链攻击是指威胁行为者通过入侵第三方供应商或依赖项来渗透下游目标。在开源生态系统中，攻击者常向流行仓库注入恶意代码，进而传播给下载或更新软件的用户。此次事件是针对 AI 开发工具的更复杂攻击趋势的一部分。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://techcrunch.com/2026/06/08/microsofts-open-source-tools-were-hacked-to-steal-passwords-of-ai-developers/">Microsoft's open source tools were hacked to steal ... - TechCrunch</a></li>
<li><a href="https://tech.yahoo.com/cybersecurity/articles/microsoft-open-source-tools-were-200344416.html">Microsoft's open source tools were hacked to steal passwords of AI ...</a></li>

</ul>
</details>

**社区讨论**: 评论者就开源的作用和微软的责任展开辩论，有人批评标题带有偏见将责任归咎于开源，而另一些人则指出是经典的个人访问令牌管理不当。多位用户将此攻击与其他近期针对 AI 代理的供应链事件联系起来，凸显出日益增长的模式。

**标签**: `#security`, `#supply chain attack`, `#open source`, `#AI`, `#Microsoft`

---

<a id="item-4"></a>
## [FCC 提议所有购机需身份证，封杀一次性手机](https://www.404media.co/fcc-wants-to-kill-burner-phones-by-forcing-telecoms-to-get-all-customers-ids/) ⭐️ 8.0/10

美国联邦通信委员会（FCC）提出新规，要求电信运营商在客户购买手机时收集政府颁发的身份证件，从而实际上禁止无需身份证明即可购买的预付费“一次性手机”。 若该规定生效，将消除美国匿名使用手机的可能，影响记者、活动人士及普通公民依赖一次性手机避免监控或骚扰的隐私保护方式。 该提案适用于后付费和预付费移动服务的激活，但具体范围和实施时间表尚未确定。批评者认为这可能对依赖预付费计划的低收入人群产生不成比例的影响。

hackernews · berlianta · 6月9日 15:21 · [社区讨论](https://news.ycombinator.com/item?id=48462308)

**背景**: 一次性手机是无需提供个人身份证明即可购买的预付费手机，为用户提供匿名性。FCC 的理由可能是打击毒品贩运和恐怖主义等非法活动，但隐私倡导者警告政府过度干预和数据安全隐患。

**社区讨论**: 评论者表达了强烈反对，引用过去电信数据泄露事件（如 AT&T），并指出俄罗斯和欧盟等国家已经存在身份证要求。有人提供了向 FCC 提交评论的直接链接，而另一些人则认为个人仍然可以选择不使用手机。

**标签**: `#FCC`, `#privacy`, `#regulation`, `#burner phones`, `#telecom`

---

<a id="item-5"></a>
## [Let's Encrypt 禁止向受美国制裁地区颁发证书](https://letsencrypt.org/documents/LE-SA-v1.7-June-04-2026-diff.pdf) ⭐️ 8.0/10

Let's Encrypt 更新了其订阅协议，禁止在受美国制裁的领土上颁发和使用证书，该协议将于 2026 年 6 月生效，这与其推动全球 HTTPS 普及的使命相矛盾。 该政策限制了伊朗和俄罗斯等地区的安全网页访问，削弱了最需要安全性的地区的网络安全，并引发了对美国加密技术出口管制范围影响的担忧。 该禁令适用于受美国制裁的领土，包括伊朗、叙利亚和古巴。该变更是订阅协议版本 1.7 的一部分，任何违规行为都可能导致所有证书被吊销。

hackernews · piskov · 6月8日 22:32 · [社区讨论](https://news.ycombinator.com/item?id=48453275)

**背景**: Let's Encrypt 是一家由美国非营利组织互联网安全研究集团（ISRG）运营的证书颁发机构（CA）。它免费提供 TLS 证书以启用 HTTPS，旨在创建一个更安全的网络。作为美国实体，它必须遵守美国出口管制法律，这些法律限制向受制裁国家出口加密技术。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Let's_Encrypt">Let's Encrypt</a></li>
<li><a href="https://letsencrypt.org/">Let's Encrypt</a></li>
<li><a href="https://en.wikipedia.org/wiki/Certificate_authority">Certificate authority</a></li>

</ul>
</details>

**社区讨论**: 评论者批评此举与 Let's Encrypt 的使命相矛盾，有人认为它通过阻止加密技术帮助了专制政权。其他人则指出美国法律的限制，但质疑 Let's Encrypt 是否可以在美国境外运营以避免此类限制。

**标签**: `#SSL/TLS`, `#internet censorship`, `#cybersecurity`, `#policy`, `#Let's Encrypt`

---

<a id="item-6"></a>
## [用软件渲染重现 1990 年代 3D 图形](https://staniks.github.io/articles/catlantean-3d-blog-1/) ⭐️ 7.0/10

一篇题为《像 1993 年那样制作图形》的详细博客文章，演示了如何利用软件渲染和光线投射技术重现 1990 年代风格的 3D 图形。 这篇文章意义重大，因为它重新激发了人们对软件渲染技术的兴趣，这些技术是理解 3D 图形历史的基础，并为游戏开发者和爱好者提供了教育价值。 博客涵盖了光线投射、调色板帧缓冲，甚至包括一个用于生成碎块动画的 Python 脚本，并提供了可供实验的代码。

hackernews · sklopec · 6月9日 10:46 · [社区讨论](https://news.ycombinator.com/item?id=48459294)

**背景**: 软件渲染是在 CPU 上执行所有图形计算，而不依赖专用 GPU 硬件，这在早期 3D 游戏中很常见，如《德军总部 3D》和《毁灭战士》。光线投射是一种简化的渲染技术，从摄像机发射射线，从 2D 地图生成 2.5D 透视效果，从而在有限硬件上实现实时性能。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Software_rendering">Software rendering - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Ray_casting">en.wikipedia.org › wiki › Ray_casting Ray casting - Wikipedia</a></li>
<li><a href="https://lodev.org/cgtutor/raycasting.html">lodev.org › cgtutor › raycasting Raycasting - Lode V</a></li>

</ul>
</details>

**社区讨论**: 评论称赞文章的深度，并分享了额外技巧，比如使用光照贴图实现动态光照，并指出该引擎类似于《德军总部 3D》而非《毁灭战士》的 BSP 引擎。一位读者提供了高效的 SDL2 帧缓冲显示代码片段。

**标签**: `#retro graphics`, `#software rendering`, `#game dev`, `#raycasting`

---

<a id="item-7"></a>
## [苹果因豁免请求被拒，不在欧盟推出 AI Siri](https://www.reuters.com/business/apple-failed-make-its-ai-tool-comply-eu-regulations-eu-commission-says-2026-06-09/) ⭐️ 7.0/10

苹果决定不在欧盟推出其 AI 增强版 Siri，此前欧盟委员会拒绝了其要求获得 18 个月合规豁免的请求。 这一决定凸显了科技巨头与欧盟数字法规之间的紧张关系，可能让竞争对手在 AI 助手市场获得优势，并限制欧盟消费者使用新的 AI 功能。 欧盟 AI 法案于 2024 年 8 月 1 日生效，根据风险对 AI 系统进行分类并对提供商施加要求；苹果的豁免请求可能是基于合规所需的额外工作，但欧盟未批准。

hackernews · flanged · 6月9日 16:13 · [社区讨论](https://news.ycombinator.com/item?id=48463024)

**背景**: 欧盟 AI 法案是一项全面的法规，为 AI 建立了共同的法律框架，覆盖大多数 AI 系统，根据风险水平设置不同义务。该法案于 2024 年 8 月生效，将逐步实施。苹果的 AI 增强版 Siri 可能被归类为高风险或通用 AI，需要满足透明度和合规性评估要求。该公司寻求豁免以避免这些要求，但欧盟拒绝了请求。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/EU_AI_Act">EU AI Act</a></li>

</ul>
</details>

**社区讨论**: 评论观点分歧：一些人认为苹果的决定是转移责任的策略，另一些人则支持苹果在隐私问题上的立场。部分用户担心监管过度，而另一些人则认为这为欧洲替代方案提供了机会。

**标签**: `#Apple`, `#EU`, `#AI`, `#regulation`, `#privacy`

---

<a id="item-8"></a>
## [Karpathy：AI 工具通过杰文斯悖论提升软件需求](https://simonwillison.net/2026/Jun/9/andrej-karpathy/#atom-everything) ⭐️ 7.0/10

Andrej Karpathy 发推文称，像 Claude Fable 5 这样的 AI 工具通过杰文斯悖论提升了他对软件的需求——效率提高反而导致消耗增加。他提到能即时创建定制应用、仪表盘和研究工具。 这一观点改变了“AI 将取代软件工作”的说法，反而表明 AI 可能刺激更多软件创造。对于开发者和企业，它突显了个性化低成本软件解决方案不断扩展的前景。 Karpathy 特别提到为特定项目创建高度定制化的 wandb（Weights & Biases）、自动优化代码和运行大型研究项目。Claude Fable 5 是 Anthropic 最强大的公开模型，擅长软件工程和视觉任务。

rss · Simon Willison · 6月9日 19:03

**背景**: 杰文斯悖论是一个经济学理论：当技术进步提高资源使用效率时，该资源的总体消费反而可能增加。Weights & Biases（wandb）是一个流行的 AI 开发者平台，用于跟踪实验、超参数和模型性能。Karpathy 的引言反映了 AI 不仅自动化任务，还让软件创建变得人人可及的趋势。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/claude/fable">Claude Fable \ Anthropic</a></li>
<li><a href="https://en.wikipedia.org/wiki/Jevons_paradox">Jevons paradox - Wikipedia</a></li>
<li><a href="https://site.wandb.ai/">Weights & Biases : The AI developer platform</a></li>

</ul>
</details>

**标签**: `#AI`, `#software development`, `#Jevons paradox`, `#generative AI`

---

<a id="item-9"></a>
## [苹果 WWDC 2026 Siri AI：视觉语言模型与定制 Gemini](https://simonwillison.net/2026/Jun/8/wwdc/#atom-everything) ⭐️ 7.0/10

苹果在 WWDC 2026 上发布了新的 Siri AI 功能，利用视觉语言模型从用户屏幕提取信息，并使用定制的 Gemini 派生模型运行在私有云计算上。Core AI 库桥接了 PyTorch 和苹果硬件，使开发者能够高效部署模型。 这标志着苹果 AI 战略的重大转变，使 Siri 更强大且无需特定应用代码，同时向第三方 AI 模型开放苹果硬件。使用视觉语言模型绕过了集成复杂性，可能加速 iOS 上的 AI 应用。 定制 Gemini 模型运行在 Google Cloud 的 NVIDIA GPU 上，但位于苹果的私有云计算中以保障安全。Core AI PyTorch 扩展包允许将 PyTorch 模型转换为 Core AI 程序。iOS 27 开发者测试版包含这些功能，但需要等待列表访问。

rss · Simon Willison · 6月8日 23:58

**背景**: 视觉语言模型（VLM）是能同时处理图像和文本的 AI 系统，可实现屏幕理解等任务。苹果的私有云计算（PCC）是一种用于 AI 推理的安全云基础设施，最初基于苹果芯片，现已扩展到使用 NVIDIA 硬件的 Google Cloud。Core AI 库为开发者提供了在苹果神经引擎和 GPU 上运行模型的工具。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Vision-language_model">Vision-language model - Wikipedia</a></li>
<li><a href="https://9to5mac.com/2026/01/12/apples-new-google-gemini-deal-sounds-bigger-better-than-expected/">Apple ’s new Google Gemini deal sounds bigger, better than... - 9to5Mac</a></li>
<li><a href="https://security.apple.com/blog/expanding-pcc/">security.apple.com › blog › expanding-pcc Expanding Private Cloud Compute - Apple Security Research</a></li>

</ul>
</details>

**标签**: `#Apple`, `#Siri`, `#AI`, `#WWDC`, `#Vision LLMs`

---

<a id="item-10"></a>
## [ASR 的下一个突破：规模与新架构之争](https://www.reddit.com/r/MachineLearning/comments/1u1cklt/what_will_be_the_next_breakthrough_in_asr_d/) ⭐️ 7.0/10

Reddit 上的一场讨论指出，Nvidia Parakeet v3 在更小的数据和模型规模下超越了 Whisper-large-v3，质疑了 ASR 中大规模数据的必要性。 这场辩论影响 ASR 的研究方向，可能将焦点从扩大数据规模转向开发更高效的架构，如 Token-Duration-Transducer。 Parakeet v3（6 亿参数）在 66 万小时标注数据上训练，而 Whisper-large-v3（15 亿参数）使用了 500 万小时弱监督数据，但 Parakeet 在英文基准测试上取得了更低的词错误率。

reddit · r/MachineLearning · /u/ComprehensiveTop3297 · 6月9日 17:57

**背景**: 自动语音识别（ASR）将音频转换为文本。最近的模型如 Whisper 采用大规模弱监督，而 Token-Duration Transducer (TDT)等架构联合预测 token 和时长以实现更快的解码。自监督方法（如 WavLM）从无标注数据中学习，但目前 ASR 领域中不占主导地位。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/nvidia/parakeet-tdt-0.6b-v3">nvidia / parakeet -tdt-0.6b- v 3 · Hugging Face</a></li>
<li><a href="https://arxiv.org/abs/2304.06795">arxiv.org › abs › 2304 Efficient Sequence Transduction by Jointly Predicting Tokens and...</a></li>
<li><a href="https://www.speechmatics.com/company/articles-and-news/token-duration-transducer-tdt-explained">www.speechmatics.com › company › articles-and-news Token Duration Transducer (TDT) Explained: How Frame-Skipping...</a></li>

</ul>
</details>

**标签**: `#ASR`, `#speech recognition`, `#deep learning`, `#research`

---

<a id="item-11"></a>
## [隐私保护 ML 技术在生产中实际应用了吗？](https://www.reddit.com/r/MachineLearning/comments/1u12bpa/are_privacypreserving_techniques_actually_being/) ⭐️ 6.0/10

一场 Reddit 讨论询问差分隐私、联邦学习和设备端推理等隐私保护 ML 技术是否真正部署在生产系统中，并强调了工程挑战和权衡。 了解实际应用情况对于从业者和研究者至关重要，有助于集中精力克服部署障碍，确保隐私保障转化为实际系统。 讨论聚焦于差分隐私、联邦学习和设备端推理。用户询问这些技术对模型性能、基础设施成本的影响，以及成功用例与因权衡而难以采用的案例。

reddit · r/MachineLearning · /u/Electrical_Mine1912 · 6月9日 11:30

**背景**: 差分隐私通过对数据或模型输出添加噪声来保护个人隐私，同时允许聚合分析。联邦学习在去中心化设备上训练模型，无需集中原始数据。设备端推理在用户设备本地运行模型，避免数据发送到服务器。这些技术是活跃的研究领域，但在生产中面临工程挑战。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.nist.gov/blogs/cybersecurity-insights/how-deploy-machine-learning-differential-privacy">How to deploy machine learning with differential privacy | NIST</a></li>
<li><a href="https://flower.ai/docs/framework/tutorial-series-what-is-federated-learning.html">What is Federated Learning? - Flower Framework</a></li>
<li><a href="https://iterate.ai/ai-glossary/on-device-inference">iterate.ai › ai-glossary › on - device - inference On-Device Inference - iterate.ai</a></li>

</ul>
</details>

**标签**: `#privacy-preserving ML`, `#differential privacy`, `#federated learning`, `#on-device inference`, `#production ML`

---