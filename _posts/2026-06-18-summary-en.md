---
layout: default
title: "Horizon Summary: 2026-06-18 (EN)"
date: 2026-06-18
lang: en
---

> From 18 items, 14 important content pieces were selected

---

1. [Z.ai Releases GLM-5.2: Powerful Open-Weight LLM](#item-1) ⭐️ 10.0/10
2. [10,000 GitHub Repositories Found Distributing Trojan Malware](#item-2) ⭐️ 9.0/10
3. [Swiss Parliament Lifts Ban on New Nuclear Plants](#item-3) ⭐️ 8.0/10
4. [Drug repurposing by hospitals cuts costs 90%](#item-4) ⭐️ 8.0/10
5. [Rosetta Neurons Scale Sublinearly, Become More Monosemantic](#item-5) ⭐️ 8.0/10
6. [Cornell's Advanced Compilers Course Now Free Online](#item-6) ⭐️ 7.0/10
7. [Modos Color E-Paper Monitor Sets New Bar](#item-7) ⭐️ 7.0/10
8. [Emacs 31 preview generates community discussion](#item-8) ⭐️ 7.0/10
9. [W Social: European Digital Sovereignty or Political Theater?](#item-9) ⭐️ 7.0/10
10. [DeepSeek Adds Vision Understanding to Chat Model](#item-10) ⭐️ 7.0/10
11. [Beyond .gitignore: Alternative Git Ignore Mechanisms](#item-11) ⭐️ 7.0/10
12. [Conversation-Level Voice Debugging Outperforms Isolated Benchmark Metrics](#item-12) ⭐️ 7.0/10
13. [Probe strength analysis in transformers](#item-13) ⭐️ 7.0/10
14. [Meta-directory for indie web submission platforms](#item-14) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [Z.ai Releases GLM-5.2: Powerful Open-Weight LLM](https://simonwillison.net/2026/Jun/17/glm-52/#atom-everything) ⭐️ 10.0/10

Z.ai released GLM-5.2, a 753-billion-parameter Mixture-of-Experts language model with a 1 million token context window, under the MIT license on June 16, 2026. GLM-5.2 is the leading open-weights model on the Artificial Analysis Intelligence Index, surpassing models like DeepSeek V4 Pro and Kimi K2.6, making state-of-the-art AI more accessible. The model uses 40 active parameters out of 753B total (MoE), requires 1.51 TB of storage, and is text-only. It ranks 2nd on the Code Arena WebDev leaderboard, behind only Claude Fable 5.

rss · Simon Willison · Jun 17, 23:58

**Background**: Mixture of Experts (MoE) is a technique that divides a model into multiple specialized sub-networks (experts), activating only a subset per input to save computation. Z.ai, formerly Zhipu AI, is a Chinese AI company known for its GLM model family and has released several versions under the MIT license since 2025.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Z.ai">Z.ai</a></li>
<li><a href="https://en.wikipedia.org/wiki/Mixture_of_experts">Mixture of experts</a></li>
<li><a href="https://huggingface.co/blog/moe">Mixture of Experts Explained</a></li>

</ul>
</details>

**Discussion**: The community is excited about GLM-5.2's performance and open license, but some note its high token usage compared to peers and its lack of vision input. The author observed excellent SVG generation for a pelican but disappointing results for an opossum.

**Tags**: `#LLM`, `#open-weights`, `#GLM-5.2`, `#Z.ai`, `#Mixture of Experts`

---

<a id="item-2"></a>
## [10,000 GitHub Repositories Found Distributing Trojan Malware](https://orchidfiles.com/github-repositories-distributing-malware/) ⭐️ 9.0/10

A security researcher discovered over 10,000 GitHub repositories that are actively distributing Trojan malware, posing a significant threat to the software development community. This massive-scale supply chain attack undermines trust in open-source software and could expose countless developers and organizations to data theft or system compromise, highlighting critical gaps in platform security. The malicious repositories are often created by new GitHub users, frequently updated, and designed to appear in search results for automated dependency resolution tools, targeting agents rather than direct human users.

hackernews · theorchid · Jun 18, 11:45 · [Discussion](https://news.ycombinator.com/item?id=48583928)

**Background**: Supply chain attacks are a growing cybersecurity threat, with 66% focusing on the supplier's code. Malicious packages inserted into repositories like GitHub can infect downstream projects during automated build processes, as warned by ENISA.

<details><summary>References</summary>
<ul>
<li><a href="https://www.enisa.europa.eu/news/enisa-news/understanding-the-increase-in-supply-chain-security-attacks">Understanding the increase in Supply Chain Security Attacks |</a></li>

</ul>
</details>

**Discussion**: Community comments revealed anecdotal evidence of sophisticated attacks targeting developers via AI-generated tools, criticism of GitHub's inadequate response to malware, and comparisons with search engines failing to filter malicious content.

**Tags**: `#security`, `#malware`, `#github`, `#open-source`, `#supply-chain-attack`

---

<a id="item-3"></a>
## [Swiss Parliament Lifts Ban on New Nuclear Plants](https://www.bluewin.ch/en/news/switzerland/parliament-lifts-ban-on-new-nuclear-power-plants-3257535.html) ⭐️ 8.0/10

The Swiss parliament has voted to lift a ban on building new nuclear power plants, reversing a 2017 referendum decision that had phased out nuclear energy. This policy shift signals a potential revival of nuclear energy in Switzerland, impacting the country's energy mix and climate goals, and may influence other nations' nuclear debates. The decision still faces a potential referendum by the public, as Swiss political system allows citizens to challenge parliamentary decisions. Left-leaning and green parties strongly oppose nuclear power, citing costs and waste concerns.

hackernews · leonidasrup · Jun 18, 14:17 · [Discussion](https://news.ycombinator.com/item?id=48585746)

**Background**: Switzerland had decided to phase out nuclear power after the Fukushima disaster in 2011, with a 2017 referendum confirming the ban on new plants. Nuclear power currently contributes about 35% of the country's electricity. The energy debate in Switzerland also involves a seasonal imbalance, with ample hydropower in summer but shortages in winter.

**Discussion**: Comments highlight deep divisions: some argue nuclear is expensive by choice and waste is manageable, while others criticize the high costs compared to renewables. There is also skepticism about informed public debate in Switzerland, with the issue likely headed to a referendum.

**Tags**: `#nuclear energy`, `#Switzerland`, `#energy policy`, `#technology policy`, `#climate change`

---

<a id="item-4"></a>
## [Drug repurposing by hospitals cuts costs 90%](https://www.kcl.ac.uk/news/hospitals-and-universities-repurposing-drugs-at-90-lower-cost) ⭐️ 8.0/10

Hospitals and universities are repurposing existing approved drugs to treat new conditions, achieving up to 90% cost reduction compared to developing new drugs. This challenges high pharmaceutical pricing and could make treatments more affordable, especially for rare diseases. It also exposes broken incentives where minor modifications are patented to maintain high profits. For example, Avastin (bevacizumab, $50/dose) and Lucentis (ranibizumab, $1,500/dose) are molecularly nearly identical, yet the unmodified version costs 30 times less. Similarly, esketamine (Spravato) is a modified right-handed isomer of ketamine, patented despite evidence of lower efficacy.

hackernews · giuliomagnifico · Jun 18, 10:33 · [Discussion](https://news.ycombinator.com/item?id=48583386)

**Background**: Drug repurposing (or repositioning) investigates existing drugs for new therapeutic purposes, reducing the number of required clinical trials and time to market. It is often serendipitous but now benefits from advances in genomics and network biology. This approach can bypass high costs of traditional drug development and leverage existing supply chains.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Drug_repurposing">Drug repurposing</a></li>
<li><a href="https://www.elsevier.com/en-au/industry/drug-repurposing">Drug repurposing: approaches, methods and considerations | Elsevier</a></li>

</ul>
</details>

**Discussion**: Commenters shared firsthand experiences, such as ophthalmologists using Avastin off-label for macular degeneration, and noted systemic issues where patented variants (e.g., Lucentis, Spravato) dominate despite similar or worse efficacy. Some expressed support for nonprofits like Cures Within Reach that fund repurposing studies for rare diseases.

**Tags**: `#drug repurposing`, `#healthcare costs`, `#pharmaceuticals`, `#medical research`, `#public health`

---

<a id="item-5"></a>
## [Rosetta Neurons Scale Sublinearly, Become More Monosemantic](https://www.reddit.com/r/MachineLearning/comments/1u9g7lk/neuron_populations_exhibit_divergent_selectivity/) ⭐️ 8.0/10

A new study reveals that universal 'Rosetta' neurons across neural networks scale as a sublinear power law with model size, becoming more monosemantic and specialized as models grow larger. This finding advances mechanistic interpretability by showing that larger models develop more specialized neurons, and enables a practical application: using a single Rosetta neuron to filter data for continued pretraining can nearly match oracle-level data filtering performance. The paper defines Rosetta neurons as neurons whose activations are positively correlated across different models, and demonstrates that their count grows sublinearly (as a power law) while their fraction of total neurons shrinks with scale.

reddit · r/MachineLearning · /u/avd4292 · Jun 18, 19:40

**Background**: Rosetta neurons are universal features found across diverse neural networks trained on different tasks and architectures, first introduced by Dravid et al. in 2023. Monosemanticity refers to a neuron activating for a single, interpretable concept, as opposed to polysemanticity where one neuron responds to multiple unrelated features. Scaling laws in deep learning describe how model performance improves with size, data, and compute.

<details><summary>References</summary>
<ul>
<li><a href="https://transformer-circuits.pub/2024/scaling-monosemanticity/">Scaling Monosemanticity: Extracting Interpretable Features from Claude 3 Sonnet</a></li>

</ul>
</details>

**Tags**: `#mechanistic interpretability`, `#scaling laws`, `#neuron universality`, `#monosemanticity`, `#deep learning`

---

<a id="item-6"></a>
## [Cornell's Advanced Compilers Course Now Free Online](https://www.cs.cornell.edu/courses/cs6120/2025fa/self-guided/) ⭐️ 7.0/10

Cornell University's CS 6120 advanced compilers course is now available as a free self-guided online resource, allowing anyone to learn compiler optimization and advanced topics at their own pace. This provides unprecedented access to top-tier compiler education, benefiting students, researchers, and industry professionals who lack formal compiler training, though the course may not cover the most recent advancements in dynamic compilation. The course covers traditional compiler optimization topics such as dead code elimination, data flow analysis, dominator analysis, and SSA form, but community discussion notes it lacks depth in trace compilation and modern dynamic compiler techniques.

hackernews · ibobev · Jun 18, 11:04 · [Discussion](https://news.ycombinator.com/item?id=48583606)

**Background**: Compilers translate high-level programming languages into machine code, and advanced compilers focus on optimization to improve performance. Cornell's CS 6120 is a graduate-level course that introduces key optimization frameworks and intermediate representations.

**Discussion**: Commenters appreciate the free availability but offer critique: 'titzer' notes trace compilation is a dead end and suggests focusing on type feedback, speculation, and deoptimization; 'j2kun' questions if topics like dead code elimination are truly advanced; others compare with alternative resources or mention Rust compiler's use of machine learning.

**Tags**: `#compilers`, `#computer science education`, `#online course`, `#programming languages`, `#systems`

---

<a id="item-7"></a>
## [Modos Color E-Paper Monitor Sets New Bar](https://spectrum.ieee.org/modos-e-paper-monitor) ⭐️ 7.0/10

Two-person startup Modos debuted a 13.3-inch color e-paper monitor with 3.2K resolution (3200×2400), touch input, and a 60Hz refresh rate, far surpassing previous e-paper capabilities. This advancement brings e-paper closer to replacing traditional LCD/OLED monitors for daily use, offering ultralow power consumption and sunlight readability, which could transform productivity computing and reduce eye strain. The Modos Flow monitor achieves 60Hz refresh rate—nearly matching video playback smoothness—while maintaining the bistable, low-power characteristics of e-paper. It targets developers and writers who value extended battery life and outdoor usability.

hackernews · Vinnl · Jun 18, 11:41 · [Discussion](https://news.ycombinator.com/item?id=48583897)

**Background**: E-paper displays, like those found in e-readers, use microcapsules that move charged particles to show text and images, consuming power only when changing content. Historically, they suffered from low refresh rates (often <15Hz) and limited color reproduction, restricting them to static or slow-update applications. Modos' development overcomes these barriers with a custom driving scheme that enables smooth video-like refresh without sacrificing image quality.

<details><summary>References</summary>
<ul>
<li><a href="https://spectrum.ieee.org/e-paper-display-modos">E-Paper Display Refresh Rate Reaches New Heights - IEEE Spectrum</a></li>

</ul>
</details>

**Discussion**: Comments were overwhelmingly positive, with users expressing excitement about the technology's potential for auxiliary devices and ultralight tablets. Some noted the inspiring resilience of the indie startup team, while others joked about pairing the display with LLMs for interactive 'magic portraits.'

**Tags**: `#e-paper`, `#display technology`, `#startups`, `#color monitors`, `#hardware`

---

<a id="item-8"></a>
## [Emacs 31 preview generates community discussion](https://www.rahuljuliato.com/posts/emacs-31-around-the-corner) ⭐️ 7.0/10

A blog post previewing features in the upcoming Emacs 31 release, based on the author's daily driving experience, has generated a lively community discussion about the editor's enduring value. This matters because it highlights Emacs's continued relevance and active development, with the community discussing its strengths in an era of modern editors like VSCode. The post itself is a technical preview of changes in Emacs 31, but the community comments focus more on why users still choose Emacs over alternatives.

hackernews · frou_dh · Jun 18, 12:10 · [Discussion](https://news.ycombinator.com/item?id=48584135)

**Background**: Emacs is a highly extensible and customizable text editor that has been under development since the 1970s. It is known for its powerful keybindings, Lisp-based configuration (Emacs Lisp), and a vast ecosystem of packages. Despite the rise of modern editors like VSCode, Emacs maintains a dedicated user base.

**Discussion**: The community comments show a mix of nostalgia and practicality. Many users affirm they still use Emacs after decades, citing its speed and control. Some note that AI agents have made Emacs's steep learning curve manageable, while others humorously remark that they will upgrade and then ignore the changes.

**Tags**: `#Emacs`, `#Editor`, `#Open Source`, `#Development Tools`

---

<a id="item-9"></a>
## [W Social: European Digital Sovereignty or Political Theater?](https://blog.elenarossini.com/w-social-public-institutions-and-the-theater-of-european-digital-sovereignty/) ⭐️ 7.0/10

An article by Elena Rossini criticizes the launch of W Social, a European social network announced at Davos, as opaque and politically driven, likening it to TruthSocial with a European accent. The network claims to offer identity verification and data sovereignty but is accused of lacking transparency compared to alternatives like Eurosky. This debate highlights tensions in European digital sovereignty initiatives, where political expediency may overshadow genuine open-source and transparent alternatives. The outcome could influence how European institutions approach social media regulation and public investment. W Social is an LLC with a founder from a finance background, and it presented at the World Economic Forum. The platform requires human verification but a commenter claims to have created 6 accounts easily, questioning the verification process.

hackernews · nemoniac · Jun 18, 12:46 · [Discussion](https://news.ycombinator.com/item?id=48584497)

**Background**: European digital sovereignty refers to the EU's push to reduce reliance on US tech giants by fostering local alternatives. W Social positions itself as a European-owned, EU-law-governed platform with data hosted in Europe, aiming to combat disinformation through identity verification. However, critics point to a lack of open development and transparency compared to projects like Eurosky, which is built on AT Protocol and run by a nonprofit foundation.

<details><summary>References</summary>
<ul>
<li><a href="https://blog.elenarossini.com/w-social-uncovered-the-reality-behind-the-hype/">W Social uncovered: the reality behind the hype - Elena Rossini</a></li>
<li><a href="https://wsocial.news/">W - The European social network for verified humans</a></li>
<li><a href="https://wsocial.eu/">W Social</a></li>

</ul>
</details>

**Discussion**: Community comments express widespread skepticism: one user felt W Social was shady from its first HN ad; another highlights the discrepancy between media silence on Eurosky and heavy promotion of W Social, suggesting political motivations. Another commenter notes the founder's finance background and LLC status, implying profit motives, and compares it to Truth Social, predicting failure.

**Tags**: `#European digital sovereignty`, `#social media`, `#transparency`, `#politics`, `#W Social`

---

<a id="item-10"></a>
## [DeepSeek Adds Vision Understanding to Chat Model](https://chat.deepseek.com/) ⭐️ 7.0/10

DeepSeek has updated its chat model to understand and describe images, enabling multimodal capabilities without image generation or modification. The feature is now available on the DeepSeek chat platform at chat.deepseek.com. This update positions DeepSeek among leading multimodal AI models, enhancing its utility for tasks like image captioning and accessibility. It also sparks community discussion about expanding features such as speech recognition, indicating demand for more comprehensive AI assistants. The vision understanding feature allows DeepSeek to analyze images and provide descriptions, but it cannot generate or edit images. Users have noted that the chat app still lacks text-to-speech and speech-to-text capabilities, which some consider a limitation.

hackernews · RIshabh235 · Jun 18, 06:17 · [Discussion](https://news.ycombinator.com/item?id=48581458)

**Background**: DeepSeek is a private AI company founded in 2023 that develops large language models. Multimodal AI models process multiple data types (text, images, audio) simultaneously, enabling tasks like visual question answering and image captioning. Adding vision understanding aligns DeepSeek with models like GPT-4o and Google Gemini, which already offer multimodal capabilities.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/DeepSeek">en.wikipedia.org › wiki › DeepSeek DeepSeek - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Multimodal_AI">Multimodal AI</a></li>

</ul>
</details>

**Discussion**: Commenters express mixed reactions: some are surprised the vision update didn't include speech features, while others discuss integration possibilities with local vision frameworks for generating alt text. One user notes encountering Chinese language responses from DeepSeek, suggesting possible silent updates. Overall, the community recognizes the value of vision understanding but desires additional multimodal capabilities.

**Tags**: `#deepseek`, `#AI`, `#vision`, `#multimodal`, `#hackernews`

---

<a id="item-11"></a>
## [Beyond .gitignore: Alternative Git Ignore Mechanisms](https://nelson.cloud/.gitignore-isnt-the-only-way-to-ignore-files-in-git/) ⭐️ 7.0/10

This article explores Git ignore mechanisms beyond .gitignore, including per-repo exclude files (.git/info/exclude), global excludes (via core.excludesfile), and using .gitattributes to skip diff for certain files. These techniques allow developers to ignore files locally without affecting the repository, reducing noise and improving workflow. Global excludes help avoid committing IDE or OS files to every project, while .gitattributes keeps diffs clean for auto-generated files. Per-repo exclude is stored in .git/info/exclude and is local only. Global exclude is configured via `git config --global core.excludesfile` pointing to a file like ~/.gitignore_global. .gitattributes can set the `diff` attribute to false or use `binary` to skip diff entirely.

hackernews · FergusArgyll · Jun 18, 10:29 · [Discussion](https://news.ycombinator.com/item?id=48583356)

**Background**: Git typically uses .gitignore (checked into the repo) to ignore untracked files. However, sometimes you need to ignore files only for your local setup without affecting others. Git provides local mechanisms via .git/info/exclude (per-repo) and a global exclude file via core.excludesfile. Additionally, .gitattributes can control diff behaviors for specific files.

<details><summary>References</summary>
<ul>
<li><a href="https://docs.github.com/en/get-started/git-basics/ignoring-files">docs.github.com › en › get-started Ignoring files - GitHub Docs</a></li>
<li><a href="https://git-scm.com/docs/gitignore">git -scm.com › docs › gitignore Git - gitignore Documentation</a></li>
<li><a href="https://git-scm.com/docs/gitattributes">git -scm.com › docs › gitattributes Git - gitattributes Documentation</a></li>

</ul>
</details>

**Discussion**: Commenters praised the article, highlighting the global exclude and .gitattributes features. Some shared tips like using ~/.config/git/ignore for global ignores, and creating an 'attic' directory in global ignore. Others noted that per-repo exclude is less used because it isn't committed.

**Tags**: `#git`, `#version control`, `#dotfiles`, `#productivity`

---

<a id="item-12"></a>
## [Conversation-Level Voice Debugging Outperforms Isolated Benchmark Metrics](https://www.reddit.com/r/MachineLearning/comments/1u99fe5/voice_debugging_at_the_conversation_level_seems/) ⭐️ 7.0/10

A Reddit post argues that conversation-level voice debugging is far more effective than traditional isolated benchmark metrics for evaluating real-world multi-turn conversational quality, based on practical experience with automated QA. This highlights a significant gap in current evaluation practices for conversational AI systems, urging developers to shift focus from aggregate metrics to emergent interaction patterns that determine user satisfaction. The post mentions that small timing mistakes, repeated confirmations, and unnatural turn-taking are failures that benchmarks fail to capture, and conversation-level debugging helps identify recurring patterns.

reddit · r/MachineLearning · /u/OwlZealousideal4779 · Jun 18, 15:29

**Background**: Traditional evaluation of conversational AI relies on isolated metrics like speech-to-text accuracy, latency, and task completion rates. However, in multi-turn conversations, emergent issues such as timing and turn-taking significantly affect user experience, which these benchmarks often miss.

**Tags**: `#conversational AI`, `#voice debugging`, `#evaluation metrics`, `#multi-turn systems`

---

<a id="item-13"></a>
## [Probe strength analysis in transformers](https://www.reddit.com/r/MachineLearning/comments/1u8lo60/how_do_you_analyze_the_relative_strength_of/) ⭐️ 7.0/10

A researcher raises a foundational question about theoretically analyzing the relative strength of linear probes in transformer-based models, seeking Nyquist-type sampling guarantees and capacity balance principles. This question addresses a critical gap in mechanistic interpretability: how to ensure probes do not overfit or underfit relative to the underlying network, which impacts the reliability of circuit analysis and factuality guarantees in language models. The post references an old study on determining if a transformer 'knows' which word a token belongs to using logistic regression, and notes potential pitfalls like small vocabulary sizes inflating performance and misinterpretation of results.

reddit · r/MachineLearning · /u/RepresentativeBee600 · Jun 17, 20:29

**Background**: In mechanistic interpretability, linear probes are trained on hidden states to extract specific features (e.g., word position). The Nyquist–Shannon sampling theorem from signal processing provides guarantees for reconstructing continuous signals from discrete samples. The question analogizes whether similar guarantees exist for probing feature frequencies in language model representations, considering data and model capacity.

<details><summary>References</summary>
<ul>
<li><a href="https://learn.arena.education/chapter1_transformer_interp/11_probing/">Chapter 1: Transformer Interpretability - ARENA</a></li>

</ul>
</details>

**Tags**: `#machine learning`, `#interpretability`, `#probes`, `#circuit analysis`, `#language models`

---

<a id="item-14"></a>
## [Meta-directory for indie web submission platforms](https://www.submission.directory/) ⭐️ 6.0/10

A new website, submission.directory, offers a curated list of directories where indie web founders can submit their websites for exposure. It serves as a meta-directory consolidating submission opportunities in one place. For indie web founders and growth hackers, finding legitimate submission directories is time-consuming and often fraught with spam. This site streamlines discovery and helps build backlinks and audience, but also highlights persistent spam and qualification challenges in the ecosystem. The directory is a single-page list of websites with links, described as a 'meta-directory' since it lists other directories. Community comments reveal that submission platforms often struggle with spam, fake submissions, and manual review costs, as noted by founders of BetaList and ListenNotes.

hackernews · azeemkafridi · Jun 18, 15:12 · [Discussion](https://news.ycombinator.com/item?id=48586631)

**Background**: The IndieWeb movement emphasizes personal websites over corporate platforms, encouraging individuals to own their content. Growth hacking involves rapid experimentation to grow user base, often through backlinks and directory submissions. Submission directories are a classic but evolving tactic, now facing challenges from spam and evolving algorithms.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/IndieWeb">IndieWeb</a></li>
<li><a href="https://en.wikipedia.org/wiki/Growth_hacking">Growth hacking</a></li>

</ul>
</details>

**Discussion**: The community discussion reveals mixed experiences: marc (founder of BetaList) shared the difficulty of manual reviews and created submit.co; wenbin (ListenNotes) described fighting fake podcasts with backlink spam; susam shared his own metalist of directories; transitorykris noted parallels to 90s submit services; and andrelaszlo made a recursive joke. Overall, the sentiment is that while useful, the submission ecosystem is plagued by spam and requires curation.

**Tags**: `#web directories`, `#indie web`, `#startups`, `#submission platforms`, `#growth hacking`

---