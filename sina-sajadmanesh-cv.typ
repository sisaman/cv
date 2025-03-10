
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "Sina Sajadmanesh"
#let locale-catalog-page-numbering-style = context { "Sina Sajadmanesh - Page " + str(here().page()) + " of " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Last updated in Mar 2025"
#let locale-catalog-language = "en"
#let design-page-size = "a4"
#let design-section-titles-font-size = 1.2em
#let design-colors-text = rgb(0, 0, 0)
#let design-colors-section-titles = rgb(0, 0, 0)
#let design-colors-last-updated-date-and-page-numbering = rgb(128, 128, 128)
#let design-colors-name = rgb(0, 0, 0)
#let design-colors-connections = rgb(0, 0, 0)
#let design-colors-links = rgb(3, 28, 48)
#let design-section-titles-font-family = "XCharter"
#let design-section-titles-bold = true
#let design-section-titles-line-thickness = 0.5pt
#let design-section-titles-font-size = 1.2em
#let design-section-titles-type = "with-parial-line"
#let design-section-titles-vertical-space-above = 0.55cm
#let design-section-titles-vertical-space-below = 0.3cm
#let design-section-titles-small-caps = false
#let design-links-use-external-link-icon = true
#let design-text-font-size = 10pt
#let design-text-leading = 0.6em
#let design-text-font-family = "XCharter"
#let design-text-alignment = "left"
#let design-text-date-and-location-column-alignment = right
#let design-header-photo-width = 3.5cm
#let design-header-use-icons-for-connections = true
#let design-header-name-font-family = "XCharter"
#let design-header-name-font-size = 25pt
#let design-header-name-bold = false
#let design-header-connections-font-family = "XCharter"
#let design-header-vertical-space-between-name-and-connections = 0.7cm
#let design-header-vertical-space-between-connections-and-first-section = 0.7cm
#let design-header-use-icons-for-connections = true
#let design-header-horizontal-space-between-connections = 8pt
#let design-header-separator-between-connections = ""
#let design-header-alignment = center
#let design-highlights-summary-left-margin = 0cm
#let design-highlights-bullet = "•"
#let design-highlights-top-margin = 0.25cm
#let design-highlights-left-margin = 0cm
#let design-highlights-vertical-space-between-highlights = 0.25cm
#let design-highlights-horizontal-space-between-bullet-and-highlights = 0.3em
#let design-entries-vertical-space-between-entries = 1.5em
#let design-entries-date-and-location-width = 4.15cm
#let design-entries-allow-page-break-in-entries = true
#let design-entries-horizontal-space-between-columns = 0.1cm
#let design-entries-left-and-right-margin = 0cm
#let design-page-top-margin = 2cm
#let design-page-bottom-margin = 2cm
#let design-page-left-margin = 1.8cm
#let design-page-right-margin = 1.8cm
#let design-page-show-last-updated-date = true
#let design-page-show-page-numbering = true
#let design-links-underline = false
#let design-entry-types-education-entry-degree-column-width = 1cm
#let date = datetime.today()

// Metadata:
#set document(author: name, title: name + "'s CV", date: date)

// Page settings:
#set page(
  margin: (
    top: design-page-top-margin,
    bottom: design-page-bottom-margin,
    left: design-page-left-margin,
    right: design-page-right-margin,
  ),
  paper: design-page-size,
  footer: if design-page-show-page-numbering {
    text(
      fill: design-colors-last-updated-date-and-page-numbering,
      align(center, [_#locale-catalog-page-numbering-style _]),
      size: 0.9em,
    )
  } else {
    none
  },
  footer-descent: 0% - 0.3em + design-page-bottom-margin / 2,
)
// Text settings:
#let justify
#let hyphenate
#if design-text-alignment == "justified" {
  justify = true
  hyphenate = true
} else if design-text-alignment == "left" {
  justify = false
  hyphenate = false
} else if design-text-alignment == "justified-with-no-hyphenation" {
  justify = true
  hyphenate = false
}
#set text(
  font: design-text-font-family,
  size: design-text-font-size,
  lang: locale-catalog-language,
  hyphenate: hyphenate,
  fill: design-colors-text,
  // Disable ligatures for better ATS compatibility:
  ligatures: true,
)
#set par(
  spacing: 0pt,
  leading: design-text-leading,
  justify: justify,
)
#set enum(
  spacing: design-entries-vertical-space-between-entries,
)

