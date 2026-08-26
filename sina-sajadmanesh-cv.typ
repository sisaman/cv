// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Sina Sajadmanesh",
  title: "Sina Sajadmanesh - CV",
  footer: context { [Sina Sajadmanesh - Page #str(here().page()) of #str(counter(page).final().first())] },
  top-note: [ #emph[Last updated in Aug 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "a4",
  page-top-margin: 2cm,
  page-bottom-margin: 2cm,
  page-left-margin: 2cm,
  page-right-margin: 2cm,
  page-show-footer: false,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(3, 28, 48),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "left",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "XCharter",
  typography-font-family-name: "XCharter",
  typography-font-family-headline: "XCharter",
  typography-font-family-connections: "XCharter",
  typography-font-family-section-titles: "XCharter",
  typography-font-size-body: 10pt,
  typography-font-size-name: 25pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.2em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: true,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 8pt,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.7cm,
  section-titles-space-below: 0.5cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 1em,
  sections-space-between-regular-entries: 1em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: true,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.08cm,
  entries-highlights-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-nested-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-space-left: 0.5em,
  entries-highlights-space-above: 0.75em,
  entries-highlights-space-between-items: 0em,
  entries-highlights-space-between-bullet-and-text: 0.3em,
  date: datetime(
    year: 2026,
    month: 8,
    day: 26,
  ),
)


= Sina Sajadmanesh

#connections(
  [#connection-with-icon("location-dot")[Zurich, CH]],
  [#link("mailto:sina.sajadmanesh@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[sina.sajadmanesh\@gmail.com]]],
  [#link("https://sisaman.github.io/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[sisaman.github.io]]],
  [#link("https://linkedin.com/in/sajadmanesh", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[sajadmanesh]]],
  [#link("https://github.com/sisaman", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[sisaman]]],
)


== Summary

Senior AI Engineer specializing in multimodal foundation models and video understanding, with a track record of leading end-to-end R&D and translating research into efficient, production-ready ML systems across heterogeneous hardware.

== Education

#regular-entry(
  [
    #strong[Swiss Federal Institute of Technology (EPFL)], PhD in Electrical Engineering

  ],
  [
    Aug 2023

  ],
  main-column-second-row: [
  ],
)

#regular-entry(
  [
    #strong[Sharif University of Technology], MSc in Information Technology Engineering

  ],
  [
    Sept 2016

  ],
  main-column-second-row: [
  ],
)

#regular-entry(
  [
    #strong[University of Isfahan], BSc in Computer Software Engineering

  ],
  [
    Feb 2014

  ],
  main-column-second-row: [
  ],
)

== Experience

#regular-entry(
  [
    #strong[Sony AI], Senior AI Engineer -- Zurich, Switzerland

  ],
  [
    Jan 2026 – present

  ],
  main-column-second-row: [
    - Leading end-to-end R&D of a multimodal video understanding system using natural-language instructions to flexibly segment, retrieve, and annotate long-form video

    - Deployed video-language action recognition models on Apple Silicon for Sony's Remote Camera Tool, building an end-to-end Swift\/Core ML pipeline with up to 53× faster compute and 19× lower peak memory

    - Developed compact vision-language models for image\/video understanding and localization, achieving competitive accuracy at lower computational cost

    - Built agentic model-optimization workflows and a modular ML acceleration framework for deploying LLMs\/VLMs and CV models across NVIDIA GPUs, Qualcomm NPUs, and Apple Silicon

  ],
)

#regular-entry(
  [
    #strong[Sony AI], AI Engineer -- Zurich, Switzerland

  ],
  [
    Oct 2023 – Dec 2025

  ],
  main-column-second-row: [
    - Developed a geometric optimization method for low-rank adaptation, resulting in a NeurIPS 2025 Spotlight paper

    - Led optimization of the Argus VFM inference stack across heterogeneous hardware, achieving up to 61× speedup across 17 vision tasks

    - Led expansion of Argus into a unified 17-task vision foundation model, integrating 7 tasks including depth estimation, surface normals, super-resolution, and denoising

    - Architected a distributed multi-task learning platform unifying OpenMMLab libraries and powering training of Sony’s Argus VFM

  ],
)

#regular-entry(
  [
    #strong[Idiap Research Institute], Research Assistant -- Martigny, Switzerland

  ],
  [
    May 2019 – Aug 2023

  ],
  main-column-second-row: [
    - Developed privacy-preserving machine learning methods for graph neural networks, with a focus on differential privacy

    - Published 3 papers at top-tier venues including CCS, USENIX Security, and WSDM, accumulating 340+ citations

    - Released 6 open-source research projects with 130+ GitHub stars and delivered 7 invited talks at leading universities and research institutions

    - Taught a short course on Trustworthy Machine Learning at the Artificial Intelligence Doctoral Academy

  ],
)

#regular-entry(
  [
    #strong[Brave Software], Research Intern -- Remote

  ],
  [
    Mar 2022 – May 2022

  ],
  main-column-second-row: [
    - Developed a novel privacy-preserving federated learning framework for neural bandit models under client heterogeneity using PyTorch, Flower, Dask, and Tensorflow-Lite

  ],
)

== Skills and Expertise

#strong[Foundation & Multimodal Models:] Vision-Language Models · Video Understanding · ViT · CLIP · LLaVA · Large Language Models (LLaMA, GPT, Qwen) · PEFT (LoRA) · Self-Supervised Learning (MAE, DINO)

