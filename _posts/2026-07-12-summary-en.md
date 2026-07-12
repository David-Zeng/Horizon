---
layout: default
title: "Horizon Summary: 2026-07-12 (EN)"
date: 2026-07-12
lang: en
---

> From 15 items, 9 important content pieces were selected

---

1. [Claude Code vs OpenCode: 33k vs 7k token overhead comparison](#item-1) ⭐️ 8.0/10
2. [George Hotz: Love LLMs, Hate Hype](#item-2) ⭐️ 8.0/10
3. [Terry Tao uses LLM coding agents for math education apps](#item-3) ⭐️ 8.0/10
4. [CGI vs. LLM: Practical Skills Undervalued](#item-4) ⭐️ 8.0/10
5. [Shingles vaccine may reduce dementia risk, study suggests](#item-5) ⭐️ 7.0/10
6. [Ghostel.el: Emacs terminal emulator powered by libghostty](#item-6) ⭐️ 7.0/10
7. [Zer0Fit MCP Server Wraps Google TabFM and TimesFM for Local Zero-Shot ML](#item-7) ⭐️ 7.0/10
8. [sqlite-utils 4.1 Adds --code Option for Insert/Upsert](#item-8) ⭐️ 6.0/10
9. [Context and Average Best Linear Mappings in Neural Networks](#item-9) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [Claude Code vs OpenCode: 33k vs 7k token overhead comparison](https://systima.ai/blog/claude-code-vs-opencode-token-overhead) ⭐️ 8.0/10

An empirical comparison shows Claude Code consumes approximately 33,000 tokens in overhead before processing the actual prompt, while OpenCode uses only about 7,000 tokens for the same task, revealing significant inefficiency in cache strategy and harness design. Token consumption directly impacts cost for developers using AI coding tools; inefficient tools like Claude Code can lead to much higher bills, influencing tool selection and prompting providers to optimize their architectures. The study inserted logging between the agentic coding tools and Anthropic’s API endpoint to capture all request usage data, with one caveat discussed at the end of the post regarding potential qualitative differences.

hackernews · systima · Jul 12, 18:25 · [Discussion](https://news.ycombinator.com/item?id=48883275)

**Background**: Agentic coding tools like Claude Code and OpenCode use an 'agent harness' to manage tool use, memory, and execution, which adds overhead beyond the model's response. Cache strategy determines how effectively prompts are reused to avoid redundant token spending. This comparison highlights how harness design and caching can drastically affect operational costs.

<details><summary>References</summary>
<ul>
<li><a href="https://prowe214.medium.com/agentic-coding-harnesses-a-comparison-4db34b87fd5c">Agentic Coding Harnesses: A Comparison | by Paul Cullen Rowe | Medium</a></li>
<li><a href="https://pub.towardsai.net/your-ai-coding-bill-is-not-a-model-problem-its-an-orchestration-problem-eeeacb340d1e">Your AI Coding Bill Is Not a Model Problem. | Towards AI</a></li>
<li><a href="https://www.mindstudio.ai/blog/what-is-agent-harness-architecture-explained">What Is an Agent Harness? The Architecture Behind Claude Code, Codex, and Cursor | MindStudio</a></li>

</ul>
</details>

**Discussion**: Community members noted that sub-agents are a major token drain, with one user reporting that Claude Code launched 7 sub-agents that exhausted their budget before any finished. Another speculated that Anthropic might intentionally inflate token usage for financial gain, citing the inability to use subscriptions with other agents. A third user praised Codex for its transparency and lower overhead.

**Tags**: `#AI coding tools`, `#token efficiency`, `#Claude Code`, `#OpenCode`, `#software engineering`

---

<a id="item-2"></a>
## [George Hotz: Love LLMs, Hate Hype](https://geohot.github.io//blog/jekyll/update/2026/07/12/i-love-llms.html) ⭐️ 8.0/10

George Hotz published a blog post expressing his appreciation for LLMs' productivity gains while criticizing the surrounding hype and questioning why promised new software has not materialized. As a prominent technologist, Hotz's critique highlights a growing disconnect between LLM capabilities and real-world software innovation, raising important questions about the sustainability and direction of the AI boom. Hotz notes that despite measurable productivity improvements from using LLMs, the expected explosion of novel software applications has not occurred, suggesting that LLMs may be better at augmenting existing workflows than creating new ones.

hackernews · therepanic · Jul 12, 18:31 · [Discussion](https://news.ycombinator.com/item?id=48883343)

**Background**: Large language models (LLMs) like GPT-4 have rapidly advanced, leading to widespread adoption for coding, writing, and analysis. However, critics argue that the hype often outpaces actual utility, with many applications remaining experimental or incremental. George Hotz, founder of comma.ai and known for his contrarian views, weighs in on this debate.

**Discussion**: Commenters largely agree with Hotz's sentiment, sharing personal experiences of LLM productivity gains while voicing concerns about rising costs and subsidized pricing. Some see LLMs enabling a 'have it your way' era for software, while others question whether truly transformative AI is near, citing the lack of a 'secret sauce' for general intelligence.

**Tags**: `#LLM`, `#productivity`, `#hype`, `#open source`

---

<a id="item-3"></a>
## [Terry Tao uses LLM coding agents for math education apps](https://terrytao.wordpress.com/2026/07/11/old-and-new-apps-via-modern-coding-agents/) ⭐️ 8.0/10

Fields Medalist Terry Tao used LLM-based coding agents to build interactive visualizations and apps for mathematics education, documenting his experience and highlighting the utility and limitations of such agents. This is significant because a world-renowned mathematician actively validates the practical use of LLM coding agents in academic settings, potentially encouraging broader adoption and highlighting the untapped demand for software in non-traditional fields. Tao noted that while LLM-coded visualizations are not mission-critical to his papers, the downside risk of using these agents is acceptable for generating supplements. The blog post received high engagement (358 points, 103 comments) on Hacker News.

hackernews · subset · Jul 12, 11:09 · [Discussion](https://news.ycombinator.com/item?id=48880170)

**Background**: Terry Tao is a Fields Medal-winning mathematician known for his work in analysis, number theory, and partial differential equations. LLM-based coding agents are AI tools that can generate code from natural language prompts, enabling rapid prototyping of software. This news reflects a growing trend where domain experts leverage AI to build tools without deep programming expertise.

**Discussion**: Community comments were generally positive, with some sharing personal experiences of using LLMs for educational visualizations. A few comments humorously compared Tao's use to a chef discovering microwave dinners, but overall recognized the balanced perspective in Tao's post.

**Tags**: `#AI coding agents`, `#LLM`, `#software development`, `#mathematics`, `#visualization`

---

<a id="item-4"></a>
## [CGI vs. LLM: Practical Skills Undervalued](https://fabiensanglard.net/extinct/index.html) ⭐️ 8.0/10

Fabien Sanglard published an article drawing a parallel between the film industry's shift from practical effects to CGI and the software industry's adoption of large language models (LLMs), arguing that volume does not equal quality and that practical skills are being devalued. This analogy highlights a potential loss of craftsmanship in software engineering, where reliance on LLM-generated code may prioritize output over understanding, echoing the decline of practical effects in movies. Sanglard notes that those who refuse to use LLMs may fall behind in productivity, but quality still requires manual iteration; the film industry's pushback towards practical effects after decades of CGI shows a similar pattern.

hackernews · zdw · Jul 12, 15:17 · [Discussion](https://news.ycombinator.com/item?id=48881830)

**Background**: Large language models (LLMs) are AI models trained on vast text data that can generate human-like text and code. They have been widely adopted in software development to boost productivity, but concerns about over-reliance and quality exist.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Large_language_model">Large language model - Wikipedia</a></li>

</ul>
</details>

**Discussion**: Commenters highlighted that CGI devalued skilled labor due to lack of unionization, while some questioned the premise that volume is the primary metric for software engineers, arguing that joy and craftsmanship matter. Others shared that using LLMs still requires iterative refinement to achieve hand-crafted quality.

**Tags**: `#LLM`, `#software engineering`, `#CGI`, `#analogy`, `#productivity`

---

<a id="item-5"></a>
## [Shingles vaccine may reduce dementia risk, study suggests](https://www.economist.com/leaders/2026/07/09/a-no-brainer-for-protecting-your-brain) ⭐️ 7.0/10

The Economist reports that the shingles vaccine (Shingrix) may reduce the risk of dementia, based on observational studies showing a 1.8% to 3.5% absolute reduction in dementia diagnoses over several years. If causal, this finding could offer a simple, scalable intervention to reduce dementia burden, affecting millions of older adults worldwide. It highlights the potential of vaccines beyond infectious disease prevention. Replications in Australia and Canada showed smaller effects, and some researchers argue the apparent protection may be due to detection bias: vaccinated people visit hospitals less often, reducing incidental dementia diagnoses. The mechanism may involve infection-induced inflammation accelerating neurodegeneration.

hackernews · saikatsg · Jul 12, 15:23 · [Discussion](https://news.ycombinator.com/item?id=48881874)

**Background**: Shingles is a painful rash caused by reactivation of the varicella-zoster virus, which also causes chickenpox. The Shingrix vaccine is recommended for adults aged 50 and older. Dementia, particularly Alzheimer's disease, is a progressive neurodegenerative condition with no cure. Previous studies have linked infections to increased dementia risk, suggesting that preventing infections might lower that risk.

**Discussion**: Commenters are divided: some consider paying out-of-pocket for the vaccine early, while others warn of side effects and suggest natural remedies. Replication data is noted, but a spurious correlation argument is made—that less hospital contact leads to fewer dementia diagnoses. Overall, the discussion reflects cautious optimism and healthy skepticism.

**Tags**: `#medicine`, `#vaccine`, `#dementia`, `#public health`, `#epidemiology`

---

<a id="item-6"></a>
## [Ghostel.el: Emacs terminal emulator powered by libghostty](https://dakra.github.io/ghostel/) ⭐️ 7.0/10

Ghostel.el is a new Emacs terminal emulator that leverages libghostty-vt, providing faster performance and more reliable input handling compared to existing options like vterm and eat. Ghostel.el significantly improves the terminal experience within Emacs, enabling smoother operation of TUI apps and offering a nicer ELisp API, which benefits Emacs users who rely on in-editor terminals. Ghostel.el uses libghostty-vt, a cross-platform C and Zig library, and features a comprehensive comparison table against vterm and eat on its website. However, some users report occasional buffer clearing issues and freezes.

hackernews · signa11 · Jul 12, 08:52 · [Discussion](https://news.ycombinator.com/item?id=48879504)

**Background**: Emacs has several terminal emulator packages like vterm and eat, but they often struggle with performance and input reliability. libghostty is a fast, feature-rich terminal core developed by the Ghostty project, designed to be embedded into other applications. Ghostel.el brings this engine into Emacs, offering a modern alternative.

<details><summary>References</summary>
<ul>
<li><a href="https://github.com/ghostty-org/ghostty">GitHub - ghostty-org/ghostty: Ghostty is a fast, feature-rich, and...</a></li>
<li><a href="https://news.ycombinator.com/item?id=48879504">Ghostel . el : Terminal emulator powered by libghostty | Hacker News</a></li>
<li><a href="https://webteractive.co/blog/ghostty-and-libghostty-the-terminal-core-quietly-reshaping-the-ecosystem">Ghostty and libghostty : The Terminal Core Quietly... — Webteractive</a></li>

</ul>
</details>

**Discussion**: Community reactions are positive overall, with users reporting faster performance and better TUI support compared to vterm. However, some note rough edges like buffer clearing issues and occasional freezes, while a few express concerns about Ghostty's stability in general.

**Tags**: `#Emacs`, `#terminal emulator`, `#ghostty`, `#open source`, `#performance`

---

<a id="item-7"></a>
## [Zer0Fit MCP Server Wraps Google TabFM and TimesFM for Local Zero-Shot ML](https://www.reddit.com/r/MachineLearning/comments/1uue8cc/zer0fit_i_took_googles_new_tabfm_timesfm_ml/) ⭐️ 7.0/10

A graduate student created Zer0Fit, an MCP server that wraps Google's TabFM and TimesFM foundation models, enabling zero-shot classification, regression, and time-series forecasting entirely locally on Nvidia GPUs with 16GB+ VRAM. The project is available as a Docker container with dynamic model loading and integrates with Open WebUI, Claude Code, and Codex CLI. This project lowers the barrier for using state-of-the-art foundation models on tabular and time-series data, allowing non-experts to perform ML tasks without training or fine-tuning. It bridges the gap between LLM-based tools and traditional ML by making Google's models accessible via the Model Context Protocol. The server requires about 16GB of VRAM to run both models and uses PyTorch, so it only supports CUDA (no Mac or AMD). It automatically loads and unloads models with a 5-minute TTL to free VRAM when idle, and currently supports CSV input with more formats planned. The author reports 94.7% accuracy on Iris classification and an R2 of 0.91 on California housing regression.

reddit · r/MachineLearning · /u/Porespellar · Jul 12, 12:32

**Background**: TabFM is a zero-shot foundation model for tabular data released by Google Research, capable of classification and regression without fine-tuning. TimesFM is a decoder-only foundation model for time-series forecasting, pre-trained on 100 billion real-world time points. The Model Context Protocol (MCP) is an open standard by Anthropic that allows AI assistants to connect with external tools and data sources. Zer0Fit combines these technologies into a single MCP server that can be invoked from LLM interfaces.

<details><summary>References</summary>
<ul>
<li><a href="https://research.google/blog/introducing-tabfm-a-zero-shot-foundation-model-for-tabular-data/">Introducing TabFM : A zero-shot foundation model for tabular data</a></li>
<li><a href="https://research.google/blog/a-decoder-only-foundation-model-for-time-series-forecasting/">A decoder-only foundation model for time -series forecasting</a></li>
<li><a href="https://modelcontextprotocol.io/docs/getting-started/intro">What is the Model Context Protocol (MCP)? - Model Context Protocol</a></li>

</ul>
</details>

**Tags**: `#MCP`, `#TabFM`, `#TimesFM`, `#zero-shot ML`, `#local ML`

---

<a id="item-8"></a>
## [sqlite-utils 4.1 Adds --code Option for Insert/Upsert](https://simonwillison.net/2026/Jul/11/sqlite-utils/#atom-everything) ⭐️ 6.0/10

sqlite-utils 4.1 introduces a --code option for the insert and upsert commands, allowing users to provide inline Python code to generate rows instead of importing from a file. It also adds --type to override column types, a drop-index command, and stdin support for the query command. This release enhances the flexibility of sqlite-utils as a CLI data tool, making it easier to generate and insert data programmatically without writing separate files. The --type option fixes a common pain point with CSV/TSV imports where column types are misidentified. The --code option expects either a string of Python code defining a rows() function or a rows iterable, or a path to a .py file. The --type option allows users to explicitly set column types (e.g., TEXT) to preserve leading zeros in ZIP codes. The drop-index method and command support an --ignore flag to silently skip missing indexes.

rss · Simon Willison · Jul 11, 23:50

**Background**: sqlite-utils is a Python command-line tool and library for creating and manipulating SQLite databases with minimal boilerplate. It provides utilities for importing data from CSV, JSON, and other formats, as well as querying and transforming data. The --code option extends an existing pattern where users can pass Python code for data conversion, now allowing row generation directly in insert/upsert commands.

<details><summary>References</summary>
<ul>
<li><a href="https://sqlite-utils.datasette.io/">sqlite - utils</a></li>
<li><a href="https://pypi.org/project/sqlite-utils/">sqlite - utils · PyPI</a></li>

</ul>
</details>

**Tags**: `#python`, `#sqlite`, `#cli`, `#data tools`

---

<a id="item-9"></a>
## [Context and Average Best Linear Mappings in Neural Networks](https://www.reddit.com/r/MachineLearning/comments/1uu2p63/context_and_average_best_linear_mappings_d/) ⭐️ 6.0/10

A Reddit post proposes that neural network layers can be understood as average best linear mappings when considering context, referencing an archive.org document for elaboration. This perspective offers a simpler theoretical framing of deep learning, potentially bridging linear models and complex neural networks, but it lacks empirical validation or detailed analysis. The post scores 6.0/10 due to limited detail and no visible community discussion, and the linked document appears to be a draft or personal note rather than a peer-reviewed work.

reddit · r/MachineLearning · /u/oatmealcraving · Jul 12, 02:18

**Background**: Neural networks are typically viewed as highly nonlinear function approximators. However, linearized models, such as linear neural networks, have been used to study optimization and generalization in deep learning. This post suggests that even nonlinear layers can be interpreted as average best linear mappings conditioned on context, a viewpoint that might simplify analysis without losing expressive power.

<details><summary>References</summary>
<ul>
<li><a href="https://web.stanford.edu/~montanar/RESEARCH/FILEPAP/linear-nets.pdf">web.stanford.edu › ~montanar › RESEARCH Six Lectures on Linearized Neural Networks</a></li>

</ul>
</details>

**Tags**: `#neural networks`, `#linear mappings`, `#context`, `#deep learning theory`

---