// Highlights settings:
#let highlights(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: design-highlights-vertical-space-between-highlights,
    indent: design-highlights-left-margin,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#show list: set list(
  marker: design-highlights-bullet,
  spacing: 0pt,
  indent: 0pt,
  body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
)

// Entry utilities:
#let three-col(
  left-column-width: 1fr,
  middle-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (auto, auto, auto),
) = [
  #block(
    grid(
      columns: (left-column-width, middle-column-width, right-column-width),
      column-gutter: design-entries-horizontal-space-between-columns,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #middle-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

#let two-col(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, auto),
  column-gutter: design-entries-horizontal-space-between-columns,
) = [
  #block(
    grid(
      columns: (left-column-width, right-column-width),
      column-gutter: column-gutter,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

// Main heading settings:
#let header-font-weight
#if design-header-name-bold {
  header-font-weight = 700
} else {
  header-font-weight = 400
}
#show heading.where(level: 1): it => [
  #set par(spacing: 0pt)
  #set align(design-header-alignment)
  #set text(
    font: design-header-name-font-family,
    weight: header-font-weight,
    size: design-header-name-font-size,
    fill: design-colors-name,
  )
  #it.body
  // Vertical space after the name
  #v(design-header-vertical-space-between-name-and-connections)
]

#let section-title-font-weight
#if design-section-titles-bold {
  section-title-font-weight = 700
} else {
  section-title-font-weight = 400
}

#show heading.where(level: 2): it => [
  #set align(left)
  #set text(size: (1em / 1.2)) // reset
  #set text(
    font: design-section-titles-font-family,
    size: (design-section-titles-font-size),
    weight: section-title-font-weight,
    fill: design-colors-section-titles,
  )
  #let section-title = (
    if design-section-titles-small-caps [
      #smallcaps(it.body)
    ] else [
      #it.body
    ]
  )
  // Vertical space above the section title
  #v(design-section-titles-vertical-space-above, weak: true)
  #block(
    breakable: false,
    width: 100%,
    [
      #if design-section-titles-type == "moderncv" [
        #two-col(
          alignments: (right, left),
          left-column-width: design-entries-date-and-location-width,
          right-column-width: 1fr,
          left-content: [
            #align(horizon, box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles))
          ],
          right-content: [
            #section-title
          ]
        )

      ] else [
        #box(
          [
            #section-title
            #if design-section-titles-type == "with-parial-line" [
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ] else if design-section-titles-type == "with-full-line" [

              #v(design-text-font-size * 0.4)
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ]
          ]
        )
      ]
     ] + v(1em),
  )
  #v(-1em)
  // Vertical space after the section title
  #v(design-section-titles-vertical-space-below - 0.5em)
]

// Links:
#let original-link = link
#let link(url, body) = {
  body = [#if design-links-underline [#underline(body)] else [#body]]
  body = [#if design-links-use-external-link-icon [#body#h(design-text-font-size/4)#box(
        fa-icon("external-link", size: 0.7em),
        baseline: -10%,
      )] else [#body]]
  body = [#set text(fill: design-colors-links);#body]
  original-link(url, body)
}

// Last updated date text:
#if design-page-show-last-updated-date {
  let dx
  if design-section-titles-type == "moderncv" {
    dx = 0cm
  } else {
    dx = -design-entries-left-and-right-margin
  }
  place(
    top + right,
    dy: -design-page-top-margin / 2,
    dx: dx,
    text(
      [_#locale-catalog-last-updated-date-style _],
      fill: design-colors-last-updated-date-and-page-numbering,
      size: 0.9em,
    ),
  )
}

#let connections(connections-list) = context {
  set text(fill: design-colors-connections, font: design-header-connections-font-family)
  set par(leading: design-text-leading*1.7, justify: false)
  let list-of-connections = ()
  let separator = (
    h(design-header-horizontal-space-between-connections / 2, weak: true)
      + design-header-separator-between-connections
      + h(design-header-horizontal-space-between-connections / 2, weak: true)
  )
  let starting-index = 0
  while (starting-index < connections-list.len()) {
    let left-sum-right-margin
    if type(page.margin) == "dictionary" {
      left-sum-right-margin = page.margin.left + page.margin.right
    } else {
      left-sum-right-margin = page.margin * 4
    }

    let ending-index = starting-index + 1
    while (
      measure(connections-list.slice(starting-index, ending-index).join(separator)).width
        < page.width - left-sum-right-margin
    ) {
      ending-index = ending-index + 1
      if ending-index > connections-list.len() {
        break
      }
    }
    if ending-index > connections-list.len() {
      ending-index = connections-list.len()
    }
    list-of-connections.push(connections-list.slice(starting-index, ending-index).join(separator))
    starting-index = ending-index
  }
  align(list-of-connections.join(linebreak()), design-header-alignment)
  v(design-header-vertical-space-between-connections-and-first-section - design-section-titles-vertical-space-above)
}

