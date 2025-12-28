// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.1.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Sina Sajadmanesh",
  footer: context { [Sina Sajadmanesh - Page #str(here().page()) of #str(counter(page).final().first())] },
  top-note: [ #emph[Last updated in Dec 2025] ],
  locale-catalog-language: "en",
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
  sections-space-between-regular-entries: 0.5em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.08cm,
  entries-highlights-bullet:  "○" ,
  entries-highlights-nested-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-space-left: 0.5em,
  entries-highlights-space-above: 0.5em,
  entries-highlights-space-between-items: 0.1em,
  entries-highlights-space-between-bullet-and-text: 0.3em,
  date: datetime(
    year: 2025,
    month: 12,
    day: 28,
  ),
)


= Sina Sajadmanesh

#connections(
  [#connection-with-icon("location-dot")[Bern, CH]],
  [#link("mailto:sina.sajadmanesh@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[sina.sajadmanesh\@gmail.com]]],
  [#link("https://sisaman.github.io/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[sisaman.github.io]]],
  [#link("https://linkedin.com/in/sajadmanesh", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[sajadmanesh]]],
  [#link("https://github.com/sisaman", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[sisaman]]],
)


== Education

#education-entry(
  [
    #strong[Swiss Federal Institute of Technology (EPFL)], PhD in Electrical Engineering

  ],
  [
    Aug 2023

  ],
  main-column-second-row: [
  ],
)

#education-entry(
  [
    #strong[Sharif University of Technology], MSc in Information Technology Engineering

  ],
  [
    Sept 2016

  ],
  main-column-second-row: [
  ],
)

#education-entry(
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
    Dec 2025 – present

  ],
  main-column-second-row: [
    - Driving model optimization and deployment across heterogeneous hardware backends

    - Owning APIs and infrastructure for large-scale vision foundation model inference and deployment

    - Developing cutting-edge vision-language models for visual perception and understanding

  ],
)

#regular-entry(
  [
    #strong[Sony AI], AI Engineer -- Zurich, Switzerland

  ],
  [
    Oct 2023 – present

  ],
  main-column-second-row: [
    - Working on vision and multimodal foundation models

    - Co-developed a unified vision-language model supporting both image understanding and generation

    - Implemented APIs for vision foundation model inference and deployment

    - Developed various computer vision models, including object detection, depth estimation, surface normal estimation, super-resolution, denoising, deraining, and OCR

    - Designed and implemented a unique multi-task learning framework based on OpenMMLab libraries and PyTorch, supporting various vision tasks and architectures with mixed-precision and distributed training

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

    - 3 published papers in top-tier conferences (CCS, USENIX Security, and WSDM) with 255+ citations

    - 7 invited talks at top universities and research institutions, including Imperial College, UIC, and Twitter

    - 6 open-source projects with 110+ stars on GitHub

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

    - 4 published papers in top-tier venues (WWW, TKDD, IoTJ, ASONAM) with 470+ citations

    - 5+ press coverages in prominent media outlets, including #link("https://www.technologyreview.com/s/602790/how-data-mining-reveals-the-worlds-healthiest-cuisines/")[MIT Technology Review], #link("http://mashable.france24.com/styles/20161115-algorithme-cuisines-recherche-nutrition-ingredients")[France 24], and #link("https://www.indy100.com/article/healthy-diverse-top-healthiest-countries-cuisine-food-in-the-world-list-7412171")[The Independent]

    - 2 open-source projects with 20+ stars on GitHub

    - 1 semester course taught on \"Fundamentals of Programming with Python\"

  ],
)

== Skills and Expertise

#strong[Foundation & Generative Models:] Vision & Multimodal Models (ViT, CLIP, LLaVA) · Large Language Models (LLaMA, GPT, Qwen) · Parameter-Efficient Fine-Tuning (LoRA) · Representation Learning (MAE, DINO)

#strong[Machine Learning Frameworks:] PyTorch · Hugging Face (Transformers, PEFT, Accelerate, Datasets, TIMM) · OpenMMLabs (MMCV, MMEngine, MMDetection) . Experiment Management (W&B, Neptune)

#strong[System & Infrastructure:] Distributed Training (DDP, FSDP) · Mixed Precision (AMP, BF16) · Multi-Node GPU Clusters (Slurm, BeeGFS) · Performance Profiling & Optimization (ONNX, TensorRT)

#strong[Engineering & Tooling:] Python (expert) · Bash · C++ · LaTeX. SQL. Data Processing (torchvision, NumPy, Pandas) · Environment & Packaging (uv, pyproject.toml, ruff) · DevOps & CI\/CD (Docker, GitHub Actions)

== Community and Professional Service

#strong[Invited Speaker:] Imperial College London (2023, 2020), University of Illinois at Chicago (2022), L3S Research Center (2022), Graph Neural Networks User Group Meetup (2021), Twitter Machine Learning Seminar (2021)

#strong[Organizing Committee:] #link("https://private-fair-ai.github.io/")[Privacy and Fairness in AI for Health]  (2023)

#strong[Program Committee:] #link("https://ppai-workshop.github.io")[PPAI] (2024), #link("https://wisec2023.surrey.ac.uk/wiseml2023/")[WiseML] (2023), #link("https://pair2struct-workshop.github.io")[PAIR2Struct] (2022), #link("https://dp-ml.github.io/2021-workshop-ICLR")[DPML] (2021)

#strong[Reviewer:] #link("https://ieeexplore.ieee.org/xpl/RecentIssue.jsp?punumber=10206")[TIFS] (2025), #link("https://neurips.cc")[NeurIPS] (2024), #link("https://dl.acm.org/journal/imwut")[IMWUT] (2024), #link("https://ieeexplore.ieee.org/xpl/aboutJournal.jsp?punumber=8858")[TDSC] (2023), #link("https://logconference.org")[LoG] (2023, 2022), #link("http://aistats.org/aistats2023")[AISTATS] (2023), #link("https://www.journals.elsevier.com/artificial-intelligence")[AIJ] (2022), #link("https://ieeexplore.ieee.org/xpl/RecentIssue.jsp?punumber=6687317")[TBD] (2021), #link("https://dl.acm.org/journal/tist")[TIST] (2020), #link("https://www.springer.com/journal/13278")[SNAM] (2020), #link("https://www.springer.com/journal/11280")[WWWJ] (2018)

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

    Annual Conference on Neural Information Processing Systems (#strong[NeurIPS]) 🌟 Spotlight (top 3\%)

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

    IEEE\/CVF Conference on Computer Vision and Pattern Recognition (#strong[CVPR])

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

    ACM International Conference on Web Search and Data Mining (#strong[WSDM])

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

    USENIX Security Symposium (#strong[USENIX Security])

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

    ACM Conference on Computer and Communications Security (#strong[CCS])

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

    IEEE Internet of Things Journal (#strong[IoTJ])

  ],
)

#regular-entry(
  [
    #strong[#link("https://dl.acm.org/authorize?N680282")[Continuous-Time Relationship Prediction in Dynamic Heterogeneous Information Networks]]

  ],
  [
    Aug 2019

  ],
  main-column-second-row: [
    Sina Sajadmanesh, Sogol Bazargani, Jiawei Zhang, Hamid R. Rabiee

    ACM Transactions on Knowledge Discovery from Data (#strong[TKDD])

  ],
)

#regular-entry(
  [
    #strong[#link("https://dl.acm.org/citation.cfm?id=3055137")[Kissing Cuisines: Exploring Worldwide Culinary Habits on the Web]]

  ],
  [
    Apr 2017

  ],
  main-column-second-row: [
    Sina Sajadmanesh, Sina Jafarzadeh, Seyed Ali Ossia, et al.

    International World Wide Web Conference Companion (#strong[WWW])

  ],
)
