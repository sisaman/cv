// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Sina Sajadmanesh",
  title: "Sina Sajadmanesh - CV",
  footer: context { [Sina Sajadmanesh - Page #str(here().page()) of #str(counter(page).final().first())] },
  top-note: [ #emph[Last updated in May 2026] ],
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
    month: 5,
    day: 27,
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

Senior AI Engineer specializing in multimodal foundation models, with a strong focus on translating research into high-performance, production-ready systems. Proven track record in building scalable model training pipelines and optimizing inference across heterogeneous hardware.

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
    - Optimized and deployed ML models on Qualcomm edge devices using QAIRT \/ SNPE \/ QNN, extending official support to modern LLMs and VLMs

    - Architected and maintained a modular ML acceleration and deployment framework supporting diverse hardware targets (Nvidia GPUs, Qualcomm NPUs, Apple Silicon)

    - Developed compact vision-language models supporting image\/video understanding and localization tasks, achieving competitive performance with reduced computational requirements

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
    - Designed a modular and flexible geometric optimization algorithm, enabling NeurIPS'25 spotlight paper

    - Led end-to-end optimization of Sony's Argus VFM inference stack, resulting in up to 61× speedup across 17 vision tasks

    - Developed 7 computer vision models, including object detection, depth estimation, super-resolution, and OCR, achieving SOTA or competitive results

    - Architected and implemented a foundational MTL framework for Sony's Argus VFM, supporting 17 vision tasks, enabling CVPR'25 publication

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
    - Worked on differentially private machine learning with graph neural networks

    - 3 papers in top-tier conferences (CCS, USENIX Security, and WSDM) with 340+ citations

    - 7 invited talks at top universities and research institutions, including Imperial College, UIC, and Twitter

    - 6 open-source projects with 130+ stars on GitHub

    - 1 short course taught on \"Trustworthy Machine Learning\" at #link("https://www.i-aida.org/course/an-introduction-to-trustworthy-machine-learning/")[Artificial Intelligence Doctoral Academy]

    - Finalist in #link("https://www.credential.net/5f54daed-b77f-4dd4-81c6-421ad7a2c2fb")[CSAW Applied Research Competition] for the best paper award in computer security in Europe

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

#regular-entry(
  [
    #strong[Sharif University of Technology], Research Assistant -- Tehran, Iran

  ],
  [
    Nov 2014 – May 2019

  ],
  main-column-second-row: [
    - Worked on privacy-preserving machine learning, web data science, and information network analysis

    - 4 papers in top-tier venues (WWW, TKDD, IoTJ, ASONAM) with 490+ citations

    - 5+ press coverages in prominent media outlets, including #link("https://www.technologyreview.com/s/602790/how-data-mining-reveals-the-worlds-healthiest-cuisines/")[MIT Technology Review], #link("http://mashable.france24.com/styles/20161115-algorithme-cuisines-recherche-nutrition-ingredients")[France 24], and #link("https://www.indy100.com/article/healthy-diverse-top-healthiest-countries-cuisine-food-in-the-world-list-7412171")[The Independent]

    - 2 open-source projects with 20+ stars on GitHub

    - 1 semester course taught on \"Fundamentals of Programming with Python\"

  ],
)

== Skills and Expertise

#strong[Foundation & Generative Models:] Vision & Multimodal Models (ViT, CLIP, LLaVA) · Large Language Models (LLaMA, GPT, Qwen) · Parameter-Efficient Fine-Tuning (LoRA) · Self-Supervised Learning (MAE, DINO)

#strong[Model Optimization & Deployment:] TensorRT · ONNX · Qualcomm QNN \/ SNPE \/ QAIRT · Apple CoreML \/ MLX · Optimum · Quantization · Graph Optimization · Performance Profiling

#strong[Machine Learning Frameworks:] PyTorch · Hugging Face (Transformers, PEFT, Accelerate, Datasets) · OpenMMLab (MMCV, MMEngine, MMDetection)

#strong[Engineering & Tooling:] Python · C++ · Bash · SQL · Data Processing (NumPy, Pandas, torchvision) · Environment & Packaging (uv, ruff) · CI\/CD (Docker, GitHub Actions)

== Community and Professional Service

#strong[Invited Speaker:] Imperial College London (2023, 2020), University of Illinois at Chicago (2022), L3S Research Center (2022), GNN User Group Meetup (2021), Twitter ML Seminar (2021)

#strong[Organizing \/ Program Committee:] #link("https://private-fair-ai.github.io/")[Privacy and Fairness in AI for Health]  (2023), #link("https://ppai-workshop.github.io")[PPAI] (2024), #link("https://wisec2023.surrey.ac.uk/wiseml2023/")[WiseML] (2023), #link("https://pair2struct-workshop.github.io")[PAIR2Struct] (2022), #link("https://dp-ml.github.io/2021-workshop-ICLR")[DPML] (2021)

#strong[Reviewer:] #link("https://cvpr.thecvf.com/")[CVPR] (2026), #link("https://ieeexplore.ieee.org/xpl/RecentIssue.jsp?punumber=10206")[TIFS] (2025), #link("https://neurips.cc")[NeurIPS] (2024), #link("https://dl.acm.org/journal/imwut")[IMWUT] (2024), #link("https://ieeexplore.ieee.org/xpl/aboutJournal.jsp?punumber=8858")[TDSC] (2023), #link("https://logconference.org")[LoG] (2023, 2022), #link("http://aistats.org/aistats2023")[AISTATS] (2023), #link("https://www.journals.elsevier.com/artificial-intelligence")[AIJ] (2022), #link("https://ieeexplore.ieee.org/xpl/RecentIssue.jsp?punumber=6687317")[TBD] (2021), #link("https://dl.acm.org/journal/tist")[TIST] (2020), #link("https://www.springer.com/journal/13278")[SNAM] (2020), #link("https://www.springer.com/journal/11280")[WWWJ] (2018)

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
    #strong[#link("https://openaccess.thecvf.com/content/CVPR2025/html/Zhuang_Argus_A_Compact_and_Versatile_Foundation_Model_for_Vision_CVPR_2025_paper.html")[Argus: A Compact and Versatile Foundation Model for Vision]]

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
    #strong[#link("https://dl.acm.org/doi/10.1145/3616855.3635761")[ProGAP: Progressive Graph Neural Networks with Differential Privacy Guarantees]]

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
    #strong[#link("https://www.usenix.org/conference/usenixsecurity23/presentation/sajadmanesh")[GAP: Differentially Private Graph Neural Networks with Aggregation Perturbation]]

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
    #strong[#link("https://dl.acm.org/doi/abs/10.1145/3460120.3484565")[Locally Private Graph Neural Networks]]

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
    #strong[#link("https://ieeexplore.ieee.org/document/8962332")[A Hybrid Deep Learning Architecture for Privacy-Preserving Mobile Analytics]]

  ],
  [
    May 2020

  ],
  main-column-second-row: [
    Seyed Ali Osia, Ali Shahin Shamsabadi, Sina Sajadmanesh, et al.

    IEEE Internet of Things Journal

  ],
)