#strong[Model Optimization & Deployment:] Core ML · MLX · TensorRT · ONNX · Qualcomm QNN \/ QAIRT · Quantization · Graph Optimization · Performance Profiling · Heterogeneous Hardware Deployment

#strong[Machine Learning Systems:] PyTorch · Hugging Face (Transformers, PEFT, Accelerate, Datasets) · OpenMMLab (MMCV, MMEngine, MMDetection) · Distributed Training (DDP, FSDP)

#strong[Agentic AI & LLM Systems:] LangChain · LangGraph · MCP · Tool Calling · RAG · Multi-Agent Systems · Workflow Orchestration

#strong[Engineering:] Python · C++ · Bash · SQL · Docker · GitHub Actions . UV . Ruff

== Community and Professional Service

#strong[Invited Speaker:] Imperial College London (2023, 2020), University of Illinois at Chicago (2022), L3S Research Center (2022), GNN User Group Meetup (2021), Twitter ML Seminar (2021)

#strong[Organizing \/ Program Committee:] #link("https://private-fair-ai.github.io/")[Privacy and Fairness in AI for Health]  (2023), #link("https://ppai-workshop.github.io")[PPAI] (2024), #link("https://wisec2023.surrey.ac.uk/wiseml2023/")[WiseML] (2023), #link("https://pair2struct-workshop.github.io")[PAIR2Struct] (2022), #link("https://dp-ml.github.io/2021-workshop-ICLR")[DPML] (2021)

#strong[Reviewer:] #link("https://neurips.cc")[NeurIPS] (2026, 2024), #link("https://cvpr.thecvf.com/")[CVPR] (2026), #link("https://ieeexplore.ieee.org/xpl/RecentIssue.jsp?punumber=10206")[TIFS] (2025), #link("https://dl.acm.org/journal/imwut")[IMWUT] (2024), #link("https://ieeexplore.ieee.org/xpl/aboutJournal.jsp?punumber=8858")[TDSC] (2023), #link("https://logconference.org")[LoG] (2023, 2022), #link("http://aistats.org/aistats2023")[AISTATS] (2023), #link("https://www.journals.elsevier.com/artificial-intelligence")[AIJ] (2022), #link("https://ieeexplore.ieee.org/xpl/RecentIssue.jsp?punumber=6687317")[TBD] (2021), #link("https://dl.acm.org/journal/tist")[TIST] (2020), #link("https://www.springer.com/journal/13278")[SNAM] (2020), #link("https://www.springer.com/journal/11280")[WWWJ] (2018)

== Selected Publications

#regular-entry(
  [
    #strong[#link("https://arxiv.org/abs/2510.01938")[StelLA: Subspace Learning in Low-rank Adaptation using Stiefel Manifold]]

  ],
  [
    Dec 2025

  ],
  main-column-second-row: [
    Zhizhong Li, Sina Sajadmanesh, Jingtao Li, Lingjuan Lyu

    NeurIPS 2025 🌟 Spotlight (top 3\%)

  ],
)

#regular-entry(
  [
    #strong[#link("https://openaccess.thecvf.com/content/CVPR2025/papers/Zhuang_Argus_A_Compact_and_Versatile_Foundation_Model_for_Vision_CVPR_2025_paper.pdf")[Argus: A Compact and Versatile Foundation Model for Vision]]

  ],
  [
    June 2025

  ],
  main-column-second-row: [
    Weiming Zhuang, Chen Chen, Zhizhong Li, Sina Sajadmanesh, et al.

    CVPR 2025

  ],
)

#regular-entry(
  [
    #strong[#link("https://arxiv.org/pdf/2304.08928.pdf")[ProGAP: Progressive Graph Neural Networks with Differential Privacy Guarantees]]

  ],
  [
    Mar 2024

  ],
  main-column-second-row: [
    Sina Sajadmanesh, Daniel Gatica-Perez

    WSDM 2024

  ],
)

#regular-entry(
  [
    #strong[#link("https://arxiv.org/pdf/2203.00949.pdf")[GAP: Differentially Private Graph Neural Networks with Aggregation Perturbation]]

  ],
  [
    Aug 2023

  ],
  main-column-second-row: [
    Sina Sajadmanesh, Ali Shahin Shamsabadi, Aurélien Bellet, Daniel Gatica-Perez

    USENIX Security 2023

  ],
)

#regular-entry(
  [
    #strong[#link("https://arxiv.org/pdf/2006.05535")[Locally Private Graph Neural Networks]]

  ],
  [
    Nov 2021

  ],
  main-column-second-row: [
    Sina Sajadmanesh, Daniel Gatica-Perez

    CCS 2021

  ],
)

#regular-entry(
  [
    #strong[#link("https://arxiv.org/pdf/1703.02952")[A Hybrid Deep Learning Architecture for Privacy-Preserving Mobile Analytics]]

  ],
  [
    May 2020

  ],
  main-column-second-row: [
    Seyed Ali Osia, Ali Shahin Shamsabadi, Sina Sajadmanesh, et al.

    IEEE Internet of Things Journal

  ],
)

#regular-entry(
  [
    #strong[#link("https://arxiv.org/pdf/1610.08469")[Kissing Cuisines: Exploring Worldwide Culinary Habits on the Web]]

  ],
  [
    Apr 2017

  ],
  main-column-second-row: [
    Sina Sajadmanesh, Sina Jafarzadeh, Seyed Ali Ossia, et al.

    WWW 2017

  ],
)