#let three-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (left, auto, right),
) = (
  if design-section-titles-type == "moderncv" [
    #three-col(
      left-column-width: right-column-width,
      middle-column-width: left-column-width,
      right-column-width: 1fr,
      left-content: right-content,
      middle-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      right-content: middle-content,
      alignments: (design-text-date-and-location-column-alignment, left, auto),
    )
  ] else [
    #block(
      [
        #three-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          middle-content: middle-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let two-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, design-text-date-and-location-column-alignment),
  column-gutter: design-entries-horizontal-space-between-columns,
) = (
  if design-section-titles-type == "moderncv" [
    #two-col(
      left-column-width: right-column-width,
      right-column-width: left-column-width,
      left-content: right-content,
      right-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      alignments: (design-text-date-and-location-column-alignment, auto),
    )
  ] else [
    #block(
      [
        #two-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let one-col-entry(content: "") = [
  #let left-space = design-entries-left-and-right-margin
  #if design-section-titles-type == "moderncv" [
    #(left-space = left-space + design-entries-date-and-location-width + design-entries-horizontal-space-between-columns)
  ]
  #block(
    [#set par(spacing: design-text-leading); #content],
    breakable: design-entries-allow-page-break-in-entries,
    inset: (
      left: left-space,
      right: design-entries-left-and-right-margin,
    ),
    width: 100%,
  )
]

= Sina Sajadmanesh

// Print connections:
#let connections-list = (
  [#fa-icon("location-dot", size: 0.9em) #h(0.05cm)Zurich, Switzerland],
  [#box(original-link("mailto:sina.sajadmanesh@gmail.com")[#fa-icon("envelope", size: 0.9em) #h(0.05cm)sina.sajadmanesh\@gmail.com])],
  [#box(original-link("https://sajadmanesh.com/")[#fa-icon("link", size: 0.9em) #h(0.05cm)sajadmanesh.com])],
  [#box(original-link("https://linkedin.com/in/sajadmanesh")[#fa-icon("linkedin", size: 0.9em) #h(0.05cm)sajadmanesh])],
  [#box(original-link("https://github.com/sisaman")[#fa-icon("github", size: 0.9em) #h(0.05cm)sisaman])],
)
#connections(connections-list)



== Education


// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[Swiss Federal Institute of Technology \(EPFL\)], PhD in Electrical Engineering 
  ],
  right-content: [
    May 2019 – Aug 2023
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[Sharif University of Technology], MSc in Information Technology Engineering 
  ],
  right-content: [
    Sept 2014 – Sept 2016
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[University of Isfahan], BSc in Computer Software Engineering 
  ],
  right-content: [
    Sept 2009 – Feb 2014
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)



== Experience


#two-col-entry(
  left-content: [
    #strong[Sony AI], AI Engineer -- Zurich, Switzerland
  ],
  right-content: [
    Oct 2023 – present
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Working on multimodal foundation models],[Implemented easy-to-use APIs for vision foundation model inference and deployment],[Designed and implemented a comprehensive multi-task learning framework based on OpenMMLab libraries and PyTorch, supporting various vision tasks and architectures with mixed-precision and distributed training],[Implemented an end-to-end open-world classification pipeline using MMClassification, HuggingFace transformers, and CLIP],[Improved model training and inference speed by optimizing the data pipeline, using mixed-precision training, and leveraging distributed training on multiple GPUs],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Idiap Research Institute], Research Assistant -- Martigny, Switzerland
  ],
  right-content: [
    May 2019 – Aug 2023
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Worked as a doctoral researcher on differentially private machine learning with graph neural networks],[#strong[3 published papers] in top-tier conferences \(CCS, USENIX Security, and NDSS\) with #strong[185+ citations]],[#strong[7 invited talks] at top universities and research institutions, including Imperial College, UIC, and Twitter],[#strong[6 open-source projects] with #strong[110+ stars] on GitHub],[#strong[1 short course] taught on \"Trustworthy Machine Learning\" at #link("https://www.i-aida.org/course/an-introduction-to-trustworthy-machine-learning/")[Artificial Intelligence Doctoral Academy]],[#strong[Finalist] in #link("https://www.credential.net/5f54daed-b77f-4dd4-81c6-421ad7a2c2fb")[CSAW Applied Research Competition] for the best paper award in computer security in Europe],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[The Alan Turing Institute], Visiting Collaborator -- London, UK
  ],
  right-content: [
    Mar 2023 – Mar 2023
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Co-organized a workshop on #link("https://private-fair-ai.github.io/")[\"Privacy and Fairness in AI for Health\"] with 60+ attendees],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Brave Software], Research Intern -- Remote
  ],
  right-content: [
    Mar 2022 – May 2022
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Developed a novel privacy-preserving #strong[federated learning] framework for #strong[neural bandit models] under client heterogeneity using PyTorch, Flower, Dask, and Tensorflow-Lite],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Sharif University of Technology], Research Assistant -- Tehran, Iran
  ],
  right-content: [
    Nov 2014 – May 2019
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Worked on various research projects including privacy-preserving machine learning, web data science, and social and information network analysis.],[#strong[4 published papers] in top-tier venues \(WWW, TKDD, IoTJ, ASONAM\) with #strong[430+ citations]],[#strong[5+ press releases] in top-tier media outlets, including #link("https://www.technologyreview.com/s/602790/how-data-mining-reveals-the-worlds-healthiest-cuisines/")[MIT Technology Review], #link("http://mashable.france24.com/styles/20161115-algorithme-cuisines-recherche-nutrition-ingredients")[France 24], and #link("https://www.indy100.com/article/healthy-diverse-top-healthiest-countries-cuisine-food-in-the-world-list-7412171")[The Independent]],[#strong[2 open-source projects] with #strong[20+ stars] on GitHub],[#strong[1 semester course] taught on \"Fundamentals of Programming with Python\" at Sharif University of Technology],)
  ],
)



== Skills and Expertise


#one-col-entry(
  content: [#strong[Programming Languages:] Python, C++, Java, SQL, Shell, LaTeX]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Machine Learning and AI:] PyTorch, TensorFlow, HuggingFace, OpenMMLab, PyTorch-Lightning]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[MLOps and DevOps:] Weights & Biases, Docker, GitHub, Dask, Neptune, Linux]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Privacy-Enhancing Technologies:] Flower, Opacus, Auto-DP]
)


== Community and Professional Service


#one-col-entry(
  content: [#strong[Invited Speaker:] Imperial College London \(2023, 2020\), University of Illinois at Chicago \(2022\), L3S Research Center \(2022\), Graph Neural Networks User Group Meetup \(2021\), Twitter Machine Learning Seminar \(2021\)]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Organizing Committee:] #link("https://priv-fair-ai-uk.github.io")[Privacy and Fairness in AI for Health]  \(2023\)]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Program Committee:] #link("https://ppai-workshop.github.io")[PPAI] \(2024\), #link("https://wisec2023.surrey.ac.uk/wiseml2023")[WiseML] \(2023\), #link("https://pair2struct-workshop.github.io")[PAIR2Struct] \(2022\), #link("https://dp-ml.github.io/2021-workshop-ICLR")[DPML] \(2021\)]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Reviewer:] #link("https://neurips.cc")[NeurIPS] \(2024\), #link("https://dl.acm.org/journal/imwut")[IMWUT] \(2024\), #link("https://ieeexplore.ieee.org/xpl/aboutJournal.jsp?punumber=8858")[TDSC] \(2023\), #link("https://logconference.org")[LoG] \(2023, 2022\), #link("http://aistats.org/aistats2023")[AISTATS] \(2023\), #link("https://www.journals.elsevier.com/artificial-intelligence")[AIJ] \(2022\), #link("https://ieeexplore.ieee.org/xpl/RecentIssue.jsp?punumber=6687317")[TBD] \(2021\), #link("https://dl.acm.org/journal/tist")[TIST] \(2020\), #link("https://www.springer.com/journal/13278")[SNAM] \(2020\), #link("https://www.springer.com/journal/11280")[WWWJ] \(2018\)]
)


== Publications


#two-col-entry(
  left-content: [
    #strong[Argus: A Compact and Versatile Foundation Model for Vision]

  ],
  right-content: [
    June 2025
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Weiming Zhuang, Chen Chen, Zhizhong Li, Sina Sajadmanesh, et al.

#v(design-highlights-top-margin - design-text-leading)The IEEE\/CVF Conference on Computer Vision and Pattern Recognition \(#strong[CVPR]\)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://dl.acm.org/doi/10.1145/3616855.3635761")[#strong[ProGAP: Progressive Graph Neural Networks with Differential Privacy Guarantees]]

  ],
  right-content: [
    Mar 2024
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Sina Sajadmanesh, Daniel Gatica-Perez

#v(design-highlights-top-margin - design-text-leading)ACM International Conference on Web Search and Data Mining \(#strong[WSDM]\)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://infoscience.epfl.ch/record/306602")[#strong[Privacy-Preserving Machine Learning on Graphs]]

  ],
  right-content: [
    Aug 2023
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Sina Sajadmanesh

#v(design-highlights-top-margin - design-text-leading)Doctoral Thesis - Swiss Federal Institute of Technology \(EPFL\)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://www.usenix.org/conference/usenixsecurity23/presentation/sajadmanesh")[#strong[GAP: Differentially Private Graph Neural Networks with Aggregation Perturbation]]

  ],
  right-content: [
    Aug 2023
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Sina Sajadmanesh, Ali Shahin Shamsabadi, Aurélien Bellet, et al.

#v(design-highlights-top-margin - design-text-leading)USENIX Security Symposium \(#strong[USENIX Security]\)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://dl.acm.org/doi/abs/10.1145/3460120.3484565")[#strong[Locally Private Graph Neural Networks]]

  ],
  right-content: [
    Nov 2021
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Sina Sajadmanesh, Daniel Gatica-Perez

#v(design-highlights-top-margin - design-text-leading)ACM Conference on Computer and Communications Security \(#strong[CCS]\)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://arxiv.org/abs/2006.05535v3")[#strong[When Differential Privacy Meets Graph Neural Networks]]

  ],
  right-content: [
    June 2020
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Sina Sajadmanesh, Daniel Gatica-Perez

#v(design-highlights-top-margin - design-text-leading)Technical Report, ArXiv e-prints])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://ieeexplore.ieee.org/document/8962332")[#strong[A Hybrid Deep Learning Architecture for Privacy-Preserving Mobile Analytics]]

  ],
  right-content: [
    May 2020
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Seyed Ali Osia, Ali Shahin Shamsabadi, Sina Sajadmanesh, et al.

#v(design-highlights-top-margin - design-text-leading)IEEE Internet of Things Journal \(#strong[IoTJ]\)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://dl.acm.org/authorize?N680282")[#strong[Continuous-Time Relationship Prediction in Dynamic Heterogeneous Information Networks]]

  ],
  right-content: [
    Aug 2019
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Sina Sajadmanesh, Sogol Bazargani, Jiawei Zhang, Hamid R. Rabiee

#v(design-highlights-top-margin - design-text-leading)ACM Transactions on Knowledge Discovery from Data \(#strong[TKDD]\)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://arxiv.org/abs/1706.06783")[#strong[NPGLM: A Non-Parametric Method for Temporal Link Prediction]]

  ],
  right-content: [
    June 2017
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Sina Sajadmanesh, Jiawei Zhang, Hamid R. Rabiee

#v(design-highlights-top-margin - design-text-leading)Technical Report, ArXiv e-prints])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://dl.acm.org/citation.cfm?id=3055137")[#strong[Kissing Cuisines: Exploring Worldwide Culinary Habits on the Web]]

  ],
  right-content: [
    Apr 2017
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Sina Sajadmanesh, Sina Jafarzadeh, Seyed Ali Ossia, et al.

#v(design-highlights-top-margin - design-text-leading)International World Wide Web Conference Companion \(#strong[WWW]\)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://dl.acm.org/doi/pdf/10.5555/3192424.3192453")[#strong[Predicting Anchor Links between Heterogeneous Social Networks]]

  ],
  right-content: [
    Aug 2016
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Sina Sajadmanesh, Hamid R. Rabiee, Ali Khodadadi

#v(design-highlights-top-margin - design-text-leading)International Conference on Advances in Social Networks Analysis and Mining \(#strong[ASONAM]\)])



