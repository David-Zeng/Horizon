---
layout: default
title: "Horizon Summary: 2026-07-17 (EN)"
date: 2026-07-17
lang: en
---

> From 21 items, 12 important content pieces were selected

---

1. [Firefox compiled to WebAssembly runs inside another browser](#item-1) ⭐️ 9.0/10
2. [AWS Billing Error Shows $1.7 Billion Estimated Bills](#item-2) ⭐️ 8.0/10
3. [First atmosphere detected on Earth-like exoplanet in habitable zone](#item-3) ⭐️ 8.0/10
4. [Moonshot AI Unveils Kimi K3, 2.8 Trillion Parameter Open-Weight Model](#item-4) ⭐️ 8.0/10
5. [Mozilla Report Analyzes Open Source AI Landscape](#item-5) ⭐️ 8.0/10
6. [EU AI Act OpenRAG: Structurally Chunked Corpus Released](#item-6) ⭐️ 8.0/10
7. [Three non-solution responses to problems explained](#item-7) ⭐️ 7.0/10
8. [A Road to Lisp: Which Lisp?](#item-8) ⭐️ 7.0/10
9. [EEG shows brain can encode two speech streams at once](#item-9) ⭐️ 7.0/10
10. [Prism Bug Leaks Users' Papers During Compilation](#item-10) ⭐️ 7.0/10
11. [Watch SSH honeypot bot activity in real time](#item-11) ⭐️ 6.0/10
12. [Pebble Index 01 Ring Faces Sizing and Battery Life Backlash](#item-12) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [Firefox compiled to WebAssembly runs inside another browser](https://simonwillison.net/2026/Jul/16/firefox-in-webassembly/#atom-everything) ⭐️ 9.0/10

Puter has compiled the full Firefox browser to WebAssembly, enabling it to run inside another browser such as Chrome. The project used Claude Opus and Fable tokens (approx. $25,000 worth) via a cheaper subscription, and all network traffic is proxied through the Wisp protocol. This achievement pushes the boundaries of WebAssembly and browser virtualization, demonstrating that even complex applications like a full browser can be cross-compiled and run within another browser. It opens up possibilities for extreme cross-browser testing, isolation, and novel use cases in web development. The compiled Firefox was chosen because Gecko has strong single-process support. The demo uses a WebSocket-based Wisp protocol to proxy all traffic through Puter's server, and the team had to scale servers to handle Hacker News traffic. End-to-end encryption is supported for HTTPS connections.

rss · Simon Willison · Jul 16, 23:34

**Background**: WebAssembly (Wasm) is a binary instruction format that allows code written in multiple languages to run in web browsers at near-native speed. The Wisp protocol is a low-overhead way to proxy multiple TCP and UDP sockets over a single WebSocket connection, enabling browser-based applications to make network requests that would otherwise be blocked. Puter is an open-source cloud platform that provides a desktop-like environment in the browser.

<details><summary>References</summary>
<ul>
<li><a href="https://github.com/MercuryWorkshop/wisp-protocol">GitHub - MercuryWorkshop/wisp-protocol: Wisp is a low-overhead, easy to ...</a></li>
<li><a href="https://github.com/HeyPuter/puter">github.com › HeyPuter › puter GitHub - HeyPuter/puter: The Internet Computer! Free, Open-Source...</a></li>

</ul>
</details>

**Discussion**: The Hacker News discussion about the project was very active, with the team noting they had to scale up servers to handle the traffic. Comments generally expressed amazement at the technical feat, though some raised questions about the practicality and network proxying overhead.

**Tags**: `#WebAssembly`, `#Firefox`, `#browser virtualization`, `#AI-assisted development`, `#cross-platform`

---

<a id="item-2"></a>
## [AWS Billing Error Shows $1.7 Billion Estimated Bills](https://news.ycombinator.com/item?id=48945241) ⭐️ 8.0/10

AWS's billing system erroneously displayed estimated bills of up to $1.7 billion for some customers due to a unit conversion error where bytes were used instead of gigabytes. This incident highlights critical flaws in cloud billing systems that can cause widespread alarm and erode trust, especially as AWS serves millions of customers globally. The error originated when the billing system defaulted to charging per byte instead of per gigabyte, leading to a factor of 1 billion overcharge; affected users received budget alerts for amounts like $78 million.

hackernews · nprateem · Jul 17, 09:42

**Background**: AWS billing uses metering values in bytes, while pricing plans are specified in GB or GiB. A unit mismatch—charging per byte for a GB-priced service—causes massive overestimates. The difference between decimal (GB, 10^9 bytes) and binary (GiB, 2^30 bytes) prefixes is a common source of confusion in computing.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Binary_prefix">Binary prefix - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Gigabyte">Gigabyte - Wikipedia</a></li>
<li><a href="https://massive.io/file-transfer/gb-vs-gib-whats-the-difference/">GB Vs GiB: What’s The Difference? - MASV</a></li>

</ul>
</details>

**Discussion**: Community comments provided firsthand accounts of similar unit errors at AWS and expressed concern about the potential for more severe systemic failures. Some users noted the incident's comedic irony while others worried it signals deeper issues in AWS's infrastructure.

**Tags**: `#AWS`, `#billing`, `#cloud`, `#error`, `#unit-conversion`

---

<a id="item-3"></a>
## [First atmosphere detected on Earth-like exoplanet in habitable zone](https://www.bbc.com/news/articles/cy4kdd1e0ejo) ⭐️ 8.0/10

Astronomers using the James Webb Space Telescope (JWST) have detected an atmosphere on the rocky exoplanet LHS 1140b, which orbits within the habitable zone of its red dwarf star 48 light-years away. This is the first confirmed atmosphere on an Earth-like planet in a habitable zone, offering a potential target for studying biosignatures and the conditions for life beyond our solar system. The detection was made using transit spectroscopy during JWST observations of LHS 1140b passing behind its star, ruling out a mini-Neptune scenario. However, red dwarfs emit intense flares that could strip atmospheres, raising questions about long-term stability.

hackernews · neversaydie · Jul 17, 14:06 · [Discussion](https://news.ycombinator.com/item?id=48947560)

**Background**: Transit spectroscopy analyzes starlight filtered through an exoplanet's atmosphere during a transit, revealing its chemical composition. Red dwarfs are cool, common stars with close-in habitable zones, but their frequent flares can erode planetary atmospheres, challenging habitability.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Transit_spectroscopy">Transit spectroscopy</a></li>
<li><a href="https://en.wikipedia.org/wiki/Red_dwarf">en.wikipedia.org › wiki › Red_dwarf Red dwarf - Wikipedia</a></li>

</ul>
</details>

**Discussion**: Commenters expressed surprise that a rocky planet around a red dwarf could retain an atmosphere, with some initially suggesting LHS 1140b might be a mini-Neptune. However, JWST data ruled that out, and others proposed using a solar lens telescope for future direct imaging. Overall, the community is cautiously optimistic but highlights the need for further validation.

**Tags**: `#exoplanets`, `#atmosphere`, `#habitable zone`, `#JWST`, `#astronomy`

---

<a id="item-4"></a>
## [Moonshot AI Unveils Kimi K3, 2.8 Trillion Parameter Open-Weight Model](https://simonwillison.net/2026/Jul/16/kimi-k3/#atom-everything) ⭐️ 8.0/10

Moonshot AI announced Kimi K3, a 2.8 trillion parameter open-weight model, with weights promised for release by July 27, 2026. It outperforms GPT-5.5 and Claude Opus 4.8 on several benchmarks and ranks first on Arena.ai's Frontend Code arena. Kimi K3 is the largest open-weight model to date, marking a significant milestone in open AI development. Its competitive performance and high pricing suggest a shift towards premium open models, challenging the notion that open models must be cheap. The model has 2.8 trillion parameters, pricing at $3 per million input tokens and $15 per million output tokens, making it the most expensive Chinese AI lab model. Artificial Analysis reports it uses 21% fewer output tokens than Kimi K2.6.

rss · Simon Willison · Jul 16, 20:19 · [Discussion](https://news.ycombinator.com/item?id=48947717)

**Background**: The 'pelican on a bicycle' benchmark is an informal test created by developer Simon Willison in late 2024, asking LLMs to generate an SVG of a pelican riding a bicycle. It has become a popular way to evaluate model capabilities and tokenization quirks, revealing that parameter count alone does not determine performance.

<details><summary>References</summary>
<ul>
<li><a href="https://simonwillison.net/2026/Jul/16/kimi-k3/">Kimi K3, and what we can still learn from the pelican benchmark</a></li>
<li><a href="https://grokipedia.com/page/Pelican_on_a_bicycle_AI_benchmark">Pelican on a bicycle (AI benchmark)</a></li>
<li><a href="https://artificialanalysis.ai/evaluations/aa-briefcase">AA-Briefcase: Agentic Knowledge Work Benchmark | Artificial Analysis</a></li>

</ul>
</details>

**Discussion**: Commenters noted that the pelican prompt used 95 input tokens, far more than expected (e.g., 10 tokens with other tokenizers), suggesting a hidden system prompt. Some doubted whether the pelican SVG is truly unseen in training data, while others argued the test should involve multiple runs per model for fair comparison. One commenter speculated that parameter count matters less than attention mechanism efficiency.

**Tags**: `#AI`, `#LLMs`, `#open-source`, `#benchmarks`, `#Moonshot AI`

---

<a id="item-5"></a>
## [Mozilla Report Analyzes Open Source AI Landscape](https://stateofopensource.ai/) ⭐️ 8.0/10

Mozilla released a report analyzing the current state, growth trends, and competitive dynamics of open source AI models, based on community data and expert analysis. This report provides data-driven insights into the rapid shift from closed to open AI models, potentially reshaping the competitive landscape of AI companies and influencing the future of AI accessibility and control. Community data from OpenRouter shows open models' token processing grew nearly 5x in four months, from 888B to 4.19T tokens per day, though the report's AI-generated presentation style has been criticized.

hackernews · rellem · Jul 17, 14:31 · [Discussion](https://news.ycombinator.com/item?id=48947825)

**Background**: Open source AI models are those with publicly available weights or code, enabling modification and redistribution. The open vs. closed model debate involves trade-offs in cost, performance, and control. Mozilla, known for its Firefox browser, advocates for open internet principles and has been monitoring the AI landscape.

**Discussion**: Comments are polarized: some celebrate open models' rapid growth and predict the decline of closed-model companies, while others criticize the report's AI-generated format as undermining its credibility. A few users also debate the strategic implications for major AI firms.

**Tags**: `#open source`, `#AI`, `#Mozilla`, `#models`, `#community discussion`

---

<a id="item-6"></a>
## [EU AI Act OpenRAG: Structurally Chunked Corpus Released](https://www.reddit.com/r/MachineLearning/comments/1uytlac/eu_ai_act_openrag_933_legally_structured_chunks/) ⭐️ 8.0/10

A new corpus of the EU AI Regulation, EU AI Act OpenRAG, has been released, containing 933 legally structured chunks with BGE-M3 embeddings in a single SQLite file. This dataset addresses a practical need for legally precise RAG systems, improving retrieval recall by structuring chunks according to the regulation's legal hierarchy rather than using sliding windows. The dataset includes exact EUR-Lex links, Article 113 application-date metadata, and deliberately narrow derived labels; evaluation results show structural chunking achieves scenario article recall@20 of 0.541 vs 0.449 baseline.

reddit · r/MachineLearning · /u/Automatic-Forever-63 · Jul 17, 08:18

**Background**: The EU AI Act (Regulation 2024/1689) is a landmark legal framework for artificial intelligence. RAG (Retrieval-Augmented Generation) systems combine retrieval of relevant documents with language generation. BGE-M3 is a versatile embedding model supporting dense, sparse, and multi-vector retrieval across 100+ languages.

<details><summary>References</summary>
<ul>
<li><a href="https://huggingface.co/BAAI/bge-m3">BAAI/bge-m3 · Hugging Face</a></li>
<li><a href="https://arxiv.org/abs/2603.09435">[2603.09435] AI Act Evaluation Benchmark: An Open, Transparent, and Reproducible Evaluation Dataset for NLP and RAG Systems</a></li>
<li><a href="https://digital-strategy.ec.europa.eu/en/policies/regulatory-framework-ai">AI Act | Shaping Europe's digital future - European Union</a></li>

</ul>
</details>

**Discussion**: The Reddit post includes a request for technical feedback on retrieval evaluation and chunking methodology; no comments are provided in the content, so sentiment is not available.

**Tags**: `#RAG`, `#legal NLP`, `#AI Act`, `#embeddings`, `#dataset`

---

<a id="item-7"></a>
## [Three non-solution responses to problems explained](https://improvesomething.today/responses-to-problems/) ⭐️ 7.0/10

The article categorizes common responses to problems beyond solving them: preserving the problem, escalating it, or ignoring it, and explains why these patterns cause persistent issues in organizations and government. This framework helps understand why well-funded initiatives often fail to resolve systemic issues, highlighting how incentives can perpetuate problems rather than solve them. The article uses real-world examples to illustrate each response, and emphasizes that 'preserving the problem' is often driven by perverse incentives that reward keeping the problem alive.

hackernews · surprisetalk · Jul 17, 14:00 · [Discussion](https://news.ycombinator.com/item?id=48947490)

**Background**: Traditional problem-solving focuses on finding and implementing solutions. However, in complex systems like organizations and governments, actors may have reasons to avoid solving a problem, such as maintaining budgets, power, or expertise. The article explores these alternative dynamics.

**Discussion**: Commenters expanded on the 'preserving' response, noting that experts and departments often have incentives not to solve root causes, and compared the framework to risk management strategies like avoidance and mitigation.

**Tags**: `#problem-solving`, `#organizational-behavior`, `#psychology`, `#incentives`, `#systems-thinking`

---

<a id="item-8"></a>
## [A Road to Lisp: Which Lisp?](https://scotto.me/blog/2026-07-17-which-lisp/) ⭐️ 7.0/10

A blog post titled 'A Road to Lisp: Which Lisp' provides a practical guide for programmers choosing among Lisp dialects, enriched by community discussion that contrasts Common Lisp, Scheme, Clojure, and Racket. This guide helps newcomers and experienced developers navigate the fragmented Lisp ecosystem, clarifying trade-offs that influence language choice for projects, learning, or productivity. The discussion highlights that Common Lisp offers performance (e.g., SBCL) and extensibility, Scheme provides minimalism, Clojure excels with syntax and immutable data structures, and Racket emphasizes beginner-friendliness and language construction.

hackernews · silcoon · Jul 17, 13:56 · [Discussion](https://news.ycombinator.com/item?id=48947455)

**Background**: Lisp is one of the oldest high-level programming languages, known for its unique parenthesized syntax and code-as-data philosophy. Over time, several dialects have emerged: Common Lisp (a standardized multi-paradigm language), Scheme (a minimalist dialect often used in education), Clojure (a modern functional dialect that runs on the JVM), and Racket (a language-oriented programming platform). Each dialect targets different use cases and priorities, making the choice confusing for newcomers.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Common_Lisp">Common Lisp</a></li>
<li><a href="https://en.wikipedia.org/wiki/Scheme_(programming_language)">en.wikipedia.org › wiki › Scheme_(programming_language) Scheme (programming language) - Wikipedia www. scheme .com › tspl4 The Scheme Programming Language, 4th Edition docs. scheme .org Scheme Documentation groups.csail.mit.edu › mac › projects The Scheme Programming Language scheme .com (chez (chez scheme)) web.mit.edu › scheme › current Overview - MIT/GNU Scheme 9.2</a></li>
<li><a href="https://en.wikipedia.org/wiki/Clojure">en.wikipedia.org › wiki › Clojure Clojure - Wikipedia</a></li>

</ul>
</details>

**Discussion**: Community comments reveal diverse preferences: some appreciate Common Lisp's extensibility (e.g., through reader macros and libraries like Coalton), while others wish for a hybrid combining best features from multiple dialects. One commenter even suggests that as LLMs advance, hand coding may become a hobbyist pursuit, diminishing the practical importance of dialect choice.

**Tags**: `#Lisp`, `#Common Lisp`, `#Scheme`, `#Clojure`, `#Racket`

---

<a id="item-9"></a>
## [EEG shows brain can encode two speech streams at once](https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.3003876) ⭐️ 7.0/10

A new EEG study reveals that the human brain can simultaneously encode two competing speech streams, with neural tracking of a new speaker emerging before the old one is fully disengaged. This finding challenges the traditional view that the brain can only process one speech stream at a time, providing insights into auditory attention and multitasking that could improve hearing aid technology and brain-computer interfaces. The study observed transient dual encoding of both speakers and reduced alpha power during attention switches, indicating the brain briefly holds both streams before shifting focus.

hackernews · giuliomagnifico · Jul 17, 05:51 · [Discussion](https://news.ycombinator.com/item?id=48943745)

**Background**: EEG (electroencephalography) is a non-invasive technique that records electrical activity from the scalp with high temporal resolution. It is widely used to study neural responses to auditory stimuli. The 'cocktail party problem' refers to the brain's ability to focus on one speaker in a noisy environment, and this study provides evidence that the brain can simultaneously represent multiple speech streams before selecting one.

<details><summary>References</summary>
<ul>
<li><a href="https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.3003876">journals.plos.org › plosbiology › article Competing speech streams are simultaneously represented in the...</a></li>
<li><a href="https://en.wikipedia.org/wiki/EEG">EEG</a></li>

</ul>
</details>

**Discussion**: Commenters shared personal anecdotes of multitasking with speech, such as reading while counting (referencing Feynman) or processing two audio streams as a pilot. Some were surprised by the findings, while others found them consistent with their own experiences. The discussion also linked the study to mindfulness practices and altered states of consciousness.

**Tags**: `#neuroscience`, `#speech processing`, `#cognitive science`, `#EEG`, `#multitasking`

---

<a id="item-10"></a>
## [Prism Bug Leaks Users' Papers During Compilation](https://www.reddit.com/r/MachineLearning/comments/1uz75qt/prism_accidentally_leaked_d/) ⭐️ 7.0/10

A bug in OpenAI's Prism LaTeX editor caused the compilation process to return papers belonging to other users. The vulnerability was reported on Twitter and Discord, and Prism's team took the website offline within 10 minutes for patching. This incident highlights serious privacy risks for researchers using cloud-based LaTeX tools, as sensitive preprints could be inadvertently exposed to unauthorized users. It also demonstrates the need for robust isolation mechanisms in collaborative document platforms. The bug affected the compilation step, where users received PDFs submitted by other users instead of their own. The issue was quickly patched after being flagged, but the incident has raised concerns about potential prior exposure of user data.

reddit · r/MachineLearning · /u/Few-Monitor5103 · Jul 17, 17:59

**Background**: Prism is a free, AI-native LaTeX editor developed by OpenAI that integrates ChatGPT to assist with scientific writing. It allows users to write, edit, and compile LaTeX documents in the cloud. The compilation process typically renders a user's own document, but this bug mistakenly served another user's file, indicating a flaw in data isolation between user sessions.

<details><summary>References</summary>
<ul>
<li><a href="https://help.openai.com/en/articles/20001050-troubleshooting-and-getting-help-in-prism">Troubleshooting and Getting Help in Prism | OpenAI Help Center</a></li>
<li><a href="https://openai.com/prism/">openai.com › prism Prism | A free, LaTeX Editor and AI-native workspace for...</a></li>

</ul>
</details>

**Discussion**: The Reddit post expresses concern and relief that the bug was fixed quickly, but worry remains about whether their own papers might have been leaked to others. The sentiment is mixed: appreciation for the rapid response, but anxiety over privacy implications.

**Tags**: `#privacy`, `#security`, `#ML community`, `#paper leak`, `#Prism`

---

<a id="item-11"></a>
## [Watch SSH honeypot bot activity in real time](https://honeypotlive.cc/) ⭐️ 6.0/10

A new real-time web interface, honeypotlive.cc, displays SSH honeypot interactions, allowing viewers to see bot activity on public IPs as it happens. This visualization highlights the constant background noise of automated attacks on the internet, making cybersecurity threats more tangible. It also serves as an educational tool for those interested in network security and honeypot technology. The honeypot appears to be a medium-interaction SSH honeypot, possibly based on Cowrie, which logs brute force attempts and shell interactions. The interface updates in real time but may have security considerations to prevent web interface exploits.

hackernews · tusksm · Jul 17, 14:05 · [Discussion](https://news.ycombinator.com/item?id=48947548)

**Background**: An SSH honeypot is a decoy system that mimics a vulnerable SSH server to attract and monitor attackers. It logs connection attempts, usernames, passwords, and commands, providing valuable threat intelligence. Projects like Cowrie are commonly used for this purpose, offering low to high interaction levels.

<details><summary>References</summary>
<ul>
<li><a href="https://github.com/cowrie/cowrie">GitHub - cowrie/cowrie: Cowrie SSH/Telnet Honeypot https://docs.cowrie ...</a></li>
<li><a href="https://securehoney.net/">Secure Honey | SSH Honeypot</a></li>

</ul>
</details>

**Discussion**: Commenters found the project cool and engaging, with suggestions to add client geo-location. One user noted the sheer volume of background noise on public IPs, while another humorously reported that someone immediately started spamming the Bee Movie script. There were also links to similar honeypot projects using LLMs.

**Tags**: `#SSH`, `#honeypot`, `#cybersecurity`, `#real-time`, `#visualization`

---

<a id="item-12"></a>
## [Pebble Index 01 Ring Faces Sizing and Battery Life Backlash](https://repebble.com/blog/pebble-mega-update-july-2026) ⭐️ 6.0/10

Pebble's Index 01 smart ring is criticized for requiring a separate, potentially inaccurate sizing kit and for misleading battery life claims that advertise 2 years but only deliver 12-15 hours of actual use. These issues undermine consumer trust in Pebble and highlight common pitfalls in crowdfunded hardware, where marketing claims often outpace real-world performance, affecting early adopters and the smart ring market's credibility. The ring's battery life is based on brief 3-6 second recordings used 10-20 times per day, not continuous use, and the warranty is only 30 days against manufacturing defects.

hackernews · crazysaem · Jul 17, 03:53 · [Discussion](https://news.ycombinator.com/item?id=48943174)

**Background**: The Index 01 is a smart ring marketed as an 'external memory for your brain,' designed to capture short voice memos. It uses a non-rechargeable battery meant to last two years under specific usage patterns, but critics argue the real-world battery life is far shorter and the sizing process is flawed.

**Discussion**: Commenters express frustration over needing to buy a separate sizing kit that isn't accurate, the misleading battery life claims (2 years vs 12-15 hours), and an extremely short 30-day warranty. One user appreciates the CEO's transparency about flaws, but overall sentiment is highly critical.

**Tags**: `#smart ring`, `#hardware`, `#product review`, `#consumer electronics`, `#Hacker News`

---