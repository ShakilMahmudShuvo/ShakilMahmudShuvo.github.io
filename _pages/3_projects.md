---
layout: page
permalink: /projects/
title: Projects
description: Research systems and development projects, from published ML models to shipped web apps.
nav: true
nav_order: 4
---

<style>
html { scroll-behavior: smooth; }

/* ── Section label ───────────────────────────────────────────────────── */
.proj-section-label {
  display: flex;
  align-items: center;
  gap: 0.85rem;
  margin: 0 0 1.25rem 0;
}
.proj-section-label .section-badge {
  font-size: 0.78rem; font-weight: 700;
  color: #0d9488; background: #f0fdfa;
  border: 1.5px solid #99f6e4; border-radius: 20px;
  padding: 3px 14px; white-space: nowrap; flex-shrink: 0;
}
.proj-section-label::after {
  content: ''; flex: 1; height: 1px; background: #e2e8f0;
}
html[data-theme='dark'] .proj-section-label .section-badge {
  background: #0d2220; border-color: #1a5c56; color: #2dd4bf;
}

/* ── Project card ────────────────────────────────────────────────────── */
.proj-card {
  position: relative;
  border-left: 3px solid #0d9488;
  background: var(--global-card-bg-color, #fff);
  border-radius: 0 8px 8px 0;
  padding: 1.2rem 1.4rem;
  margin-bottom: 0.75rem;
  box-shadow: 0 1px 3px rgba(0,0,0,0.05);
  transition: box-shadow 0.2s, border-color 0.2s;
  display: flex;
  gap: 1.1rem;
  align-items: flex-start;
}
.proj-card:hover { box-shadow: 0 3px 12px rgba(13,148,136,0.1); }
.proj-card.dev   { border-left-color: #64748b; }
.proj-card.award { border-left-color: #f59e0b; }
html[data-theme='dark'] .proj-card { background: #1e1e1e; box-shadow: 0 1px 3px rgba(0,0,0,0.3); }

/* Thumbnail */
.proj-thumb {
  flex-shrink: 0;
  width: 110px; height: 80px;
  border-radius: 6px;
  overflow: hidden;
  border: 1px solid var(--global-divider-color, #e9ecef);
  background: #f1f5f9;
  display: flex; align-items: center; justify-content: center;
}
.proj-thumb img {
  width: 100%; height: 100%;
  object-fit: cover;
  transition: transform 0.3s;
}
.proj-card:hover .proj-thumb img { transform: scale(1.06); }
.proj-thumb-placeholder {
  width: 100%; height: 100%;
  display: flex; align-items: center; justify-content: center;
  font-size: 1.6rem;
  background: linear-gradient(135deg, #0d9488, #0f4d47);
  color: rgba(255,255,255,0.7);
}
.proj-thumb-placeholder.dev { background: linear-gradient(135deg, #475569, #1e293b); }
html[data-theme='dark'] .proj-thumb { border-color: #2d3748; background: #252525; }

/* Content block */
.proj-content { flex: 1; min-width: 0; }

@media (max-width: 576px) {
  .proj-card { flex-direction: column; }
  .proj-thumb { width: 100%; height: 140px; }
}

/* Title */
.proj-title {
  font-size: 0.975rem; font-weight: 600;
  line-height: 1.45; margin: 0 0 0.4rem 0;
  color: var(--global-text-color);
}
.proj-title a { color: inherit; text-decoration: none; }
.proj-title a:hover { color: #0d9488; }

/* Description */
.proj-desc {
  font-size: 0.87rem; color: var(--global-text-color-light, #6c757d);
  line-height: 1.65; margin: 0 0 0.75rem 0;
}

/* Badges row */
.proj-badges {
  display: flex; flex-wrap: wrap; gap: 5px;
  margin-bottom: 0.75rem;
}
.proj-badge {
  font-size: 0.67rem; font-weight: 700;
  padding: 2px 8px; border-radius: 3px;
  letter-spacing: 0.4px; text-transform: uppercase;
}
.proj-badge.acm    { background:#e8f4fd; color:#1565c0; }
.proj-badge.ieee   { background:#e8f5e9; color:#2e7d32; }
.proj-badge.spring { background:#fff3e0; color:#e65100; }
.proj-badge.award  { background:#fefce8; color:#92400e; border:1px solid #fde68a; }
.proj-badge.ongoing{ background:#f0fdf4; color:#16a34a; border:1px solid #bbf7d0; }
html[data-theme='dark'] .proj-badge.acm    { background:#0d2137; color:#64b5f6; }
html[data-theme='dark'] .proj-badge.ieee   { background:#0a2510; color:#81c784; }
html[data-theme='dark'] .proj-badge.spring { background:#2d1600; color:#ffb74d; }
html[data-theme='dark'] .proj-badge.award  { background:#2d1e00; color:#fbbf24; border-color:#78350f; }
html[data-theme='dark'] .proj-badge.ongoing{ background:#052e16; border-color:#166534; color:#4ade80; }

/* Tech tags */
.proj-tags {
  display: flex; flex-wrap: wrap; gap: 5px;
  margin-bottom: 0.8rem;
}
.proj-tag {
  font-size: 0.7rem; background: #f1f5f9;
  color: #475569; border-radius: 4px;
  padding: 2px 8px; font-weight: 500;
}
html[data-theme='dark'] .proj-tag { background: #2d3748; color: #94a3b8; }

/* Action buttons */
.proj-actions { display: flex; flex-wrap: wrap; gap: 5px; }
.proj-btn {
  font-size: 0.75rem; font-weight: 500;
  padding: 3px 11px; border-radius: 4px;
  cursor: pointer; text-decoration: none;
  display: inline-flex; align-items: center; gap: 4px;
  transition: all 0.15s; border: 1px solid transparent;
  line-height: 1.6;
}
.proj-btn i { font-size: 0.65rem; }
.proj-btn-gh     { border-color: #0d9488; color: #0d9488; }
.proj-btn-gh:hover { background: #0d9488; color: #fff; text-decoration: none; }
.proj-btn-paper  { border-color: #e2e8f0; color: #64748b; }
.proj-btn-paper:hover { background: #f0fdfa; color: #0d9488; border-color: #99f6e4; text-decoration: none; }
.proj-btn-kaggle { border-color: #20beff; color: #20beff; }
.proj-btn-kaggle:hover { background: #20beff; color: #fff; text-decoration: none; }
html[data-theme='dark'] .proj-btn-gh    { border-color:#2dd4bf; color:#2dd4bf; }
html[data-theme='dark'] .proj-btn-gh:hover { background:#0d9488; border-color:#0d9488; color:#fff; }
html[data-theme='dark'] .proj-btn-paper { border-color:#2d3748; color:#64748b; }
html[data-theme='dark'] .proj-btn-paper:hover { background:#0d2220; color:#2dd4bf; border-color:#1a5c56; }

/* GitHub CTA */
.proj-github-cta {
  text-align: center;
  margin: 2.5rem 0 1rem;
  padding: 1.75rem;
  border: 1px dashed #e2e8f0;
  border-radius: 10px;
}
.proj-github-cta p { font-size: 0.88rem; color: var(--global-text-color-light); margin: 0.5rem 0 1rem; }
html[data-theme='dark'] .proj-github-cta { border-color: #2d3748; }
</style>

<!-- ── Research Projects ──────────────────────────────────────────────── -->
<div class="proj-section-label"><span class="section-badge">Research Projects</span></div>

<div class="proj-card award">
  <div class="proj-thumb">
    <div class="proj-thumb-placeholder"><i class="fas fa-shield-alt"></i></div>
  </div>
  <div class="proj-content">
    <h3 class="proj-title">
      <a href="/projects/p_acbtrinet/">ACB-TriNet: Malware Classification with Asymmetric Convolutions & Triplet Attention</a>
    </h3>
    <p class="proj-desc">Dual-branch deep learning system converting malware binaries into three-channel image representations (grayscale, entropy, Sobel edges) for accurate family classification. Achieves 98.98% accuracy on Malimg dataset.</p>
    <div class="proj-badges">
      <span class="proj-badge spring">Springer</span>
      <span class="proj-badge award">🏆 Best Technical Paper · ICETCS 2025</span>
    </div>
    <div class="proj-tags">
      <span class="proj-tag">Python</span><span class="proj-tag">PyTorch</span><span class="proj-tag">CNN</span><span class="proj-tag">Attention</span><span class="proj-tag">Cybersecurity</span>
    </div>
    <div class="proj-actions">
      <a href="https://github.com/ShakilMahmudShuvo/ACB-TriNet" class="proj-btn proj-btn-gh" target="_blank"><i class="fab fa-github"></i> GitHub</a>
      <a href="https://drive.google.com/file/d/1fXkstzlnxIDUL3eVXNbeickwkAImdDvD/view" class="proj-btn proj-btn-paper" target="_blank"><i class="fas fa-file-pdf"></i> Preprint</a>
    </div>
  </div>
</div>

<div class="proj-card">
  <div class="proj-thumb">
    <img src="/assets/img/project/network_intrusion.svg" alt="Network Intrusion Detection">
  </div>
  <div class="proj-content">
    <h3 class="proj-title">
      <a href="/projects/p_network_intrusion/">Network Intrusion Detection with Explainable AI</a>
    </h3>
    <p class="proj-desc">Deep learning architectures for detecting network intrusions, augmented with XAI methods (SHAP, LIME) to explain model decisions, addressing the interpretability gap in network security systems.</p>
    <div class="proj-badges">
      <span class="proj-badge ongoing">⚡ Ongoing Research</span>
    </div>
    <div class="proj-tags">
      <span class="proj-tag">Python</span><span class="proj-tag">PyTorch</span><span class="proj-tag">SHAP</span><span class="proj-tag">LIME</span><span class="proj-tag">Network Security</span><span class="proj-tag">XAI</span>
    </div>
    <div class="proj-actions">
      <a href="https://github.com/ShakilMahmudShuvo/Network-Intrusion-Detection-Using-XAI" class="proj-btn proj-btn-gh" target="_blank"><i class="fab fa-github"></i> GitHub</a>
    </div>
  </div>
</div>

<div class="proj-card">
  <div class="proj-thumb">
    <img src="/assets/img/project/suicidal.jpg" alt="Suicidal Ideation Detection">
  </div>
  <div class="proj-content">
    <h3 class="proj-title">
      <a href="/projects/p_suicidal_ideation/">Suicidal Ideation Detection Using Language Models</a>
    </h3>
    <p class="proj-desc">Transformer-based NLP system detecting suicidal ideation in Reddit posts by combining pre-trained language models (BERT, RoBERTa, DistilBERT) with Bidirectional GRU. BERT-BiGRU achieves 95.8% accuracy with only 4.17% false negative rate.</p>
    <div class="proj-badges">
      <span class="proj-badge acm">ACM · ICCA 2024</span>
    </div>
    <div class="proj-tags">
      <span class="proj-tag">Python</span><span class="proj-tag">PyTorch</span><span class="proj-tag">BERT</span><span class="proj-tag">Bi-GRU</span><span class="proj-tag">NLP</span><span class="proj-tag">Mental Health AI</span>
    </div>
    <div class="proj-actions">
      <a href="https://github.com/ShakilMahmudShuvo/SuicidalIdeationDetection" class="proj-btn proj-btn-gh" target="_blank"><i class="fab fa-github"></i> GitHub</a>
      <a href="https://dl.acm.org/doi/10.1145/3723178.3723242" class="proj-btn proj-btn-paper" target="_blank"><i class="fas fa-file-alt"></i> ACM Paper</a>
    </div>
  </div>
</div>

<div class="proj-card">
  <div class="proj-thumb">
    <img src="/assets/img/project/retinal_oct.jpg" alt="Retinal Disease Classification">
  </div>
  <div class="proj-content">
    <h3 class="proj-title">
      <a href="/projects/p_retinal_disease_oct/">Retinal Disease Classification using OCT Images</a>
    </h3>
    <p class="proj-desc">Hybrid CNN architectures combining CBAM attention and skip connections with pre-trained backbones (DenseNet121, ResNet50, VGG16, Xception, EfficientNet) for multi-class retinal disease classification. DenseNet-CBAM-Skip achieves 96.28% accuracy.</p>
    <div class="proj-badges">
      <span class="proj-badge acm">ACM · ICCA 2024</span>
    </div>
    <div class="proj-tags">
      <span class="proj-tag">Python</span><span class="proj-tag">TensorFlow</span><span class="proj-tag">CBAM</span><span class="proj-tag">Transfer Learning</span><span class="proj-tag">Medical Imaging</span>
    </div>
    <div class="proj-actions">
      <a href="https://github.com/ShakilMahmudShuvo/RetinalDiseaseMulticlassClassification" class="proj-btn proj-btn-gh" target="_blank"><i class="fab fa-github"></i> GitHub</a>
      <a href="https://dl.acm.org/doi/10.1145/3723178.3723304" class="proj-btn proj-btn-paper" target="_blank"><i class="fas fa-file-alt"></i> ACM Paper</a>
    </div>
  </div>
</div>

<!-- ── Dev / Side Projects ────────────────────────────────────────────── -->
<div class="proj-section-label" style="margin-top:2.5rem;"><span class="section-badge">Development Projects</span></div>

<div class="proj-card dev">
  <div class="proj-thumb">
    <img src="/assets/img/project/table.png" alt="Borderless Table Detection">
  </div>
  <div class="proj-content">
    <h3 class="proj-title">
      <a href="/projects/p_borderless_tables/">Borderless Table Detection from Images</a>
    </h3>
    <p class="proj-desc">Deep learning pipeline using Table Transformer (TATR) to detect and extract tables without visible borders from document images, solving a key gap in document intelligence systems.</p>
    <div class="proj-tags">
      <span class="proj-tag">Python</span><span class="proj-tag">HuggingFace</span><span class="proj-tag">Table Transformer</span><span class="proj-tag">Document AI</span><span class="proj-tag">Computer Vision</span>
    </div>
    <div class="proj-actions">
      <a href="https://github.com/ShakilMahmudShuvo/Borderless-Tables-Detection" class="proj-btn proj-btn-gh" target="_blank"><i class="fab fa-github"></i> GitHub</a>
      <a href="https://www.kaggle.com/code/shakilmahmudshuvo/borderless-table-detection" class="proj-btn proj-btn-kaggle" target="_blank"><i class="fab fa-kaggle"></i> Kaggle</a>
    </div>
  </div>
</div>

<div class="proj-card dev">
  <div class="proj-thumb">
    <img src="/assets/img/project/doctor_bhai.png" alt="Doctor Bhai">
  </div>
  <div class="proj-content">
    <h3 class="proj-title">
      <a href="/projects/p_doctor_bhai/">Doctor Bhai: Healthcare Assistance Platform</a>
    </h3>
    <p class="proj-desc">Full-stack web platform connecting patients with doctors for appointment booking and telemedicine consultations in Rajshahi, Bangladesh. Built as a university capstone project.</p>
    <div class="proj-tags">
      <span class="proj-tag">Django</span><span class="proj-tag">PostgreSQL</span><span class="proj-tag">Bootstrap</span><span class="proj-tag">Web Dev</span>
    </div>
    <div class="proj-actions">
      <a href="https://github.com/ShakilMahmudShuvo/Doctor-Bhai" class="proj-btn proj-btn-gh" target="_blank"><i class="fab fa-github"></i> GitHub</a>
    </div>
  </div>
</div>

<div class="proj-github-cta">
  <i class="fab fa-github" style="font-size:1.8rem;color:#64748b;"></i>
  <p>More experiments, notebooks, and side projects on GitHub</p>
  <a href="https://github.com/ShakilMahmudShuvo" class="cta-primary" target="_blank" style="display:inline-flex;align-items:center;gap:6px;padding:8px 20px;font-size:0.875rem;font-weight:500;border-radius:6px;text-decoration:none;background:#0d9488;color:#fff;border:1px solid #0d9488;">
    <i class="fab fa-github"></i> View GitHub Profile
  </a>
</div>
