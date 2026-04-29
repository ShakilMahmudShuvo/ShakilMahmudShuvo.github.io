---
layout: page
permalink: /research/
title: Research
description: Machine learning research in healthcare AI. medical imaging, NLP for mental health, and deep learning systems.
nav: true
nav_order: 2
---

<style>
html { scroll-behavior: smooth; }

/* ── Page header supplement ───────────────────────────────────────────── */
.research-meta {
  display: flex;
  align-items: center;
  justify-content: space-between;
  flex-wrap: wrap;
  gap: 0.75rem;
  margin-bottom: 2.5rem;
  padding-bottom: 1.5rem;
  border-bottom: 1px solid var(--global-divider-color, #e9ecef);
}

.scholar-link {
  display: inline-flex;
  align-items: center;
  gap: 9px;
  font-size: 0.875rem;
  font-weight: 500;
  color: #0d9488;
  text-decoration: none;
  border: 1px solid #99f6e4;
  border-radius: 6px;
  padding: 6px 14px;
  background: #f0fdfa;
  transition: all 0.15s;
}
.scholar-link:hover {
  color: #0b7a72;
  border-color: #0d9488;
  background: #ccfbf1;
  text-decoration: none;
}
.scholar-link .scholar-icon { font-size: 1.2rem; color: #0d9488; }
.scholar-link .ext-icon { font-size: 0.6rem; opacity: 0.6; }

html[data-theme='dark'] .scholar-link {
  background: #0d2220;
  border-color: #1a5c56;
  color: #2dd4bf;
}
html[data-theme='dark'] .scholar-link:hover {
  background: #134e4a;
  border-color: #2dd4bf;
  color: #5eead4;
}
html[data-theme='dark'] .scholar-link .scholar-icon { color: #2dd4bf; }

/* ── Year section ─────────────────────────────────────────────────────── */
.pub-year-section {
  margin-bottom: 2.5rem;
}

.pub-year-label {
  display: flex;
  align-items: center;
  gap: 0.85rem;
  margin: 0 0 1.25rem 0;
}

.pub-year-label .year-badge {
  font-size: 0.78rem;
  font-weight: 700;
  color: #0d9488;
  background: #f0fdfa;
  border: 1.5px solid #99f6e4;
  border-radius: 20px;
  padding: 3px 14px;
  white-space: nowrap;
  letter-spacing: 0.3px;
  flex-shrink: 0;
}

.pub-year-label::after {
  content: '';
  flex: 1;
  height: 1px;
  background: #e2e8f0;
}

html[data-theme='dark'] .pub-year-label .year-badge {
  background: #0d2220;
  border-color: #1a5c56;
  color: #2dd4bf;
}

/* ── Paper card ───────────────────────────────────────────────────────── */
.pub-card {
  position: relative;
  border-left: 3px solid #dee2e6;
  background: var(--global-card-bg-color, #fff);
  border-radius: 0 8px 8px 0;
  padding: 1.25rem 1.5rem;
  margin-bottom: 0.75rem;
  box-shadow: 0 1px 3px rgba(0,0,0,0.05);
  transition: box-shadow 0.2s, border-color 0.2s;
}

.pub-card:hover {
  box-shadow: 0 3px 10px rgba(0,0,0,0.08);
}

.pub-card.acm    { border-left-color: #1565c0; }
.pub-card.ieee   { border-left-color: #2e7d32; }
.pub-card.spring { border-left-color: #e65100; }

html[data-theme='dark'] .pub-card {
  background: #1e1e1e;
  box-shadow: 0 1px 3px rgba(0,0,0,0.3);
}
html[data-theme='dark'] .pub-card:hover {
  box-shadow: 0 3px 10px rgba(0,0,0,0.4);
}

/* Title */
.pub-title {
  font-size: 0.975rem;
  font-weight: 600;
  line-height: 1.5;
  margin: 0 0 0.5rem 0;
  color: var(--global-text-color);
}

.pub-title a {
  color: inherit;
  text-decoration: none;
}

.pub-title a:hover {
  color: var(--global-theme-color, #4e79a7);
}

/* Authors */
.pub-authors {
  font-size: 0.85rem;
  color: var(--global-text-color-light, #6c757d);
  margin-bottom: 0.35rem;
  line-height: 1.5;
}

.pub-authors strong {
  color: var(--global-text-color);
  font-weight: 600;
}

/* Venue */
.pub-venue-row {
  display: flex;
  align-items: center;
  gap: 8px;
  flex-wrap: wrap;
  margin-bottom: 0.85rem;
}

.pub-venue {
  font-size: 0.82rem;
  font-style: italic;
  color: var(--global-text-color-light, #6c757d);
}

.pub-badge {
  display: inline-block;
  font-size: 0.68rem;
  font-weight: 700;
  padding: 1px 7px;
  border-radius: 3px;
  letter-spacing: 0.4px;
  font-style: normal;
  text-transform: uppercase;
}

.pub-badge.acm    { background: #e8f4fd; color: #1565c0; }
.pub-badge.ieee   { background: #e8f5e9; color: #2e7d32; }
.pub-badge.spring { background: #fff3e0; color: #e65100; }
.pub-badge.award  { background: #fefce8; color: #92400e; border: 1px solid #fde68a; }

html[data-theme='dark'] .pub-badge.award { background: #2d1e00; color: #fbbf24; border-color: #78350f; }

.pub-accepted {
  display: inline-flex;
  align-items: center;
  gap: 5px;
  font-size: 0.72rem;
  font-weight: 600;
  color: #16a34a;
  background: #f0fdf4;
  border: 1px solid #bbf7d0;
  border-radius: 3px;
  padding: 1px 8px;
  font-style: normal;
}
.pub-accepted i { font-size: 0.6rem; }
html[data-theme='dark'] .pub-accepted { background: #052e16; border-color: #166534; color: #4ade80; }

html[data-theme='dark'] .pub-badge.acm    { background: #0d2137; color: #64b5f6; }
html[data-theme='dark'] .pub-badge.ieee   { background: #0a2510; color: #81c784; }
html[data-theme='dark'] .pub-badge.spring { background: #2d1600; color: #ffb74d; }

/* Action buttons */
.pub-actions {
  display: flex;
  flex-wrap: wrap;
  gap: 5px;
}

.pub-btn {
  font-size: 0.75rem;
  font-weight: 500;
  padding: 3px 11px;
  border-radius: 4px;
  cursor: pointer;
  text-decoration: none;
  display: inline-flex;
  align-items: center;
  gap: 4px;
  transition: all 0.15s ease;
  line-height: 1.6;
  border: 1px solid transparent;
  background: transparent;
}

.pub-btn i { font-size: 0.65rem; }

.pub-btn-paper  { border-color: #0d9488; color: #0d9488; }
.pub-btn-paper:hover { background: #0d9488; color: #fff; text-decoration: none; }

.pub-btn-abstract { border-color: #99f6e4; color: #0d9488; background: #f0fdfa; }
.pub-btn-abstract:hover,
.pub-btn-abstract.active { background: #0d9488; border-color: #0d9488; color: #fff; }

.pub-btn-cite { border-color: #e2e8f0; color: #64748b; }
.pub-btn-cite:hover { background: #f0fdfa; color: #0d9488; border-color: #99f6e4; }
.pub-btn-cite.copied { background: #d1fae5; border-color: #6ee7b7; color: #065f46; }

html[data-theme='dark'] .pub-btn-paper  { border-color: #2dd4bf; color: #2dd4bf; }
html[data-theme='dark'] .pub-btn-paper:hover  { background: #0d9488; border-color: #0d9488; color: #fff; }
html[data-theme='dark'] .pub-btn-abstract { border-color: #1a5c56; color: #2dd4bf; background: #0d2220; }
html[data-theme='dark'] .pub-btn-abstract:hover,
html[data-theme='dark'] .pub-btn-abstract.active { background: #0d9488; border-color: #0d9488; color: #fff; }
html[data-theme='dark'] .pub-btn-cite { border-color: #2d3748; color: #64748b; }
html[data-theme='dark'] .pub-btn-cite:hover { background: #0d2220; color: #2dd4bf; border-color: #1a5c56; }

/* Abstract */
.pub-abstract-text {
  display: none;
  margin-top: 0.9rem;
  padding: 0.9rem 1rem;
  background: var(--global-bg-color, #f8f9fa);
  border-radius: 6px;
  font-size: 0.85rem;
  line-height: 1.75;
  color: var(--global-text-color-light, #555);
}

html[data-theme='dark'] .pub-abstract-text {
  background: #161616;
}

/* ── ML history bar ──────────────────────────────────────────────────── */
.ml-history-bar {
  display: flex;
  align-items: baseline;
  gap: 10px;
  background: #f8fafb;
  border: 1px solid #e2e8f0;
  border-left: 3px solid #0d9488;
  border-radius: 0 8px 8px 0;
  padding: 0.6rem 1rem;
  margin-bottom: 2rem;
  font-size: 0.82rem;
  line-height: 1.6;
  color: #475569;
  flex-wrap: wrap;
}
.ml-history-bar-label {
  font-size: 0.65rem; font-weight: 700;
  text-transform: uppercase; letter-spacing: 0.7px;
  color: #0d9488; white-space: nowrap; flex-shrink: 0;
}
.ml-history-bar-text { flex: 1; min-width: 0; }
.ml-history-bar-year { font-size: 0.7rem; color: #94a3b8; white-space: nowrap; flex-shrink: 0; }
html[data-theme='dark'] .ml-history-bar { background: #141414; border-color: #2d3748; border-left-color: #2dd4bf; color: #94a3b8; }
html[data-theme='dark'] .ml-history-bar-label { color: #2dd4bf; }

/* ── Surprise me button ──────────────────────────────────────────────── */
#surprise-btn {
  display: inline-flex;
  align-items: center;
  gap: 7px;
  font-size: 0.875rem;
  font-weight: 500;
  color: #64748b;
  background: transparent;
  border: 1px solid #e2e8f0;
  border-radius: 6px;
  padding: 6px 14px;
  cursor: pointer;
  transition: all 0.15s;
}
#surprise-btn:hover {
  border-color: #0d9488;
  color: #0d9488;
  background: #f0fdfa;
}
#surprise-btn i { font-size: 0.85rem; }
html[data-theme='dark'] #surprise-btn { border-color: #2d3748; color: #94a3b8; }
html[data-theme='dark'] #surprise-btn:hover { border-color: #2dd4bf; color: #2dd4bf; background: #0d2220; }

@keyframes surprise-pulse {
  0%   { box-shadow: 0 0 0 0 rgba(13,148,136,0.55); }
  40%  { box-shadow: 0 0 0 8px rgba(13,148,136,0.2); }
  70%  { box-shadow: 0 0 0 14px rgba(13,148,136,0); }
  100% { box-shadow: 0 0 0 0 rgba(13,148,136,0); }
}
.pub-card.surprise-highlight {
  animation: surprise-pulse 1.6s ease-out 3;
  border-left-color: #0d9488 !important;
  outline: 2px solid rgba(13,148,136,0.35);
}

/* Back to top */
#backToTop {
  position: fixed;
  bottom: 24px;
  right: 24px;
  z-index: 999;
  width: 36px;
  height: 36px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #868e96;
  border: none;
  color: #fff;
  opacity: 0;
  transform: translateY(8px);
  transition: opacity 0.2s, transform 0.2s;
  cursor: pointer;
  font-size: 12px;
}
#backToTop.show { opacity: 1; transform: translateY(0); }
#backToTop:hover { background: #495057; }
</style>

<button id="backToTop"><i class="fas fa-arrow-up"></i></button>

<div class="ml-history-bar" id="ml-history-bar" style="display:none">
  <span class="ml-history-bar-label"><i class="fas fa-history"></i>&nbsp; On this day in ML / AI</span>
  <span class="ml-history-bar-text" id="ml-history-bar-text"></span>
  <span class="ml-history-bar-year" id="ml-history-bar-year"></span>
</div>

<div class="research-meta">
  <a href="https://scholar.google.com/citations?user=EOsiW3sAAAAJ&hl=en" target="_blank" class="scholar-link">
    <i class="ai ai-google-scholar scholar-icon"></i>
    Google Scholar
    <i class="fas fa-external-link-alt ext-icon"></i>
  </a>
  <button id="surprise-btn"><i class="fas fa-dice"></i> Surprise me</button>
</div>

<!-- ── 2025 ──────────────────────────────────────────────────────────── -->
<div class="pub-year-section">
<div class="pub-year-label"><span class="year-badge">2025</span></div>

<div class="pub-card spring">
  <h3 class="pub-title">
    <a href="https://drive.google.com/file/d/1fXkstzlnxIDUL3eVXNbeickwkAImdDvD/view" target="_blank">
      ACB-TriNet: Asymmetric Convolutions and Triplet Attention for Effective Malware Classification
    </a>
  </h3>
  <p class="pub-authors"><strong>Shakil Mahmud Shuvo</strong>, Rezwanul Haque</p>
  <div class="pub-venue-row">
    <span class="pub-venue">International Conference on Emerging Trends in Cybersecurity (ICETCS 2025, UK)</span>
    <span class="pub-badge spring">Springer</span>
    <span class="pub-badge award">🏆 Best Technical Paper</span>
    <span class="pub-accepted"><i class="fas fa-check-circle"></i> Accepted</span>
  </div>
  <div class="pub-actions">
    <a href="https://drive.google.com/file/d/1fXkstzlnxIDUL3eVXNbeickwkAImdDvD/view" class="pub-btn pub-btn-paper" target="_blank"><i class="fas fa-file-pdf"></i> Preprint</a>
    <button class="pub-btn pub-btn-abstract"><i class="fas fa-align-left"></i> Abstract</button>
  </div>
  <div class="pub-abstract-text">With malware's rapid expansion and increasing complexity, classic detection methods based on signatures and behavioral analysis have significant limitations. This study introduces ACB-TriNet, a dual-branch deep learning architecture that converts malware samples into three-channel image representations using grayscale, entropy, and Sobel edge features. These representations enable the model to capture both global structural patterns and finely detailed local textures. The framework includes Asymmetric Convolution Blocks (ACBs) for directional feature extraction, Triplet Attention for cross-dimensional refinement, and a Global Attention Block (GAB) for final feature fusion. A class-balanced focal loss is used to reduce data imbalance and increase minority-class sensitivity. Experiments with the Malimg dataset demonstrate that ACB-TriNet achieves 98.98% accuracy, a 98.81% F1-score, and a 2.28% false negative rate, drastically reducing misclassification errors and exceeding previous attention-based models.</div>
</div>

</div>

<!-- ── 2024 ──────────────────────────────────────────────────────────── -->
<div class="pub-year-section">
<div class="pub-year-label"><span class="year-badge">2024</span></div>

<div class="pub-card acm">
  <h3 class="pub-title">
    <a href="https://dl.acm.org/doi/10.1145/3723178.3723242" target="_blank">
      Early Detection of Suicidal Ideation Using Bidirectional GRU and Language Models
    </a>
  </h3>
  <p class="pub-authors"><strong>Shakil Mahmud Shuvo</strong>, Navia Novely, Md. Farukuzzaman Faruk, Azmain Yakin Srizon, S. M. Mahedy Hasan</p>
  <div class="pub-venue-row">
    <span class="pub-venue">3rd International Conference on Computing Advancements (ICCA)</span>
    <span class="pub-badge acm">ACM</span>
  </div>
  <div class="pub-actions">
    <a href="https://dl.acm.org/doi/10.1145/3723178.3723242" class="pub-btn pub-btn-paper" target="_blank"><i class="fas fa-file-alt"></i> Paper</a>
    <button class="pub-btn pub-btn-abstract"><i class="fas fa-align-left"></i> Abstract</button>
    <button class="pub-btn pub-btn-cite" data-key="shuvo2024suicidal"><i class="fas fa-quote-right"></i> Cite</button>
  </div>
  <div class="pub-abstract-text">Suicide has recently emerged as a leading cause of death worldwide, underlining the importance of effective preventative measures. Online social media posts can provide valuable insights into people who are suicidal and assist in preventing unfortunate outcomes. This study examined the utilization of Bidirectional GRU to improve text classification using language models, incorporating Bi-GRU layers with popular pre-trained language models like BERT, RoBERTa, DistilBERT, DistilRoBERTa, and ELECTRA-Small. The BERT-BiGRU and DistilBERT-BiGRU models demonstrated notable effectiveness, achieving accuracies of 95.8% and 95.2% respectively, with remarkably low false negative rates of 4.17% and 2.80%.</div>
</div>

<div class="pub-card acm">
  <h3 class="pub-title">
    <a href="https://dl.acm.org/doi/10.1145/3723178.3723304" target="_blank">
      Improving Pre-Trained CNNs with CBAM and Skip Connections for Multi-Class Retinal Diseases Classification using OCT Images
    </a>
  </h3>
  <p class="pub-authors">Navia Novely, <strong>Shakil Mahmud Shuvo</strong>, Md. Farukuzzaman Faruk</p>
  <div class="pub-venue-row">
    <span class="pub-venue">3rd International Conference on Computing Advancements (ICCA)</span>
    <span class="pub-badge acm">ACM</span>
  </div>
  <div class="pub-actions">
    <a href="https://dl.acm.org/doi/10.1145/3723178.3723304" class="pub-btn pub-btn-paper" target="_blank"><i class="fas fa-file-alt"></i> Paper</a>
    <button class="pub-btn pub-btn-abstract"><i class="fas fa-align-left"></i> Abstract</button>
    <button class="pub-btn pub-btn-cite" data-key="novely2024retinal"><i class="fas fa-quote-right"></i> Cite</button>
  </div>
  <div class="pub-abstract-text">Millions of people suffer from retinal defects worldwide. Early discovery and treatment of these anomalies could halt further progression, saving many people from preventable blindness. This study presented a hybrid framework utilizing pre-trained models (DenseNet121, ResNet50, VGG16, Xception, and EfficientB1) incorporating the Convolutional Block Attention Module (CBAM) and skip connections for accurate retinal disease classification. The DenseNet-CBAM-Skip and Xception-CBAM-Skip architectures achieved high accuracies of 96.28% and 96.11% respectively.</div>
</div>

<div class="pub-card acm">
  <h3 class="pub-title">
    <a href="https://dl.acm.org/doi/10.1145/3723178.3723308" target="_blank">
      Advancing Glioma Segmentation: A Robust 3D Residual Attention U-Net Framework for Multimodal MRI Images
    </a>
  </h3>
  <p class="pub-authors">Soumit Das, Md. Farukuzzaman Faruk, <strong>Shakil Mahmud Shuvo</strong>, Azmain Yakin Srizon, S. M. Mahedy Hasan, Md. Al Mamun</p>
  <div class="pub-venue-row">
    <span class="pub-venue">3rd International Conference on Computing Advancements (ICCA)</span>
    <span class="pub-badge acm">ACM</span>
  </div>
  <div class="pub-actions">
    <a href="https://dl.acm.org/doi/10.1145/3723178.3723308" class="pub-btn pub-btn-paper" target="_blank"><i class="fas fa-file-alt"></i> Paper</a>
    <button class="pub-btn pub-btn-abstract"><i class="fas fa-align-left"></i> Abstract</button>
    <button class="pub-btn pub-btn-cite" data-key="das2024glioma"><i class="fas fa-quote-right"></i> Cite</button>
  </div>
  <div class="pub-abstract-text">Brain tumors are abnormal growths of cells within the brain, posing significant health challenges. Glioma, originating from supportive glial tissue, is notably concerning due to its low survival rate. This study presents a 3D Residual Attention U-Net architecture that integrates spatial and channel attention mechanisms for enhanced feature representation. Using a modified Focal-Dice loss function to handle class imbalance, the proposed architecture achieves a Dice coefficient of 0.9002 and an IoU of 0.8272.</div>
</div>

</div>

<!-- ── 2023 ──────────────────────────────────────────────────────────── -->
<div class="pub-year-section">
<div class="pub-year-label"><span class="year-badge">2023</span></div>

<div class="pub-card spring">
  <h3 class="pub-title">
    <a href="https://link.springer.com/chapter/10.1007/978-981-99-8937-9_38" target="_blank">
      Multi-class Brain Tumor Classification with DenseNet-Based Deep Learning Features and Ensemble of Machine Learning Approaches
    </a>
  </h3>
  <p class="pub-authors"><strong>Shakil Mahmud Shuvo</strong>, Md. Farukuzzaman Faruk, Azmain Yakin Srizon, Tahsen Islam Sajon, S. M. Mahedy Hasan, Anirban Barai, A. F. M. Minhazur Rahman, Md. Al Mamun</p>
  <div class="pub-venue-row">
    <span class="pub-venue">2nd International Conference on Big Data, IoT and Machine Learning (BIM)</span>
    <span class="pub-badge spring">Springer</span>
  </div>
  <div class="pub-actions">
    <a href="https://link.springer.com/chapter/10.1007/978-981-99-8937-9_38" class="pub-btn pub-btn-paper" target="_blank"><i class="fas fa-file-alt"></i> Paper</a>
    <button class="pub-btn pub-btn-abstract"><i class="fas fa-align-left"></i> Abstract</button>
    <button class="pub-btn pub-btn-cite" data-key="shuvo2023braintumor"><i class="fas fa-quote-right"></i> Cite</button>
  </div>
  <div class="pub-abstract-text">This study proposed a two-phase end-to-end framework comprising DenseNet-121-based deep learning for feature extraction and an ensemble of machine learning methodologies for precise brain tumor classification. Preprocessing MRI images to eliminate unwanted regions enhanced the deep learning model's feature extraction capabilities. The ensemble mechanism achieved an accuracy of 98.86% and an F1-score of 98.76% without any data augmentation, with random forest attaining the highest individual performance.</div>
</div>

<div class="pub-card ieee">
  <h3 class="pub-title">
    <a href="https://ieeexplore.ieee.org/document/10212729" target="_blank">
      A Late Fusion Deep CNN Model for the Classification of Brain Tumors from Multi-Parametric MRI Images
    </a>
  </h3>
  <p class="pub-authors">Anirban Barai, Md. Farukuzzaman Faruk, <strong>Shakil Mahmud Shuvo</strong>, Azmain Yakin Srizon, S. M. Mahedy Hasan, Abu Sayeed</p>
  <div class="pub-venue-row">
    <span class="pub-venue">International Conference on Next-Generation Computing, IoT and Machine Learning (NCIM)</span>
    <span class="pub-badge ieee">IEEE</span>
  </div>
  <div class="pub-actions">
    <a href="https://ieeexplore.ieee.org/document/10212729" class="pub-btn pub-btn-paper" target="_blank"><i class="fas fa-file-alt"></i> Paper</a>
    <button class="pub-btn pub-btn-abstract"><i class="fas fa-align-left"></i> Abstract</button>
    <button class="pub-btn pub-btn-cite" data-key="barai2023latefusion"><i class="fas fa-quote-right"></i> Cite</button>
  </div>
  <div class="pub-abstract-text">This study proposed a late fusion CNN architecture that integrates features extracted from each MRI sequence at a later stage in the classification process, allowing the model to capture unique features of each sequence while leveraging complementary information. The implementation of this cutting-edge deep learning-based late fusion multi-parametric brain tumor classification approach achieved 97% test accuracy.</div>
</div>

<div class="pub-card spring">
  <h3 class="pub-title">
    <a href="https://link.springer.com/chapter/10.1007/978-981-99-8937-9_24" target="_blank">
      Attention Mechanism-Enhanced Deep CNN Architecture for Precise Multi-class Leukemia Classification
    </a>
  </h3>
  <p class="pub-authors">Tahsen Islam Sajon, Barsha Roy, Md. Farukuzzaman Faruk, Azmain Yakin Srizon, <strong>Shakil Mahmud Shuvo</strong>, Md. Al Mamun, Abu Sayeed, S. M. Mahedy Hasan</p>
  <div class="pub-venue-row">
    <span class="pub-venue">2nd International Conference on Big Data, IoT and Machine Learning (BIM)</span>
    <span class="pub-badge spring">Springer</span>
  </div>
  <div class="pub-actions">
    <a href="https://link.springer.com/chapter/10.1007/978-981-99-8937-9_24" class="pub-btn pub-btn-paper" target="_blank"><i class="fas fa-file-alt"></i> Paper</a>
    <button class="pub-btn pub-btn-abstract"><i class="fas fa-align-left"></i> Abstract</button>
    <button class="pub-btn pub-btn-cite" data-key="sajon2023leukemia"><i class="fas fa-quote-right"></i> Cite</button>
  </div>
  <div class="pub-abstract-text">Our proposed deep learning architecture combines transfer learning with attention mechanisms to classify subtypes of leukemia accurately. Using a publicly available dataset of blood cell images adhering to WHO standards, our DenseNet201 with CBAM model achieves a remarkable 99.85% overall accuracy without resorting to data augmentation, surpassing previous methods and attaining state-of-the-art results in leukemia classification literature.</div>
</div>

</div>

<script>
(function () {
  var btn = document.getElementById('backToTop');
  window.addEventListener('scroll', function () {
    btn.classList.toggle('show', window.pageYOffset > 300);
  });
  btn.addEventListener('click', function () { window.scrollTo({ top: 0, behavior: 'smooth' }); });
})();

document.querySelectorAll('.pub-btn-abstract').forEach(function (btn) {
  btn.addEventListener('click', function () {
    var box = this.closest('.pub-card').querySelector('.pub-abstract-text');
    if (!box) return;
    var open = box.style.display === 'block';
    box.style.display = open ? 'none' : 'block';
    this.innerHTML = open
      ? '<i class="fas fa-align-left"></i> Abstract'
      : '<i class="fas fa-align-left"></i> Hide';
    this.classList.toggle('active', !open);
  });
});

var BIBTEX = {
  shuvo2024suicidal:  '@inproceedings{shuvo2024suicidal,\n  author={Shakil Mahmud Shuvo and Navia Novely and Md. Farukuzzaman Faruk and Azmain Yakin Srizon and S. M. Mahedy Hasan},\n  title={Early Detection of Suicidal Ideation Using Bidirectional GRU and Language Models},\n  booktitle={Proc. ICCA 2024}, year={2024}, publisher={ACM}, doi={10.1145/3723178.3723242}\n}',
  novely2024retinal:  '@inproceedings{novely2024retinal,\n  author={Navia Novely and Shakil Mahmud Shuvo and Md. Farukuzzaman Faruk},\n  title={Improving Pre-Trained CNNs with CBAM and Skip Connections for Multi-Class Retinal Diseases Classification using OCT Images},\n  booktitle={Proc. ICCA 2024}, year={2024}, publisher={ACM}, doi={10.1145/3723178.3723304}\n}',
  das2024glioma:      '@inproceedings{das2024glioma,\n  author={Soumit Das and Md. Farukuzzaman Faruk and Shakil Mahmud Shuvo and Azmain Yakin Srizon and S. M. Mahedy Hasan and Md. Al Mamun},\n  title={Advancing Glioma Segmentation: A Robust 3D Residual Attention U-Net Framework for Multimodal MRI Images},\n  booktitle={Proc. ICCA 2024}, year={2024}, publisher={ACM}, doi={10.1145/3723178.3723308}\n}',
  shuvo2023braintumor:'@inproceedings{shuvo2023braintumor,\n  author={Shakil Mahmud Shuvo and Md. Farukuzzaman Faruk and Azmain Yakin Srizon and Tahsen Islam Sajon and S. M. Mahedy Hasan and Anirban Barai and A. F. M. Minhazur Rahman and Md. Al Mamun},\n  title={Multi-class Brain Tumor Classification with DenseNet-Based Deep Learning Features and Ensemble of Machine Learning Approaches},\n  booktitle={Proc. BIM 2023}, year={2023}, publisher={Springer}, doi={10.1007/978-981-99-8937-9_38}\n}',
  barai2023latefusion: '@inproceedings{barai2023latefusion,\n  author={Anirban Barai and Md. Farukuzzaman Faruk and Shakil Mahmud Shuvo and Azmain Yakin Srizon and S. M. Mahedy Hasan and Abu Sayeed},\n  title={A Late Fusion Deep CNN Model for the Classification of Brain Tumors from Multi-Parametric MRI Images},\n  booktitle={Proc. NCIM 2023}, year={2023}, publisher={IEEE}, doi={10.1109/NCIM59001.2023.10212729}\n}',
  sajon2023leukemia:  '@inproceedings{sajon2023leukemia,\n  author={Tahsen Islam Sajon and Barsha Roy and Md. Farukuzzaman Faruk and Azmain Yakin Srizon and Shakil Mahmud Shuvo and Md. Al Mamun and Abu Sayeed and S. M. Mahedy Hasan},\n  title={Attention Mechanism-Enhanced Deep CNN Architecture for Precise Multi-class Leukemia Classification},\n  booktitle={Proc. BIM 2023}, year={2023}, publisher={Springer}, doi={10.1007/978-981-99-8937-9_24}\n}',
};

document.querySelectorAll('.pub-btn-cite').forEach(function (btn) {
  btn.addEventListener('click', function () {
    var bib = BIBTEX[this.dataset.key];
    if (!bib) return;
    var self = this;
    navigator.clipboard.writeText(bib).then(function () {
      self.innerHTML = '<i class="fas fa-check"></i> Copied!';
      self.classList.add('copied');
      setTimeout(function () {
        self.innerHTML = '<i class="fas fa-quote-right"></i> Cite';
        self.classList.remove('copied');
      }, 2000);
    });
  });
});

(function () {
  var ML = [
    { m:1,  d:8,  year:2018, text:'Google DeepMind published AlphaZero. it learned chess, shogi, and Go from scratch in hours, then demolished every specialist program.' },
    { m:1,  d:11, year:2021, text:'OpenAI released CLIP. teaching neural nets to understand images using natural language.' },
    { m:1,  d:24, year:2023, text:'Microsoft announced a $10B investment in OpenAI, supercharging the global AI race.' },
    { m:2,  d:10, year:1996, text:'IBM Deep Blue defeated world chess champion Garry Kasparov in game 1. a first for machines over a reigning human champion.' },
    { m:2,  d:14, year:2019, text:'OpenAI released GPT-2 and partly withheld it. sparking the first mainstream AI safety debate.' },
    { m:3,  d:9,  year:2016, text:'AlphaGo defeated Go world champion Lee Sedol in game 1. move 37 was so unexpected the commentators fell silent.' },
    { m:3,  d:14, year:2023, text:'GPT-4 was released. passing the bar exam and fundamentally shifting expectations of what AI can do.' },
    { m:3,  d:21, year:2016, text:'AlphaGo won its match 4-1 vs Lee Sedol. Game 4\'s "Move 78" by Sedol became known as the "God move."' },
    { m:4,  d:6,  year:1992, text:'Microsoft Research was founded. it would produce landmark work in NLP, computer vision, and AI.' },
    { m:4,  d:23, year:2014, text:'Facebook AI Research (FAIR) was announced. Big Tech\'s first serious commitment to fundamental AI research.' },
    { m:5,  d:11, year:1997, text:'IBM Deep Blue defeated Garry Kasparov in the final rematch game, winning 3.5–2.5. He never played a computer again.' },
    { m:5,  d:28, year:2020, text:'GPT-3 paper published. 175 billion parameters and the first glimpse of emergent AI capabilities.' },
    { m:6,  d:10, year:2014, text:'Ian Goodfellow et al. submitted the GAN paper after conceiving the idea in a late-night bar discussion. One of the most cited DL papers.' },
    { m:6,  d:12, year:2017, text:'"Attention Is All You Need" submitted to arXiv. the Transformer architecture that powers every modern LLM.' },
    { m:6,  d:23, year:1912, text:'Alan Turing was born in London. He would lay the theoretical foundations of computation and AI.' },
    { m:7,  d:9,  year:1956, text:'The Dartmouth Workshop on AI began. the event that gave the field its name, organized by John McCarthy.' },
    { m:7,  d:17, year:2007, text:'Fei-Fei Li formally proposed the ImageNet project. the dataset that fueled the deep learning revolution.' },
    { m:8,  d:4,  year:2020, text:'The GPT-3 API opened to the public, revealing just how capable large language models had become.' },
    { m:9,  d:3,  year:2014, text:'DeepFace, Facebook\'s facial recognition at 97.35% accuracy on LFW, was published. near-human level.' },
    { m:9,  d:25, year:2014, text:'GoogLeNet (Inception) submitted to arXiv. the Inception module slashed parameters vs AlexNet 10×.' },
    { m:10, d:11, year:2018, text:'BERT submitted to arXiv by Devlin et al.. bidirectional Transformers that became the backbone of NLP.' },
    { m:10, d:17, year:2012, text:'AlexNet won ILSVRC 2012 with 15.3% error. 10.8 points better than second place. The moment deep learning took over.' },
    { m:11, d:17, year:2015, text:'Google open-sourced TensorFlow, putting powerful deep learning tools in the hands of every researcher.' },
    { m:11, d:30, year:2022, text:'ChatGPT launched by OpenAI. 1 million users in 5 days. It permanently changed how the world thinks about AI.' },
    { m:12, d:1,  year:2015, text:'"Deep Residual Learning for Image Recognition" (ResNet) submitted. skip connections solved the vanishing gradient problem.' },
    { m:12, d:10, year:2015, text:'OpenAI was founded with a $1B pledge from Elon Musk, Sam Altman, and others, as a nonprofit AI lab.' },
  ];
  var now = new Date(), mo = now.getMonth() + 1, dy = now.getDate();
  var match = ML.filter(function(e){ return e.m === mo && e.d === dy; });
  var entry = match.length ? match[0] : ML[Math.floor(Math.random() * ML.length)];
  var bar = document.getElementById('ml-history-bar');
  var tEl = document.getElementById('ml-history-bar-text');
  var yEl = document.getElementById('ml-history-bar-year');
  if (bar && tEl && yEl) {
    tEl.textContent = entry.text;
    var months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
    yEl.textContent = (match.length ? 'Today · ' : 'Random · ') + months[entry.m-1] + ' ' + entry.d + ', ' + entry.year;
    bar.style.display = 'flex';
  }
})();

(function () {
  var surpriseBtn = document.getElementById('surprise-btn');
  if (!surpriseBtn) return;
  surpriseBtn.addEventListener('click', function () {
    var cards = Array.from(document.querySelectorAll('.pub-card'));
    if (!cards.length) return;
    cards.forEach(function (c) { c.classList.remove('surprise-highlight'); });
    var pick = cards[Math.floor(Math.random() * cards.length)];
    pick.classList.add('surprise-highlight');
    pick.scrollIntoView({ behavior: 'smooth', block: 'center' });
    pick.addEventListener('animationend', function handler() {
      pick.classList.remove('surprise-highlight');
      pick.removeEventListener('animationend', handler);
    });
    surpriseBtn.innerHTML = '<i class="fas fa-dice"></i> Another?';
    setTimeout(function () {
      surpriseBtn.innerHTML = '<i class="fas fa-dice"></i> Surprise me';
    }, 5000);
  });
})();
</script>
