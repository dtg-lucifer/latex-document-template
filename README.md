# Charlie's Styled LaTeX Document & Engineering Report Template

A modern, highly modular technical and executive document template for **LaTeX (LuaLaTeX)**. Designed for engineering whitepapers, mathematical research reports, technical specifications, and corporate documentation, it unifies **Charlie's signature mathematics aesthetic** (tcolorbox cutout tabs, sweeping ribbons, left-panel theorem frames, Titletoc badges) with the **modern executive design language** of the [Typst Document Template](https://github.com/dtg-lucifer/typst-document-template.git).

Engineered from the ground up for seamless developer ergonomics with **VimTeX** and **Zathura** (instant forward/backward SyncTeX search, continuous compilation, and modular components).

---

## Table of Contents

- [Visual Demos & Preview Showcase](#visual-demos--preview-showcase)
- [Overview & Visual Identity](#overview--visual-identity)
- [VimTeX + Zathura Integration Guide](#vimtex--zathura-integration-guide)
- [Quick Start](#quick-start)
- [Project Structure](#project-structure)
- [Automation & Makefile](#automation--makefile)
- [Component Reference Guide](#component-reference-guide)
  - [1. Master Entrypoint & Executive Cover Page](#1-master-entrypoint--executive-cover-page)
  - [2. Charlie's Mathematical Theorem Suite](#2-charlies-mathematical-theorem-suite)
  - [3. Callouts & Admonition Blocks](#3-callouts--admonition-blocks)
  - [4. Dashboard Widgets, KPI Metric Cards & Grids](#4-dashboard-widgets-kpi-metric-cards--grids)
  - [5. Container Blocks: Left-Bar & Executive Cards](#5-container-blocks-left-bar--executive-cards)
  - [6. Status Badges, Tech Tags & Protocol Chips](#6-status-badges-tech-tags--protocol-chips)
  - [7. Syntax-Highlighted Code Blocks & Terminal Consoles](#7-syntax-highlighted-code-blocks--terminal-consoles)
  - [8. Themed Data Tables (Zebra Alternating Fills)](#8-themed-data-tables-zebra-alternating-fills)
  - [9. Styled Algorithms & Pseudocode](#9-styled-algorithms--pseudocode)
  - [10. Process Timelines, Step Flows & Math Macros](#10-process-timelines-step-flows--math-macros)
- [Theme & Color Palettes](#theme--color-palettes)

---

## Visual Demos & Preview Showcase

The master demonstration document compiles cleanly to a 17-page technical and mathematical specification:

- 📄 **[Download Demo PDF (`output.pdf`)](output.pdf)**

Below is a complete visual showcase of the compiled pages:

### 1. Executive Cover Page & Outlines

| Executive Cover Page | Table of Contents (Charlie Banner) |
|:---:|:---:|
| **Page 1: Title, Abstract & Flexible Metadata Card** | **Page 2: Chapter Ribbon Badges & titletoc Formatting** |
| ![Cover Page](assets/preview/demo-page-01.png) | ![Table of Contents](assets/preview/demo-page-02.png) |

| List of Figures | List of Tables |
|:---:|:---:|
| **Page 3: Figures Outline** | **Page 4: Tables Outline** |
| ![List of Figures](assets/preview/demo-page-03.png) | ![List of Tables](assets/preview/demo-page-04.png) |

### 2. Mathematical Foundations & Charlie's Signature Theorems

| Contraction Mapping & Tabbed Definitions | Questions, Solutions & Remarks |
|:---:|:---:|
| **Page 5: Theorems, Lemmas, Corollaries & Cutouts** | **Page 6: Solbox, Example & Remark Blocks** |
| ![Theorems & Tabs](assets/preview/demo-page-05.png) | ![Solutions & Remarks](assets/preview/demo-page-06.png) |

| Geometric State Proofs & Ribbon Boxes | |
|:---:|:---:|
| **Page 7: Sweeping Ribbon Header & Geometry Proof** | |
| ![Geometric Proof](assets/preview/demo-page-07.png) | |

### 3. Executive Telemetry, Metric Cards & Architecture

| KPI Metric Cards & Left-Bar Containers | Process Flow Timelines & Architecture Diagram |
|:---:|:---:|
| **Page 8: Equal-Height KPI Cards & Monitor Cardbox** | **Page 9: Step Pipelines, Key-Value Grid & System Diagram** |
| ![KPI Metrics & Containers](assets/preview/demo-page-08.png) | ![Process Pipelines & Architecture](assets/preview/demo-page-09.png) |

### 4. Callouts, Alerts & Admonitions

| Concept Notes, Takeaways & Challenges | Alert Suites & Contrast Highlighting |
|:---:|:---:|
| **Page 10: Concept Callout, Takeaway & Challenge Resolution** | **Page 11: 4-Tier Alert Suite (Info, Warning, Danger, Tip)** |
| ![Concept Notes & Takeaways](assets/preview/demo-page-10.png) | ![Alert Suites](assets/preview/demo-page-11.png) |

### 5. Syntax-Highlighted Code & Terminal Consoles

| Multi-Language Code Blocks & Consoles | LaTeX Showcases & Styled Pseudocode |
|:---:|:---:|
| **Page 12: Rust, Python & Linux Terminal Sessions (SF Mono)** | **Page 13: LaTeX Code Showcase & Algorithm2e Pseudocode** |
| ![Code Blocks & Consoles](assets/preview/demo-page-12.png) | ![LaTeX & Algorithm2e](assets/preview/demo-page-13.png) |

### 6. Themed Zebra Tables, Badges & Observability

| Zebra Data Tables, Status Chips & Protocol Tags | Multi-Image Production Telemetry Dashboard |
|:---:|:---:|
| **Page 14: Zebra Tables, Security Tags & Chip Badges** | **Page 15: Dual Grafana & Cluster Node Observability** |
| ![Zebra Tables & Badges](assets/preview/demo-page-14.png) | ![Dashboard Telemetry](assets/preview/demo-page-15.png) |

### 7. Component Quick Reference Guides

| Charlie's Theorem Reference Suite | Executive Callouts & Container Guide |
|:---:|:---:|
| **Page 16: Summary of Theorem Macros & Visual Badges** | **Page 17: Summary of Alert Boxes, Tags & KPI Cards** |
| ![Theorem Reference](assets/preview/demo-page-16.png) | ![Container Reference](assets/preview/demo-page-17.png) |

---

## Overview & Visual Identity

This template bridges the gap between academic mathematical rigor and executive publication standards:

- **Charlie's Signature Theorem Engine:**
  - Cutout tab headers for definitions (`cmtdefinitionthm` style).
  - Sweeping ribbon header banners (`cmtribbonbox` style).
  - Left vertical indicator panels for theorems and corollaries (`cmtleftthm`).
  - Subtle drop shadows with `pgf-blur` and soft slate backgrounds.
- **Veritas Technical Report Suite:**
  - Executive cover page with organization kicker, metadata grid, and abstract card.
  - KPI metric cards with automatic positive/negative change badges.
  - 4-tier alert system (Info, Warning, Danger, Tip).
  - Engineering Challenge & Resolution blocks (Problem vs. Resolution).
- **Single Import Ergonomics:** All components, colors, macros, and environments are exposed via `\input{prelude}`.
- **Production-Ready LuaLaTeX Engine:** Built-in font selection, microtyping, and SyncTeX support.

---

## VimTeX + Zathura Integration Guide

This template is configured out of the box for the ultimate VimTeX editing experience.

### 1. Root Configuration (`.latexmkrc`)

The repository includes a ready-to-use `.latexmkrc` file:

```perl
# .latexmkrc
$pdf_mode = 4;                               # 4 = lualatex
$postscript_mode = $dvi_mode = 0;
$lualatex = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
$pdf_previewer = 'zathura %S';
```

### 2. Multi-File Project Root Directives

Every subfile can specify the project root with a single comment at the very top:

```latex
% !TEX root = main.tex
```

This guarantees VimTeX compiles `main.tex` even when editing a sub-component inside `components/`.

### 3. Neovim / Vim Configuration (`init.lua`)

Add the following to your Neovim configuration (`~/.config/nvim/after/ftplugin/tex.lua` or your plugin manager):

```lua
-- VimTeX + Zathura Configuration
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_compiler_method = 'latexmk'
vim.g.vimtex_compiler_latexmk = {
    build_dir = '',
    callback = 1,
    continuous = 1,
    executable = 'latexmk',
    hooks = {},
    options = {
        '-lualatex',
        '-verbose',
        '-file-line-error',
        '-synctex=1',
        '-interaction=nonstopmode',
    },
}

-- Keybindings:
-- <leader>ll : Start continuous compilation (latexmk)
-- <leader>lv : Forward search (jump from cursor to Zathura)
-- <leader>lk : Stop compilation
-- <leader>lc : Clean auxiliary files
-- In Zathura: Ctrl + Left Click on any text jumps straight back to Neovim (Reverse search)!
```

---

## Quick Start

Get your first document compiling and viewing with live reload in under 2 minutes.

---

### Step 1: Install System Prerequisites

This template uses **LuaLaTeX** (for native OpenType/TrueType font rendering via `fontspec` and micro-typography) and **latexmk** for automated multi-pass compilation.

- **Arch Linux / Manjaro:**
  ```bash
  sudo pacman -S texlive-meta texlive-fontsextra poppler zathura zathura-pdf-mupdf
  ```
- **Ubuntu / Debian:**
  ```bash
  sudo apt update && sudo apt install texlive-full latexmk poppler-utils zathura
  ```
- **macOS (Homebrew):**
  ```bash
  brew install --cask mactex
  brew install latexmk poppler zathura
  ```
- **Windows (MiKTeX / TeX Live):**
  Install [TeX Live](https://www.tug.org/texlive/) or [MiKTeX](https://miktex.org/) with LuaLaTeX and Make/Perl.

> [!TIP]
> - **Fonts:** TeX Gyre Termes (Times New Roman equivalent) is included with all standard TeX Live / MacTeX distributions. The monospace font **SF Mono Nerd Font** is already bundled locally inside `assets/fonts/` — no system font installation needed!
> - **Poppler (`pdftoppm`):** Optional, only needed if you want to export PNG preview images via `make previews`.

---

### Step 2: Clone or Download the Template

```bash
# Clone the repository
git clone https://github.com/dtg-lucifer/latex-document-template.git my-report

# Enter the project directory
cd my-report
```

---

### Step 3: Build the Showcase Document

Compile the showcase document (`main.tex`) directly using the automated `Makefile`:

```bash
make build
```

This compiles `main.tex` into `output.pdf` using LuaLaTeX with SyncTeX enabled.

Open the resulting PDF:
```bash
# With Zathura (recommended for live reload & SyncTeX)
zathura output.pdf &

# Or with your system default viewer
xdg-open output.pdf   # Linux
open output.pdf       # macOS
```

---

### Step 4: Live Editing & SyncTeX Watch Mode

For continuous compilation as you type:

#### Option A: Terminal Watch Mode (Any Editor)
Run `make watch` in a terminal window. `latexmk` monitors all `.tex` files, components, and assets, automatically recompiling and refreshing your PDF viewer upon save:
```bash
make watch
```

#### Option B: Neovim + VimTeX (Recommended Workflow)
1. Open `main.tex` in Neovim:
   ```bash
   nvim main.tex
   ```
2. Start continuous compilation:
   - Press `<leader>ll` (VimTeX starts compilation in the background and opens Zathura).
3. **Forward Search:** Move your cursor to any paragraph or math formula and press `<leader>lv` — Zathura will instantly jump to and highlight that exact location in the PDF.
4. **Backward / Reverse Search:** In Zathura, `Ctrl + Left Click` on any text, figure, or equation — Neovim will immediately jump straight to that source line!

---

### Step 5: Start Your Own Document

To create a new document (e.g., `document.tex`), simply import `\input{prelude}`:

```latex
\documentclass[11pt,a4paper]{report}
\input{prelude}

% Document Metadata
\title{Nexus Cloud Engine Specification}
\docsubtitle{High-Throughput Stream Processing Architecture}
\docorganization{ENGINEERING RESEARCH LABS}
\author{Alex Mercer \and Core Infrastructure Team}
\date{\today}
\docversion{Release 1.0.0}
\docdomain{Distributed Infrastructure / Cloud Computing}
\docabstract{This specification outlines the architecture, consensus mechanics, and benchmark telemetry of the cloud streaming engine.}

\begin{document}

% Render Cover Page & Outlines
\rendercoverpage
\tableofcontents
\listoffigures
\listoftables

\chapter{Mathematical Foundations}

\thm{Linearizable Quorum Intersection}{
    Let $\mathcal{Q}_r$ and $\mathcal{Q}_w$ be read and write quorums.
    Then $\mathcal{Q}_r \cap \mathcal{Q}_w \neq \emptyset$.
}

\dfnc{Byzantine Fault Tolerance}{
    A system satisfies $f$-resilience if safety holds when $n \ge 3f + 1$.
}

\takeaway{Single Source of Truth}{
    Logs are the single source of truth. State is simply the current fold of an ordered event log.
}

\chapter{Observability & Metrics}

\metricgridthree{%
    \metriccard{Throughput}{2.42M ops/s}{+64.2\% Uplift}{1}{Peak rate}%
}{%
    \metriccard{P99 Latency}{1.42 ms}{-42.8\% Reduction}{1}{SLA < 5ms}%
}{%
    \metriccard{Availability}{99.999\%}{Zero Downtime}{1}{Multi-AZ}%
}

\end{document}
```

Compile your custom document with the Makefile:
```bash
make build MAIN_SRC=document.tex JOBNAME=document
```
Or directly with `latexmk`:
```bash
latexmk -lualatex -jobname=document -synctex=1 document.tex
```

---

### Step 6: Generate Page Previews & Housekeeping

- **Export High-Resolution Page Previews (PNG):**
  ```bash
  make previews
  ```
  Renders all pages of your compiled PDF into crisp 150 DPI PNG images in `assets/preview/`.

- **Clean Intermediate LaTeX Artifacts:**
  ```bash
  make clean
  ```
  Deletes temporary files (`.aux`, `.log`, `.toc`, `.fls`, `.synctex.gz`) while preserving your output PDF.

- **Full Project Reset:**
  ```bash
  make distclean
  ```
  Removes intermediate files, output PDFs, and preview images.

---

## Project Structure

Following the exact modular design of `typst-document-template`:

```text
latex_document_template/
├── prelude.tex            # Single entrypoint importing packages, styles & components
├── template.tex           # Document geometry, fancyhdr headers/footers & titlesec
├── main.tex               # Comprehensive 17-page showcase document
├── Makefile               # Automates compile, watch, preview generation, and cleaning
├── .latexmkrc             # Preconfigured for LuaLaTeX, SyncTeX, and Zathura
├── .gitignore             # Comprehensive ignore rules for LaTeX auxiliary files
├── README.md              # Full visual preview gallery and documentation
├── assets/
│   ├── images/            # Technical architecture diagrams and dashboard captures
│   └── preview/           # High-resolution 150 DPI page preview PNGs
│       └── demo-page-*.png# Generated page screenshots (pages 1 to 17)
└── components/
    ├── theme.tex          # Merged Charlie math colors + modern slate executive palette
    ├── theorems.tex       # Charlie's theorem boxes, cutout tabs, ribbons, and proofs
    ├── callouts.tex       # Concept notes, takeaways, challenge boxes, and alert suites
    ├── boxes.tex          # Left-bar containers, executive cards, KPI metric cards
    ├── badges.tex         # Status badges, technology tags, and protocol chips
    ├── codeblock.tex      # Listings syntax highlighting, terminal console, and inlines
    ├── tables.tex         # Zebra alternating data tables with booktabs rules
    ├── algorithms.tex     # Algorithm2e colored pseudocode and custom keywords
    ├── cover.tex          # Executive cover page layout generator
    ├── toc.tex            # Charlie's titletoc chapter badges and custom ToC header
    └── macros.tex         # Blackboard sets, calculus derivatives, and step-flow timeline
```

---

## Automation & Makefile

The included `Makefile` handles compilation, live reload, preview extraction, and cleaning:

```bash
# Build output.pdf cleanly using latexmk and lualatex
make build

# Start continuous live compilation (auto-rebuild on save)
make watch

# Render high-resolution PNG previews into assets/preview/
make previews

# Clean auxiliary LaTeX files (*.aux, *.log, *.toc, *.synctex.gz, etc.)
make clean

# Remove all auxiliary files AND the output PDF
make distclean

# Display all available targets
make help
```

---

## Component Reference Guide

### 1. Master Entrypoint & Executive Cover Page

Include `prelude.tex` at the top of your document. Configure document metadata using:

```latex
\title{Document Title}
\docsubtitle{Subtitle or Kicker}
\docorganization{ORGANIZATION NAME}
\author{Author 1 \and Author 2}
\docversion{v1.0.0}
\docdomain{Cloud Systems / Security}
\docabstract{Executive summary or abstract content goes here.}
\docfooternote{Confidential $\cdot$ Internal Distribution Only}
\date{\today}

% Inside \begin{document}:
\rendercoverpage
```

### 2. Charlie's Mathematical Theorem Suite

Full suite of theorem environments featuring three signature styling tiers:

#### Tiers & Visual Styles
1. **Left-Panel Border (`cmtleftthm`)**: Crisp vertical accent bar on the left.
2. **Cutout Ribbon Tab (`cmtdefinitionthm`)**: Charlie's distinctive tab cutout for definitions.
3. **Sweeping Ribbon Banner (`cmtribbonbox`)**: Full-width header banner for theorems.

#### Shorthand Commands
| Macro | Environment | Visual Style |
|:---|:---|:---|
| `\thm{Title}{Content}` | `theorem` | Sweeping ribbon banner or left-panel |
| `\thmcon{Title}{Content}` | `Theoremcon` | Charlie's sweeping ribbon theorem |
| `\cor{Title}{Content}` | `corollary` | Left-panel cyan border |
| `\mlemma{Title}{Content}` | `lemma` | Left-panel indigo border |
| `\mprop{Title}{Content}` | `prop` | Left-panel emerald border |
| `\dfn{Title}{Content}` | `definition` | Definition cutout tab |
| `\dfnc{Title}{Content}` | `Definition` | Cutout tab with custom title |
| `\qs{Title}{Content}` | `question` | Purple bordered question box |
| `\sol{Content}` | `solution` | Charlie's dotted solution container |
| `\pf{Content}` | `myproof` | Elegant proof block with QED square |
| `\nt{Content}` | `note` | Floating side-note / warning box |
| `\rmk{Content}` | `remark` | Minimal remark note |

#### Example Usage
```latex
\thmcon{Fermat's Last Theorem}{
    No three positive integers $a, b, c$ satisfy $a^n + b^n = c^n$ for any integer $n > 2$.
}

\dfnc{Monad Definition}{
    A monad is an endofunctor $T: \mathcal{C} \to \mathcal{C}$ equipped with natural transformations $\eta: 1_\mathcal{C} \to T$ and $\mu: T^2 \to T$.
}

\qs{Convergence Rate}{Find the optimal learning rate $\eta^*$ for convex objectives.}
\sol{We solve $\nabla^2 f(x) \preceq L \cdot I$, yielding $\eta^* = 1/L$.}
```

### 3. Callouts & Admonition Blocks

Modeled directly after the Veritas technical report design:

```latex
% Concept Callout (Soft Sky Blue)
\callout[CONCEPT NOTE]{Distributed Clock Analogy}{
    Instead of polling a server periodically, each worker monitors local monotonic counters.
}

% Architectural Takeaway (Mint Green)
\takeaway[ARCHITECTURAL PRINCIPLE]{Immutable Append-Only Log}{
    Mutations are strictly prohibited in the write path. All updates are materialized as append-only records.
}

% Engineering Challenge & Resolution (Warm Amber)
\challengebox{Distributed Clock Drift}{
    NTP clock drift of up to 45ms caused causal inversions across cross-datacenter nodes.
}{
    Formulated hybrid logical clocks (HLC) combining physical UNIX timestamps with monotonic logical counters.
}

% Alert Suite
\info[Configuration Note]{Minimum quorum requires $2f + 1$ active nodes.}
\tip[Performance Tip]{Enable eBPF ring buffers for zero-copy packet ingestion.}
\warning[Degraded State]{Packet jitter exceeding $250\,\mu\text{s}$ triggers upstream rate limiting.}
\danger[Security Critical]{Unauthenticated RPC attempts trigger automated quarantine.}

% Highlight Contrast Box
\highlightbox[blue]{P99 Latency Reduced to 1.42ms Across Global Clusters}
```

### 4. Dashboard Widgets, KPI Metric Cards & Grids

Build executive KPI dashboards directly in LaTeX:

```latex
\metricgridthree{%
    \metriccard{THROUGHPUT}{2.42M ops/s}{+64.2\% Uplift}{1}{Peak cluster load}%
}{%
    \metriccard{P99 LATENCY}{1.42 ms}{-42.8\% Reduction}{1}{SLA target: < 5ms}%
}{%
    \metriccard{SYSTEM AVAILABILITY}{99.999\%}{Zero Downtime}{1}{Multi-region active-active}%
}

% Key-Value Grid
\keyvaluetwo{%
    \keyvalueitem{Consensus Algorithm}{Raft + Multi-Paxos}%
}{%
    \keyvalueitem{State Machine Storage}{LSM-Tree with Direct I/O}%
}
```

### 5. Container Blocks: Left-Bar & Executive Cards

```latex
% Left-Bar Container Box
\begin{leftbarbox}[accentprimary]
    Arbitrary container content with a colored left accent border.
\end{leftbarbox}

% Executive Card Box with Header, Badge, and Footer
\begin{cardbox}[TELEMETRY PIPELINE]{Consensus Health Monitor}{Hardware counters sampled at 10 kHz}
    Detailed operational explanation and diagnostic instructions.
\end{cardbox}
```

### 6. Status Badges, Tech Tags & Protocol Chips

```latex
% Status Badges
\statusbadge{ALLOW}    \statusbadge{NORMAL}   \statusbadge{ALERT}
\statusbadge{CRITICAL} \statusbadge{ISOLATE}

% Tech Chips & Protocols
\techtag{Rust 1.84}    \techtag{eBPF}          \techtag{Linux 6.12}
\protocoltag{gRPC / HTTP/2} \protocoltag{QUIC}
\mitretag{T1071.001}
```

### 7. Syntax-Highlighted Code Blocks & Terminal Consoles

```latex
% Codeblock with language highlighting and line numbers
\begin{codeblock}{rust}{src/consensus.rs}
pub async fn commit_log_entry(&self, entry: LogEntry) -> Result<Index, ConsensusError> {
    let quorum = self.active_nodes.len() / 2 + 1;
    self.replicate_to_peers(entry, quorum).await?;
    Ok(self.commit_index.fetch_add(1, Ordering::SeqCst))
}
\end{codeblock}

% Plain terminal session
\begin{consoleblock}
$ cargo build --release
$ ./target/release/nexus-daemon --cluster-id 0x4F2A --workers 32
[INFO] Cluster initialized: 5 nodes registered. Linearizable quorum active.
\end{consoleblock}

% Inline code chips
Use \codeinline{atomic_commit()} for non-blocking log updates.
```

### 8. Themed Data Tables (Zebra Alternating Fills)

```latex
\begin{table}[H]
\centering
\caption{System Performance Under Burst Workloads}
\begin{styledtable}{l r r c}
    \toprule
    \tablehead{Cluster Node & Throughput & Latency & State} \\
    \midrule
    \texttt{us-east-1a} & 1,420,000 ops/s & 1.2 ms & \statusbadge{ALLOW} \\
    \texttt{us-east-1b} & 1,380,000 ops/s & 1.4 ms & \statusbadge{ALLOW} \\
    \texttt{eu-west-1a} & 890,000 ops/s   & 3.8 ms & \statusbadge{NORMAL} \\
    \texttt{ap-northeast-1} & 450,000 ops/s & 12.4 ms & \statusbadge{ALERT} \\
    \bottomrule
\end{styledtable}
\end{table}
```

### 9. Styled Algorithms & Pseudocode

```latex
\begin{algorithm}[H]
\DontPrintSemicolon
\caption{Leader Election and Log Replication}\label{alg:consensus}
\KwIn{Candidate node $C_i$, election term $T_k$}
\KwOut{Election status $\in \{\text{Leader}, \text{Follower}\}$}
\BlankLine
\tcpstyled{Broadcast RequestVote RPC to all peers}
votes $\leftarrow 1$\;
\ForEach{peer $P_j \in \mathcal{P} \setminus \{C_i\}$}{
    \If{$P_j.\text{VoteGranted}(T_k) == \text{True}$}{
        votes $\leftarrow$ votes $+ 1$\;
    }
}
\If{$\text{votes} \ge \lfloor |\mathcal{P}| / 2 \rfloor + 1$}{
    \Return Leader\;
}
\Return Follower\;
\end{algorithm}
```

### 10. Process Timelines, Step Flows & Math Macros

```latex
% Step-Flow Timeline
\stepflow{Client Ingestion}{eBPF Filter}{Quorum Replication}{LSM Commit}

% Math Shortcuts
\RR, \CC, \ZZ, \QQ, \NN              % Sets of numbers: \mathbb{R}, \mathbb{C}, ...
\dv{f}{x}, \pdv{f}{x}, \dd x         % Calculus derivatives & differentials
\bbA \dots \bbZ, \mcA \dots \mcZ      % Blackboard and MathCal alphabets
\bmA \dots \bmZ                       % Bold math vectors and matrices
```

---

## Theme & Color Palettes

All colors are defined in `components/theme.tex` using the `xcolor` framework:

| Color Name | Hex Code | Visual Sample | Usage |
|:---|:---|:---:|:---|
| `accentprimary` | `#1e3a8a` | 🟦 | Primary titles, section headings, brand kicker |
| `accentsecondary` | `#0f766e` | 🟩 | Subsections, code left rules, process arrows |
| `accentcrimson` | `#b91c1c` | 🟥 | Critical alerts, security blocks, danger tags |
| `accentamber` | `#ea580c` | 🟧 | Challenge boxes, warning alerts, caution chips |
| `accentemerald` | `#16a34a` | 🟩 | Architectural takeaways, tips, success badges |
| `accentsky` | `#0284c7` | 🟦 | Concept callouts, info blocks, protocol tags |
| `slate900` | `#0f172a` | ⬛ | Primary body typography and dark titles |
| `slate700` | `#334155` | ◼️ | Secondary body text and headers |
| `slate500` | `#64748b` | ◾ | Card metadata labels, captions, footers |
| `slate300` | `#cbd5e1` | ◽ | Crisp border rules and subtle card dividers |
| `slate100` | `#f1f5f9` | ▫️ | Card headers, table header backgrounds |
| `slate50` | `#f8fafc` | ▫️ | Zebra table alternate rows, card backgrounds |

---

## License

MIT License. Crafted with ❤️ for VimTeX, LaTeX, and technical writing enthusiasts.
