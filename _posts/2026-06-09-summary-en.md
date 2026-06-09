---
layout: default
title: "Horizon Summary: 2026-06-09 (EN)"
date: 2026-06-09
lang: en
---

> From 14 items, 11 important content pieces were selected

---

1. [Anthropic Releases Claude Fable 5 with Restricted LLM Use](#item-1) ⭐️ 9.0/10
2. [AI Epistemic Risks: 30-Expert Paper Examines Reasoning Threats](#item-2) ⭐️ 9.0/10
3. [Microsoft open source tools hacked to steal AI developer passwords](#item-3) ⭐️ 8.0/10
4. [FCC Proposes ID Requirement for All Mobile Phone Purchases](#item-4) ⭐️ 8.0/10
5. [Let's Encrypt bans certificates in US-sanctioned territories](#item-5) ⭐️ 8.0/10
6. [Recreating 1990s 3D Graphics with Software Rendering](#item-6) ⭐️ 7.0/10
7. [Apple Withholds AI Siri in EU After Exemption Denied](#item-7) ⭐️ 7.0/10
8. [Karpathy: AI Tools Boost Software Demand via Jevons Paradox](#item-8) ⭐️ 7.0/10
9. [Apple's WWDC 2026 Siri AI: Vision LLMs and Custom Gemini](#item-9) ⭐️ 7.0/10
10. [Next Breakthrough in ASR: Scale vs New Architectures](#item-10) ⭐️ 7.0/10
11. [Are privacy-preserving ML techniques used in production?](#item-11) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [Anthropic Releases Claude Fable 5 with Restricted LLM Use](https://www.anthropic.com/news/claude-fable-5-mythos-5) ⭐️ 9.0/10

Anthropic has released Claude Fable 5, a new AI model that shows improved benchmark performance over its predecessor Opus 4.8, but introduces new restrictions limiting its use for frontier LLM development tasks. This release signals a major step in AI safety, with Anthropic proactively limiting model capabilities to slow down recursive self-improvement. It also changes the pricing model by offering Fable 5 for free temporarily before moving it to usage credits. Benchmarks show Fable 5 outperforms Opus 4.8 on default settings, and it achieves better results with about half the tokens in some agentic tasks, making it cost-effective. However, the model refuses to assist with topics related to LLM development, such as explaining papers or building pretraining pipelines.

hackernews · Philpax · Jun 9, 16:58 · [Discussion](https://news.ycombinator.com/item?id=48463808)

**Background**: AI system cards are documents that describe how AI systems work, including their capabilities, limitations, and safety measures. Anthropic has published a system card for Fable 5 detailing its new safety interventions that restrict the model from being used to accelerate its own development or that of other frontier LLMs.

<details><summary>References</summary>
<ul>
<li><a href="https://www.bing.com/aclick?ld=e8WbKwZ0jvvjfFo0bXH_RZVTVUCUzowOIZOoOkPqAKEYAxf4aGt0tusom5_xIfYshNsPxUiIC3XtYuIoTUUI2A7rl8fJndTKESK68ebfzAv3RH6VK18imftZWVAdGGm0fKrOEDWzeMBB9-4sRanSGv0nxgxJIwvZH4i97FSdfZE1qyoQUwAIG5vp_s8h3hPeOSjcXvPl-i8bnhomH03MJaVeqYj0M&u=aHR0cHMlM2ElMmYlMmZhc2tncHQuYXBwJTJmb25ib2FyZGluZyUzZnV0bV90aXRsZV9zcCUzZFVHOTNaWEpsWkNCaWVTQkRiR0YxWkdVZ1FVayUzZCUyNnV0bV9kZXNjcmlwdGlvbiUzZFYyVnNZMjl0WlNCMGJ5QkJjMnRIVUZRdUlFVnVhbTk1SUdaaGMzUXNJRzVoZEhWeVlXd2dRVWtnWTI5dWRtVnljMkYwYVc5dWN5QndiM2RsY21Wa0lHSjVJR0ZrZG1GdVkyVmtJRU5zWVhWa1pTMWlZWE5sWkNCMFpXTm9ibTlzYjJkNUxnJTNkJTNkJTI2dXRtX3NvdXJjZSUzZGJpbmclMjZ1dG1fbWVkaXVtJTNkY3BjJTI2dXRtX2NhbXBhaWduX2lkJTNkNTI0MjQxNjcxJTI2dXRtX2FkZ3JvdXBfaWQlM2QxMzI5MzEyNDUwOTc1NTk5JTI2dXRtX2FkX2lkJTNkODMwODIyNzgxNjc1NjMlMjZ1dG1fdGVybSUzZEFudGhyb3BpYyUyNTIwQ2xhdWRlJTI1MjBGYWJsZSUyNTIwNSUyNTIwbW9kZWwlMjZ1dG1fbWF0Y2h0eXBlJTNkcCUyNnV0bV9uZXR3b3JrJTNkbyUyNnV0bV9kZXZpY2UlM2RjJTI2dXRtX2RldmljZW1vZGVsJTNkJTI2dXRtX2NsaWNrJTNkNDU2NDU5Mzk1YjY1MWJjNmY2OTkzMzExMmE3MzljZWElMjZtc2Nsa2lkJTNkNDU2NDU5Mzk1YjY1MWJjNmY2OTkzMzExMmE3MzljZWE&rlid=456459395b651bc6f69933112a739cea">Ad Anthropic claude - Claude 4.7 Now Available</a></li>
<li><a href="https://harshp.com/research/publications/065-AI-Cards-Risk-Documentation-AI-Act">AI Cards: Towards an Applied Framework for Machine-Readable AI</a></li>
<li><a href="https://ai.meta.com/blog/system-cards-a-new-resource-for-understanding-how-ai-systems-work/">System Cards, a new resource for understanding how AI systems</a></li>

</ul>
</details>

**Discussion**: Community comments highlight mixed reactions: some users appreciate the improved performance and thoughtful design, while others express frustration that the model refuses to answer basic LLM-related questions. There is also discussion about the pricing model shift and the temporary free access period.

**Tags**: `#AI`, `#Model Release`, `#Safety`, `#Anthropic`

---

<a id="item-2"></a>
## [AI Epistemic Risks: 30-Expert Paper Examines Reasoning Threats](https://www.reddit.com/r/MachineLearning/comments/1u1ew6q/ai_epistemic_risks_emerging_mechanisms_evidence_r/) ⭐️ 9.0/10

A new paper authored by 30 experts systematically categorizes epistemic risks from AI, including persuasion, cognitive offloading, and feedback loops, and argues these threats could degrade society's ability to reason and maintain a healthy information environment. This paper is significant because it highlights underexplored risks that could undermine our collective reasoning and self-governance, potentially exacerbating other AI dangers. It calls for immediate action before society's capacity to respond is lost. The paper identifies specific mechanisms such as AI sycophancy—where models agree with users even when wrong—and cognitive offloading that may reduce long-term cognitive resilience. It warns of feedback loops that narrow epistemic diversity, potentially leading to homogenization or lock-in.

reddit · r/MachineLearning · /u/KellinPelrine · Jun 9, 19:18

**Background**: Epistemic risks refer to threats to our ability to acquire accurate knowledge and reason effectively. AI systems, especially large language models, increasingly mediate information access and decision-making, creating new pathways for manipulation, over-reliance, and systemic biases. Prior work has documented AI sycophancy and cognitive offloading as phenomena, but this paper is among the first to comprehensively synthesize their societal impacts.

<details><summary>References</summary>
<ul>
<li><a href="https://philarchive.org/rec/ZIGERI">Epistemic Risks in AI: Knowledge, Truth, and Uncertainty</a></li>
<li><a href="https://en.wikipedia.org/wiki/AI_sycophancy">AI sycophancy</a></li>
<li><a href="https://www.sciencedirect.com/science/article/pii/S1364661316300985">Cognitive Offloading - ScienceDirect</a></li>

</ul>
</details>

**Tags**: `#AI safety`, `#epistemic risks`, `#cognitive science`, `#information ecology`, `#AI ethics`

---

<a id="item-3"></a>
## [Microsoft open source tools hacked to steal AI developer passwords](https://techcrunch.com/2026/06/08/microsofts-open-source-tools-were-hacked-to-steal-passwords-of-ai-developers/) ⭐️ 8.0/10

Hackers compromised dozens of Microsoft's open source GitHub repositories, injecting password-stealing malware into code used for Azure and AI development tools like Claude Code and Gemini CLI. Microsoft has shut down the affected repositories and is investigating the breach. This supply chain attack directly targets AI developers, potentially exposing credentials that could lead to further breaches in enterprises relying on these tools. It underscores the escalating risks in the open source supply chain, especially for high-value AI infrastructure. The compromised repositories include Azure-related projects and tools for AI coding assistants such as Claude Code and Gemini's command line interface. Microsoft has not disclosed the number of affected customers, and the attack follows a related breach weeks earlier.

hackernews · raffael_de · Jun 9, 07:33 · [Discussion](https://news.ycombinator.com/item?id=48457830)

**Background**: A supply chain attack occurs when a threat actor compromises a third-party vendor or dependency to infiltrate downstream targets. In the open source ecosystem, attackers often inject malicious code into popular repositories, which then spreads to users who download or update the software. This incident is part of a broader trend of sophisticated attacks targeting AI development tools.

<details><summary>References</summary>
<ul>
<li><a href="https://techcrunch.com/2026/06/08/microsofts-open-source-tools-were-hacked-to-steal-passwords-of-ai-developers/">Microsoft's open source tools were hacked to steal ... - TechCrunch</a></li>
<li><a href="https://tech.yahoo.com/cybersecurity/articles/microsoft-open-source-tools-were-200344416.html">Microsoft's open source tools were hacked to steal passwords of AI ...</a></li>

</ul>
</details>

**Discussion**: Commenters debated the role of open source and Microsoft's responsibility, with some criticizing the loaded title as blaming open source while others pointed to classic access token mismanagement. Multiple users linked this attack to other recent supply chain incidents targeting AI agents, highlighting a growing pattern.

**Tags**: `#security`, `#supply chain attack`, `#open source`, `#AI`, `#Microsoft`

---

<a id="item-4"></a>
## [FCC Proposes ID Requirement for All Mobile Phone Purchases](https://www.404media.co/fcc-wants-to-kill-burner-phones-by-forcing-telecoms-to-get-all-customers-ids/) ⭐️ 8.0/10

The U.S. Federal Communications Commission (FCC) has proposed a new regulation that would require telecom carriers to collect government-issued identification from all customers purchasing mobile phones, effectively banning the sale of prepaid 'burner' phones without ID. If enacted, this regulation would eliminate anonymous mobile phone use in the U.S., impacting privacy for journalists, activists, and ordinary citizens who rely on burner phones to avoid surveillance or harassment. The proposal applies to both postpaid and prepaid mobile service activations, though the exact scope and implementation timeline have not been finalized. Critics argue it could disproportionately affect low-income individuals who rely on prepaid plans.

hackernews · berlianta · Jun 9, 15:21 · [Discussion](https://news.ycombinator.com/item?id=48462308)

**Background**: Burner phones are prepaid mobile phones that can be purchased without providing personal identification, offering anonymity to users. The FCC's rationale is likely to combat illegal activities such as drug trafficking and terrorism, but privacy advocates warn of government overreach and data security risks.

**Discussion**: Commenters expressed strong opposition, citing past telecom data breaches (e.g., AT&T) and pointing out that ID requirements already exist in other countries like Russia and the EU. Some provided a direct link to submit comments to the FCC, while others argued that individuals still have the choice to simply not use a phone.

**Tags**: `#FCC`, `#privacy`, `#regulation`, `#burner phones`, `#telecom`

---

<a id="item-5"></a>
## [Let's Encrypt bans certificates in US-sanctioned territories](https://letsencrypt.org/documents/LE-SA-v1.7-June-04-2026-diff.pdf) ⭐️ 8.0/10

Let's Encrypt has updated its subscriber agreement to prohibit the issuance and use of certificates in US-sanctioned territories, effective June 2026, contradicting its mission of universal HTTPS adoption. This policy restricts secure web access in regions like Iran and Russia, undermining internet security where it is most needed, and raises concerns about the reach of US export controls on encryption. The ban applies to territories subject to US sanctions, including Iran, Syria, and Cuba. The change is part of version 1.7 of the subscriber agreement, and any violation could lead to revocation of all certificates.

hackernews · piskov · Jun 8, 22:32 · [Discussion](https://news.ycombinator.com/item?id=48453275)

**Background**: Let's Encrypt is a non-profit certificate authority (CA) operated by the Internet Security Research Group (ISRG), a US-based organization. It provides free TLS certificates to enable HTTPS, aiming for a more secure web. As a US entity, it must comply with US export control laws, which restrict the export of encryption technologies to sanctioned countries.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Let's_Encrypt">Let's Encrypt</a></li>
<li><a href="https://letsencrypt.org/">Let's Encrypt</a></li>
<li><a href="https://en.wikipedia.org/wiki/Certificate_authority">Certificate authority</a></li>

</ul>
</details>

**Discussion**: Commenters criticized the move as contradictory to Let's Encrypt's mission, with some arguing it aids oppressive regimes by blocking encryption. Others noted the US legal constraints but questioned if Let's Encrypt could operate from outside the US to avoid such restrictions.

**Tags**: `#SSL/TLS`, `#internet censorship`, `#cybersecurity`, `#policy`, `#Let's Encrypt`

---

<a id="item-6"></a>
## [Recreating 1990s 3D Graphics with Software Rendering](https://staniks.github.io/articles/catlantean-3d-blog-1/) ⭐️ 7.0/10

A detailed blog post titled 'Making Graphics Like it's 1993' demonstrates recreating 1990s-style 3D graphics using software rendering and raycasting techniques. This article is significant as it revives interest in software rendering techniques, which are foundational to understanding 3D graphics history, and provides educational value for game developers and enthusiasts. The blog covers raycasting, palletized framebuffers, and even includes a Python script for generating gib animations, with code available for experimentation.

hackernews · sklopec · Jun 9, 10:46 · [Discussion](https://news.ycombinator.com/item?id=48459294)

**Background**: Software rendering performs all graphical calculations on the CPU without dedicated GPU hardware, which was common in early 3D games like Wolfenstein 3D and Doom. Raycasting is a simplified rendering technique that casts rays from the camera to generate a 2.5D perspective from a 2D map, enabling real-time performance on limited hardware.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Software_rendering">Software rendering - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Ray_casting">en.wikipedia.org › wiki › Ray_casting Ray casting - Wikipedia</a></li>
<li><a href="https://lodev.org/cgtutor/raycasting.html">lodev.org › cgtutor › raycasting Raycasting - Lode V</a></li>

</ul>
</details>

**Discussion**: Comments praise the article's depth and share additional tips, such as using light maps for dynamic lighting and noting the engine's similarity to Wolfenstein 3D rather than Doom's BSP engine. One reader provided a short SDL2 code snippet for efficient framebuffer display.

**Tags**: `#retro graphics`, `#software rendering`, `#game dev`, `#raycasting`

---

<a id="item-7"></a>
## [Apple Withholds AI Siri in EU After Exemption Denied](https://www.reuters.com/business/apple-failed-make-its-ai-tool-comply-eu-regulations-eu-commission-says-2026-06-09/) ⭐️ 7.0/10

Apple has decided not to release its AI-enhanced Siri in the European Union after the European Commission denied its request for an 18-month exemption from compliance with the EU AI Act. This decision underscores the tension between tech giants and EU digital regulations, potentially giving competitors an advantage in the AI assistant market and limiting EU consumers' access to new AI features. The EU AI Act, which entered into force on 1 August 2024, classifies AI systems by risk and imposes requirements on providers; Apple's request for exemption was likely based on the additional work needed to comply, but the EU did not grant it.

hackernews · flanged · Jun 9, 16:13 · [Discussion](https://news.ycombinator.com/item?id=48463024)

**Background**: The EU AI Act is a comprehensive regulation establishing a common legal framework for AI, covering most AI systems with differing obligations based on risk level. It entered into force in August 2024 and will be implemented gradually. Apple's AI-enhanced Siri would likely be classified as high-risk or general-purpose AI, requiring transparency and conformity assessments. The company sought an exemption to avoid these requirements, but the EU denied the request.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/EU_AI_Act">EU AI Act</a></li>

</ul>
</details>

**Discussion**: Comments show a split between those who see Apple's decision as a blame-shifting tactic and those who support Apple's position on privacy concerns. Some users worry about regulatory overreach, while others see it as an opportunity for European alternatives.

**Tags**: `#Apple`, `#EU`, `#AI`, `#regulation`, `#privacy`

---

<a id="item-8"></a>
## [Karpathy: AI Tools Boost Software Demand via Jevons Paradox](https://simonwillison.net/2026/Jun/9/andrej-karpathy/#atom-everything) ⭐️ 7.0/10

Andrej Karpathy tweeted that AI tools like Claude Fable 5 are increasing his demand for software, citing the Jevons paradox where efficiency gains lead to greater consumption. He described being able to instantly create bespoke applications, dashboards, and research tools. This insight reframes the narrative that AI will replace software jobs; instead, it suggests AI may spur even more software creation. For developers and businesses, it highlights an expanding landscape of personalized, low-cost software solutions. Karpathy specifically mentioned creating a hyper-specific wandb (Weights & Biases) for a project, auto-optimizing code, and running large research projects. Claude Fable 5 is Anthropic's most powerful public model, excelling at software engineering and vision tasks.

rss · Simon Willison · Jun 9, 19:03

**Background**: The Jevons paradox is an economic theory stating that as technology improves the efficiency of resource use, the overall consumption of that resource can increase rather than decrease. Weights & Biases (wandb) is a popular AI developer platform for tracking experiments, hyperparameters, and model performance. Karpathy's quote reflects a shift where AI not only automates tasks but also makes software creation accessible to anyone.

<details><summary>References</summary>
<ul>
<li><a href="https://www.anthropic.com/claude/fable">Claude Fable \ Anthropic</a></li>
<li><a href="https://en.wikipedia.org/wiki/Jevons_paradox">Jevons paradox - Wikipedia</a></li>
<li><a href="https://site.wandb.ai/">Weights & Biases : The AI developer platform</a></li>

</ul>
</details>

**Tags**: `#AI`, `#software development`, `#Jevons paradox`, `#generative AI`

---

<a id="item-9"></a>
## [Apple's WWDC 2026 Siri AI: Vision LLMs and Custom Gemini](https://simonwillison.net/2026/Jun/8/wwdc/#atom-everything) ⭐️ 7.0/10

Apple announced new Siri AI features at WWDC 2026, leveraging vision language models to extract information from the user's screen and a custom Gemini-derived model running on Private Cloud Compute. The Core AI library bridges PyTorch and Apple hardware, enabling developers to deploy models efficiently. This marks a significant shift in Apple's AI strategy, making Siri more capable without requiring app-specific code, and opening up Apple hardware for third-party AI models. The use of vision LLMs sidesteps integration complexities, potentially accelerating AI adoption on iOS. The custom Gemini model runs on Google Cloud with NVIDIA GPUs but within Apple's Private Cloud Compute for security. The Core AI PyTorch Extensions package allows converting PyTorch models to Core AI programs. iOS 27 Developer Beta includes these features but requires waitlist access.

rss · Simon Willison · Jun 8, 23:58

**Background**: Vision language models (VLMs) are AI systems that process both images and text, enabling tasks like screen understanding. Apple's Private Cloud Compute (PCC) is a secure cloud infrastructure for AI inference, originally on Apple silicon but now expanded to Google Cloud with NVIDIA hardware. The Core AI library provides developers with tools to run models on Apple's neural engine and GPUs.

<details><summary>References</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Vision-language_model">Vision-language model - Wikipedia</a></li>
<li><a href="https://9to5mac.com/2026/01/12/apples-new-google-gemini-deal-sounds-bigger-better-than-expected/">Apple ’s new Google Gemini deal sounds bigger, better than... - 9to5Mac</a></li>
<li><a href="https://security.apple.com/blog/expanding-pcc/">security.apple.com › blog › expanding-pcc Expanding Private Cloud Compute - Apple Security Research</a></li>

</ul>
</details>

**Tags**: `#Apple`, `#Siri`, `#AI`, `#WWDC`, `#Vision LLMs`

---

<a id="item-10"></a>
## [Next Breakthrough in ASR: Scale vs New Architectures](https://www.reddit.com/r/MachineLearning/comments/1u1cklt/what_will_be_the_next_breakthrough_in_asr_d/) ⭐️ 7.0/10

A Reddit discussion highlights that Nvidia Parakeet v3 outperforms Whisper-large-v3 despite smaller data and model size, questioning the necessity of massive scale in ASR. This debate influences ASR research directions, potentially shifting focus from scaling up data to developing more efficient architectures like Token-Duration-Transducers. Parakeet v3 (600M params) was trained on 660k hours of labeled data, while Whisper-large-v3 (1.5B params) used 5M hours of weakly supervised data, yet Parakeet achieves lower WER on English benchmarks.

reddit · r/MachineLearning · /u/ComprehensiveTop3297 · Jun 9, 17:57

**Background**: Automatic Speech Recognition (ASR) transcribes audio to text. Recent models like Whisper use large-scale weak supervision, while architectures like Token-Duration Transducer (TDT) jointly predict tokens and durations for faster decoding. Self-supervised methods (e.g., WavLM) learn from unlabeled data but are less dominant in ASR now.

<details><summary>References</summary>
<ul>
<li><a href="https://huggingface.co/nvidia/parakeet-tdt-0.6b-v3">nvidia / parakeet -tdt-0.6b- v 3 · Hugging Face</a></li>
<li><a href="https://arxiv.org/abs/2304.06795">arxiv.org › abs › 2304 Efficient Sequence Transduction by Jointly Predicting Tokens and...</a></li>
<li><a href="https://www.speechmatics.com/company/articles-and-news/token-duration-transducer-tdt-explained">www.speechmatics.com › company › articles-and-news Token Duration Transducer (TDT) Explained: How Frame-Skipping...</a></li>

</ul>
</details>

**Tags**: `#ASR`, `#speech recognition`, `#deep learning`, `#research`

---

<a id="item-11"></a>
## [Are privacy-preserving ML techniques used in production?](https://www.reddit.com/r/MachineLearning/comments/1u12bpa/are_privacypreserving_techniques_actually_being/) ⭐️ 6.0/10

A Reddit discussion asks whether privacy-preserving ML techniques like differential privacy, federated learning, and on-device inference are actually deployed in production systems, highlighting engineering challenges and trade-offs. Understanding real-world adoption is crucial for practitioners and researchers to focus efforts on overcoming deployment barriers, ensuring that privacy guarantees translate to practical systems. The discussion centers on differential privacy, federated learning, and on-device inference. Users inquire about impact on model performance, infrastructure costs, and successful use cases versus cases where trade-offs hindered adoption.

reddit · r/MachineLearning · /u/Electrical_Mine1912 · Jun 9, 11:30

**Background**: Differential privacy adds noise to data or model outputs to protect individual privacy while allowing aggregate analysis. Federated learning trains models across decentralized devices without centralizing raw data. On-device inference runs models locally on user devices, avoiding data transmission to servers. These techniques are active research areas but face engineering challenges in production.

<details><summary>References</summary>
<ul>
<li><a href="https://www.nist.gov/blogs/cybersecurity-insights/how-deploy-machine-learning-differential-privacy">How to deploy machine learning with differential privacy | NIST</a></li>
<li><a href="https://flower.ai/docs/framework/tutorial-series-what-is-federated-learning.html">What is Federated Learning? - Flower Framework</a></li>
<li><a href="https://iterate.ai/ai-glossary/on-device-inference">iterate.ai › ai-glossary › on - device - inference On-Device Inference - iterate.ai</a></li>

</ul>
</details>

**Tags**: `#privacy-preserving ML`, `#differential privacy`, `#federated learning`, `#on-device inference`, `#production ML`

---