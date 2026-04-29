---
layout: page
title: CV
permalink: /cv/
nav: true
nav_order: 1
description: Curriculum Vitae, Shakil Mahmud Shuvo
---

<script>
document.addEventListener('DOMContentLoaded', function () {
  var h = document.querySelector('.post-header');
  if (h) h.style.display = 'none';
});
</script>

<style>
/* ── Base ──────────────────────────────────────────────────────────────── */
.cv-wrap { text-align: left !important; }
.cv-wrap * { box-sizing: border-box; }

/* ── Hero ──────────────────────────────────────────────────────────────── */
.cv-hero {
  background: linear-gradient(135deg, #1e293b 0%, #0f4d47 100%);
  border-radius: 12px;
  padding: 2.25rem 2rem;
  margin-bottom: 1.5rem;
  display: flex;
  align-items: flex-start;
  gap: 1.75rem;
  position: relative;
  overflow: hidden;
}
.cv-hero::before {
  content: '';
  position: absolute;
  top: -50px; right: -50px;
  width: 220px; height: 220px;
  border-radius: 50%;
  background: rgba(255,255,255,0.03);
  pointer-events: none;
}
.cv-hero::after {
  content: '';
  position: absolute;
  bottom: -70px; left: 35%;
  width: 300px; height: 300px;
  border-radius: 50%;
  background: rgba(255,255,255,0.025);
  pointer-events: none;
}
.cv-photo {
  width: 100px; height: 100px;
  border-radius: 50%;
  border: 3px solid rgba(255,255,255,0.25);
  object-fit: cover;
  flex-shrink: 0;
  position: relative; z-index: 1;
}
.cv-hero-info { flex: 1; position: relative; z-index: 1; }
.cv-name {
  font-size: clamp(1.35rem, 3vw, 1.85rem);
  font-weight: 700;
  color: #fff;
  margin: 0 0 0.4rem 0;
  line-height: 1.2;
  letter-spacing: -0.3px;
}
.cv-roles { display: flex; flex-wrap: wrap; gap: 6px; margin-bottom: 1rem; }
.cv-role-badge {
  display: inline-flex;
  align-items: center;
  gap: 5px;
  background: rgba(255,255,255,0.1);
  border: 1px solid rgba(255,255,255,0.18);
  border-radius: 20px;
  padding: 3px 11px;
  font-size: 0.76rem;
  color: rgba(255,255,255,0.88);
}
.cv-role-badge i { font-size: 0.62rem; opacity: 0.75; }
.cv-contacts { display: flex; flex-wrap: wrap; gap: 6px; margin-bottom: 1.1rem; }
.cv-contact-pill {
  display: inline-flex;
  align-items: center;
  gap: 5px;
  background: rgba(255,255,255,0.08);
  border-radius: 4px;
  padding: 3px 10px;
  font-size: 0.76rem;
  color: rgba(255,255,255,0.82);
  text-decoration: none;
  transition: background 0.15s;
}
.cv-contact-pill:hover { background: rgba(255,255,255,0.16); color: #fff; text-decoration: none; }
.cv-contact-pill i { font-size: 0.7rem; color: #5eead4; }
.cv-dl-btn {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  background: rgba(255,255,255,0.12);
  border: 1px solid rgba(255,255,255,0.3);
  border-radius: 6px;
  padding: 7px 16px;
  font-size: 0.82rem;
  font-weight: 500;
  color: #fff;
  text-decoration: none;
  transition: background 0.15s;
}
.cv-dl-btn:hover { background: rgba(255,255,255,0.22); color: #fff; text-decoration: none; }

/* ── Stats strip ───────────────────────────────────────────────────────── */
.cv-stats {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  border: 1px solid #e2e8f0;
  border-radius: 10px;
  overflow: hidden;
  margin-bottom: 1.75rem;
}
.cv-stat {
  padding: 0.9rem 0.5rem;
  text-align: center;
  border-right: 1px solid #e2e8f0;
  background: linear-gradient(175deg, #f8fafb 0%, #f0fdfb 100%);
}
.cv-stat:last-child { border-right: none; }
.cv-sn {
  display: block;
  font-size: 1.6rem;
  font-weight: 700;
  color: #0d9488;
  line-height: 1;
  margin-bottom: 0.25rem;
  letter-spacing: -0.5px;
}
.cv-sl {
  display: block;
  font-size: 0.67rem;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.6px;
  color: #64748b;
}

/* ── Two-column layout ─────────────────────────────────────────────────── */
.cv-body {
  display: grid;
  grid-template-columns: 1fr 290px;
  gap: 1.5rem;
  align-items: start;
}

/* ── Section heading ───────────────────────────────────────────────────── */
.cv-sh {
  display: flex;
  align-items: center;
  gap: 8px;
  font-size: 0.7rem;
  font-weight: 800;
  text-transform: uppercase;
  letter-spacing: 1.1px;
  color: #1e293b;
  margin-bottom: 1rem;
  padding-bottom: 0.55rem;
  border-bottom: 2px solid #e2e8f0;
}
.cv-sh i { font-size: 0.78rem; color: #0d9488; }
.cv-section { margin-bottom: 2rem; }

/* ── Timeline item ─────────────────────────────────────────────────────── */
.cv-item {
  position: relative;
  padding: 1.1rem 1.25rem 1rem 1.5rem;
  border-left: 3px solid #0d9488;
  border-radius: 0 8px 8px 0;
  background: #fff;
  box-shadow: 0 1px 4px rgba(0,0,0,0.05);
  margin-bottom: 0.7rem;
  transition: box-shadow 0.2s;
}
.cv-item::before {
  content: '';
  position: absolute;
  left: -7px; top: 1.2rem;
  width: 11px; height: 11px;
  border-radius: 50%;
  background: #0d9488;
  border: 2px solid #f0fdfa;
}
.cv-item:hover { box-shadow: 0 3px 14px rgba(13,148,136,0.1); }

.cv-edu-item { border-left-color: #64748b; }
.cv-edu-item::before { background: #64748b; border-color: #f8fafb; }
.cv-edu-item:hover { box-shadow: 0 3px 14px rgba(100,116,139,0.1); }

.cv-item-head {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  gap: 0.5rem;
  margin-bottom: 0.2rem;
  flex-wrap: wrap;
}
.cv-item-title {
  font-size: 0.93rem;
  font-weight: 600;
  color: #1e293b;
  margin: 0;
  line-height: 1.3;
}
.cv-item-meta { font-size: 0.74rem; color: #64748b; white-space: nowrap; flex-shrink: 0; }
.cv-item-sub { font-size: 0.82rem; color: #0d9488; font-weight: 500; margin-bottom: 0.3rem; }
.cv-item-sub a { color: #0d9488; text-decoration: none; }
.cv-item-sub a:hover { text-decoration: underline; }
.cv-edu-item .cv-item-sub { color: #64748b; }
.cv-edu-item .cv-item-sub a { color: #64748b; }
.cv-item-loc { font-size: 0.73rem; color: #94a3b8; margin-bottom: 0.6rem; }
.cv-item-loc i { font-size: 0.63rem; margin-right: 3px; }

.cv-list { list-style: none; padding: 0; margin: 0; }
.cv-list li {
  position: relative;
  padding-left: 1rem;
  margin-bottom: 0.3rem;
  font-size: 0.84rem;
  line-height: 1.6;
  color: #374151;
}
.cv-list li::before { content: '–'; position: absolute; left: 0; color: #0d9488; font-weight: 700; }
.cv-edu-item .cv-list li::before { color: #64748b; }

.cv-badge {
  display: inline-block;
  font-size: 0.63rem;
  font-weight: 700;
  padding: 1px 7px;
  border-radius: 3px;
  margin-left: 6px;
  vertical-align: middle;
  letter-spacing: 0.3px;
  text-transform: uppercase;
}
.cv-badge-present { background: #dcfce7; color: #166534; }
.cv-badge-part    { background: #fef9c3; color: #854d0e; }

/* ── Publication category header ───────────────────────────────────────── */
.pub-cat-header {
  display: flex;
  align-items: center;
  gap: 8px;
  padding: 0.55rem 0.9rem;
  background: #f0fdfa;
  border: 1px solid #ccfbf1;
  border-left: 3px solid #0d9488;
  border-radius: 0 6px 6px 0;
  margin: 1rem 0 0.55rem;
}
.pub-cat-header:first-of-type { margin-top: 0; }
.pub-cat-icon {
  width: 26px; height: 26px;
  border-radius: 6px;
  background: rgba(13,148,136,0.1);
  display: flex; align-items: center; justify-content: center;
  flex-shrink: 0;
}
.pub-cat-icon i { font-size: 0.7rem; color: #0d9488; }
.pub-cat-label { font-size: 0.84rem; font-weight: 600; color: #1e293b; flex: 1; }
.pub-cat-count {
  font-size: 0.7rem; font-weight: 700;
  background: #0d9488; color: #fff;
  border-radius: 10px; padding: 1px 8px;
}

.pub-entry {
  padding: 0.8rem 1rem;
  background: #fff;
  border: 1px solid #e2e8f0;
  border-radius: 6px;
  margin-bottom: 0.45rem;
  transition: border-color 0.15s, box-shadow 0.15s;
}
.pub-entry:hover { border-color: #99f6e4; box-shadow: 0 1px 6px rgba(13,148,136,0.07); }
.pub-title-text { font-size: 0.85rem; font-weight: 600; color: #1e293b; display: block; margin-bottom: 0.25rem; }
.pub-title-text a { color: #1e293b; text-decoration: none; }
.pub-title-text a:hover { color: #0d9488; }
.pub-authors-text { font-size: 0.79rem; color: #64748b; margin-bottom: 0.2rem; }
.pub-venue-text { font-size: 0.77rem; font-style: italic; color: #94a3b8; }
.pub-venue-badge {
  display: inline-block;
  font-size: 0.63rem; font-weight: 700;
  padding: 1px 6px; border-radius: 3px;
  margin-left: 5px; font-style: normal;
  text-transform: uppercase; vertical-align: middle;
}
.pub-venue-badge.acm    { background: #e8f4fd; color: #1565c0; }
.pub-venue-badge.ieee   { background: #e8f5e9; color: #2e7d32; }
.pub-venue-badge.spring { background: #fff3e0; color: #e65100; }

/* ── Aside ─────────────────────────────────────────────────────────────── */
.cv-aside {
  background: #f4faf9;
  border: 1px solid #ccfbf1;
  border-radius: 10px;
  padding: 1.4rem;
}
.cv-aside-section {
  margin-bottom: 1.35rem;
  padding-bottom: 1.35rem;
  border-bottom: 1px solid #c9f0eb;
}
.cv-aside-section:last-child { margin-bottom: 0; padding-bottom: 0; border-bottom: none; }
.cv-aside-sh {
  font-size: 0.67rem; font-weight: 800;
  text-transform: uppercase; letter-spacing: 0.9px;
  color: #64748b;
  margin: 0 0 0.65rem 0;
  display: flex; align-items: center; gap: 6px;
}
.cv-aside-sh i { color: #0d9488; font-size: 0.72rem; }

.interest-pills { display: flex; flex-wrap: wrap; gap: 5px; }
.interest-pill {
  font-size: 0.74rem; padding: 3px 10px;
  border-radius: 20px;
  background: #fff; border: 1px solid #99f6e4;
  color: #0d6e68; font-weight: 500;
}

.skill-cat-label {
  font-size: 0.65rem; font-weight: 700;
  text-transform: uppercase; letter-spacing: 0.5px;
  color: #94a3b8;
  margin: 0.7rem 0 0.35rem;
}
.skill-pills { display: flex; flex-wrap: wrap; gap: 4px; }
.skill-pill {
  font-size: 0.72rem; padding: 2px 9px;
  border-radius: 12px;
  background: #1e293b; color: #e2e8f0;
  font-weight: 500;
}

.cv-profile-link {
  display: flex; align-items: center; gap: 8px;
  padding: 5px 0;
  font-size: 0.82rem; color: #1e293b;
  text-decoration: none; transition: color 0.15s;
}
.cv-profile-link:hover { color: #0d9488; text-decoration: none; }
.cv-profile-link i { width: 16px; color: #0d9488; font-size: 0.8rem; }

/* ── Reference cards ───────────────────────────────────────────────────── */
.cv-ref-card {
  padding: 1rem 1.1rem;
  background: #fff;
  border: 1px solid #e2e8f0;
  border-left: 3px solid #0d9488;
  border-radius: 0 8px 8px 0;
  margin-bottom: 0.65rem;
  box-shadow: 0 1px 4px rgba(0,0,0,0.04);
  transition: box-shadow 0.2s;
}
.cv-ref-card:hover { box-shadow: 0 3px 10px rgba(13,148,136,0.09); }
.cv-ref-name {
  font-size: 0.9rem;
  font-weight: 600;
  color: #1e293b;
  margin: 0 0 0.15rem 0;
  display: flex;
  align-items: center;
  gap: 8px;
  flex-wrap: wrap;
}
.cv-ref-name a { color: #1e293b; text-decoration: none; }
.cv-ref-name a:hover { color: #0d9488; }
.cv-ref-li-icon { font-size: 0.78rem; color: #0a66c2; }
.cv-ref-title {
  font-size: 0.8rem;
  color: #0d9488;
  font-weight: 500;
  margin-bottom: 0.1rem;
}
.cv-ref-meta {
  font-size: 0.74rem;
  color: #94a3b8;
  margin-bottom: 0.6rem;
}
.cv-ref-text {
  font-size: 0.83rem;
  color: #374151;
  line-height: 1.7;
  margin: 0;
  font-style: italic;
  border-top: 1px solid #f1f5f9;
  padding-top: 0.6rem;
}
.cv-ref-text::before { content: '\201C'; color: #0d9488; font-size: 1.1rem; font-style: normal; margin-right: 2px; }
.cv-ref-text::after  { content: '\201D'; color: #0d9488; font-size: 1.1rem; font-style: normal; margin-left: 2px; }

html[data-theme='dark'] .cv-ref-card { background: #1e1e1e; border-color: #2d3748; }
html[data-theme='dark'] .cv-ref-name { color: #e2e8f0; }
html[data-theme='dark'] .cv-ref-name a { color: #e2e8f0; }
html[data-theme='dark'] .cv-ref-text { color: #cbd5e1; border-top-color: #2d3748; }

/* ── Responsive ────────────────────────────────────────────────────────── */
@media (max-width: 900px) {
  .cv-body { grid-template-columns: 1fr; }
  .cv-aside { order: -1; }
}
@media (max-width: 640px) {
  .cv-hero { flex-direction: column; gap: 1rem; padding: 1.5rem 1.25rem; }
  .cv-photo { width: 80px; height: 80px; }
  .cv-stats { grid-template-columns: repeat(2, 1fr); }
  .cv-stat:nth-child(2) { border-right: none; }
  .cv-stat:nth-child(1),
  .cv-stat:nth-child(2) { border-bottom: 1px solid #e2e8f0; }
}

/* ── Dark mode ─────────────────────────────────────────────────────────── */
html[data-theme='dark'] .cv-stats { border-color: #2d3748; }
html[data-theme='dark'] .cv-stat  { background: linear-gradient(175deg, #1a1a1a, #0d2220); border-right-color: #2d3748; }
html[data-theme='dark'] .cv-item  { background: #1e1e1e; box-shadow: 0 1px 4px rgba(0,0,0,0.25); }
html[data-theme='dark'] .cv-item:hover { box-shadow: 0 3px 14px rgba(13,148,136,0.15); }
html[data-theme='dark'] .cv-item-title { color: #e2e8f0; }
html[data-theme='dark'] .cv-list li { color: #cbd5e1; }
html[data-theme='dark'] .cv-sh { color: #e2e8f0; border-bottom-color: #2d3748; }
html[data-theme='dark'] .pub-entry { background: #1e1e1e; border-color: #2d3748; }
html[data-theme='dark'] .pub-title-text { color: #e2e8f0; }
html[data-theme='dark'] .pub-title-text a { color: #e2e8f0; }
html[data-theme='dark'] .pub-cat-header { background: #0d2220; border-color: #1a4a44; }
html[data-theme='dark'] .pub-cat-label { color: #e2e8f0; }
html[data-theme='dark'] .cv-aside { background: #0d2220; border-color: #1a4a44; }
html[data-theme='dark'] .cv-aside-section { border-bottom-color: #1a4a44; }
html[data-theme='dark'] .interest-pill { background: #0d2220; border-color: #1a5c56; color: #5eead4; }
html[data-theme='dark'] .skill-pill { background: #334155; color: #e2e8f0; }
html[data-theme='dark'] .cv-profile-link { color: #cbd5e1; }
</style>

<div class="cv-wrap">

<!-- ── HERO ──────────────────────────────────────────────────────────── -->
<div class="cv-hero" id="cv-sec-hero">
  <canvas id="nn-canvas" style="position:absolute;inset:0;pointer-events:none;opacity:0.45;"></canvas>
  <img src="/assets/img/profile.jpg" alt="Shakil Mahmud Shuvo" class="cv-photo">
  <div class="cv-hero-info">
    <h1 class="cv-name">Shakil Mahmud Shuvo</h1>
    <div class="cv-roles">
      <span class="cv-role-badge"><i class="fas fa-chart-line"></i> Associate Data Scientist</span>
      <span class="cv-role-badge"><i class="fas fa-flask"></i> ML Researcher</span>
      <span class="cv-role-badge"><i class="fas fa-graduation-cap"></i> PhD Aspirant</span>
    </div>
    <div class="cv-contacts">
      <a href="mailto:sshuvo.cse@gmail.com" class="cv-contact-pill"><i class="fas fa-envelope"></i> sshuvo.cse@gmail.com</a>
      <span class="cv-contact-pill"><i class="fas fa-map-marker-alt"></i> Dhaka, Bangladesh</span>
      <a href="https://linkedin.com/in/smshuv0" target="_blank" class="cv-contact-pill"><i class="fab fa-linkedin"></i> LinkedIn</a>
      <a href="https://github.com/ShakilMahmudShuvo" target="_blank" class="cv-contact-pill"><i class="fab fa-github"></i> GitHub</a>
      <a href="https://scholar.google.com/citations?user=EOsiW3sAAAAJ" target="_blank" class="cv-contact-pill"><i class="ai ai-google-scholar"></i> Scholar</a>
    </div>
    <a href="/assets/pdf/Shakil_Mahmud_CV.pdf" target="_blank" class="cv-dl-btn">
      <i class="fas fa-download"></i> Download PDF CV
    </a>
  </div>
</div>

<!-- ── STATS ──────────────────────────────────────────────────────────── -->
<div class="cv-stats">
  <div class="cv-stat"><span class="cv-sn">7</span><span class="cv-sl">Publications</span></div>
  <div class="cv-stat"><span class="cv-sn">4</span><span class="cv-sl">Positions</span></div>
  <div class="cv-stat"><span class="cv-sn">3</span><span class="cv-sl">Venues</span></div>
  <div class="cv-stat"><span class="cv-sn">2+</span><span class="cv-sl">Yrs Research</span></div>
</div>

<!-- ── BODY ───────────────────────────────────────────────────────────── -->
<div class="cv-body">

  <!-- MAIN -->
  <div class="cv-main">

    <!-- Summary -->
    <div class="cv-section" id="cv-sec-summary">
      <div class="cv-sh"><i class="fas fa-user"></i> Professional Summary</div>
      <p style="font-size:0.88rem;line-height:1.8;color:#374151;margin:0;">
        Machine learning engineer and researcher with hands-on experience building LLM-powered enterprise systems and a research background in healthcare AI. Published 6 peer-reviewed papers (ACM, IEEE, Springer) on medical imaging, deep learning, and NLP for mental health detection. Currently seeking PhD programs in ML/AI to pursue research in federated learning, multimodal reasoning, and explainable medical AI.
      </p>
    </div>

    <!-- Experience -->
    <div class="cv-section" id="cv-sec-experience">
      <div class="cv-sh"><i class="fas fa-briefcase"></i> Work Experience</div>

      <div class="cv-item">
        <div class="cv-item-head">
          <h3 class="cv-item-title">Associate Data Scientist <span class="cv-badge cv-badge-present">Current</span></h3>
          <span class="cv-item-meta">Sept 2024 – Present</span>
        </div>
        <div class="cv-item-sub"><a href="https://cognitusconsulting.com/" target="_blank">Cognitus Consulting LLC</a></div>
        <div class="cv-item-loc"><i class="fas fa-map-marker-alt"></i> Dallas, TX &nbsp;·&nbsp; Remote</div>
        <ul class="cv-list">
          <li>Led data integration for <strong>LambdaX</strong>, an AI-powered Contract Lifecycle Management platform, deployed at Lockheed Martin</li>
          <li>Built LLM-powered workflow generation system using MCP server architecture; intelligent chatbot for automated workflow creation</li>
          <li>Designed custom ML-driven data workflows and automation pipelines for enterprise clients</li>
          <li>Built scalable ETL pipelines ingesting contract data from SAP, Salesforce, and internal systems</li>
          <li>Implemented real-time contract data management with predictive analytics capabilities</li>
        </ul>
      </div>

      <div class="cv-item">
        <div class="cv-item-head">
          <h3 class="cv-item-title">Generative AI Trainer <span class="cv-badge cv-badge-part">Part-time</span> <span class="cv-badge cv-badge-present">Current</span></h3>
          <span class="cv-item-meta">Jun 2024 – Present</span>
        </div>
        <div class="cv-item-sub"><a href="https://outlier.ai/" target="_blank">Outlier</a></div>
        <div class="cv-item-loc"><i class="fas fa-map-marker-alt"></i> San Francisco, CA &nbsp;·&nbsp; Remote</div>
        <ul class="cv-list">
          <li>Advanced AI model training via structured text conversations; expert feedback on LLM performance and accuracy</li>
          <li>Hallucination detection and comprehensive AI response evaluation (factual accuracy, grammar, tone alignment)</li>
          <li>Systematic AI voice response analysis across instruction adherence, truthfulness, and harmlessness</li>
        </ul>
      </div>

      <div class="cv-item">
        <div class="cv-item-head">
          <h3 class="cv-item-title">Associate Software Engineer, Machine Learning</h3>
          <span class="cv-item-meta">Nov 2023 – Aug 2024</span>
        </div>
        <div class="cv-item-sub"><a href="https://ideascale.com/" target="_blank">IdeaScale Bangladesh Limited</a></div>
        <div class="cv-item-loc"><i class="fas fa-map-marker-alt"></i> Dhaka, Bangladesh</div>
        <ul class="cv-list">
          <li>Built ML recommendation models, increasing user engagement 15% through personalized suggestions</li>
          <li>Designed contextual NLP + deep learning recommendation PoC, improving relevance by 20%</li>
          <li>Integrated OpenSearch as vector database for embedding storage and semantic retrieval pipelines</li>
          <li>Deployed ML solutions via REST APIs with model versioning; collaborated on microservice architecture</li>
        </ul>
      </div>

      <div class="cv-item">
        <div class="cv-item-head">
          <h3 class="cv-item-title">Research Assistant <span class="cv-badge cv-badge-present">Ongoing</span></h3>
          <span class="cv-item-meta">Jan 2023 – Present</span>
        </div>
        <div class="cv-item-sub"><a href="https://www.linkedin.com/company/aysrizon-ylrl/" target="_blank">Young Learners' Research Lab, RUET</a></div>
        <div class="cv-item-loc"><i class="fas fa-map-marker-alt"></i> Rajshahi, Bangladesh</div>
        <ul class="cv-list">
          <li>Research in medical imaging, deep learning, computer vision, and NLP for mental health</li>
          <li>Developed CNN and attention-based models for medical image analysis, achieving 18% diagnostic accuracy improvement</li>
          <li>Contributed to 6 academic publications (2 first-author) published in ACM, IEEE, and Springer</li>
          <li>Mentored junior researchers on ML methodologies, experimental design, and academic writing</li>
        </ul>
      </div>

    </div>

    <!-- Education -->
    <div class="cv-section" id="cv-sec-education">
      <div class="cv-sh"><i class="fas fa-graduation-cap"></i> Education</div>

      <div class="cv-item cv-edu-item">
        <div class="cv-item-head">
          <h3 class="cv-item-title">B.Sc. in Computer Science & Engineering</h3>
          <span class="cv-item-meta">Jan 2018 – Sept 2023</span>
        </div>
        <div class="cv-item-sub"><a href="https://www.ruet.ac.bd/" target="_blank">Rajshahi University of Engineering & Technology (RUET)</a></div>
        <div class="cv-item-loc"><i class="fas fa-map-marker-alt"></i> Rajshahi, Bangladesh</div>
        <ul class="cv-list">
          <li>CGPA <strong>3.22</strong>/4.00 &ensp;·&ensp; Last 60 credit average <strong>3.71</strong>/4.00</li>
          <li><strong>Thesis:</strong> A Two-Phase Framework for Multi-Class Brain Tumor Detection using DenseNet-121 Features and ML Ensembles</li>
          <li><strong>Supervisor:</strong> Md. Farukuzzaman Faruk, Asst. Professor, Dept. of CSE, RUET</li>
          <li>Mentor at RUET Analytical Programming Lab &ensp;·&ensp; Organizing Member at RUET e-Sports Club</li>
        </ul>
      </div>

      <div class="cv-item cv-edu-item">
        <div class="cv-item-head">
          <h3 class="cv-item-title">Higher Secondary Certificate, Science</h3>
          <span class="cv-item-meta">2017</span>
        </div>
        <div class="cv-item-sub"><a href="https://ndc.edu.bd/" target="_blank">Notre Dame College</a></div>
        <div class="cv-item-loc"><i class="fas fa-map-marker-alt"></i> Dhaka, Bangladesh</div>
        <ul class="cv-list">
          <li>GPA <strong>5.00</strong>/5.00</li>
          <li>Group Representative at Outward Bound Adventure Club, Notre Dame College</li>
        </ul>
      </div>

    </div>

    <!-- Publications -->
    <div class="cv-section" id="cv-sec-publications">
      <div class="cv-sh"><i class="fas fa-book-open"></i> Publications</div>

      <div class="pub-cat-header">
        <div class="pub-cat-icon"><i class="fas fa-file-alt"></i></div>
        <span class="pub-cat-label">ACM Conference Papers</span>
        <span class="pub-cat-count">3</span>
      </div>

      <div class="pub-entry">
        <span class="pub-title-text"><a href="https://dl.acm.org/doi/10.1145/3723178.3723242" target="_blank">Early Detection of Suicidal Ideation Using Bidirectional GRU and Language Models</a></span>
        <div class="pub-authors-text"><strong>Shakil Mahmud Shuvo</strong>, Navia Novely, Md. Farukuzzaman Faruk, Azmain Yakin Srizon, S. M. Mahedy Hasan</div>
        <div class="pub-venue-text">3rd International Conference on Computing Advancements (ICCA 2024) <span class="pub-venue-badge acm">ACM</span></div>
      </div>

      <div class="pub-entry">
        <span class="pub-title-text"><a href="https://dl.acm.org/doi/10.1145/3723178.3723304" target="_blank">Improving Pre-Trained CNNs with CBAM and Skip Connections for Multi-Class Retinal Diseases Classification using OCT Images</a></span>
        <div class="pub-authors-text">Navia Novely, <strong>Shakil Mahmud Shuvo</strong>, Md. Farukuzzaman Faruk</div>
        <div class="pub-venue-text">3rd International Conference on Computing Advancements (ICCA 2024) <span class="pub-venue-badge acm">ACM</span></div>
      </div>

      <div class="pub-entry">
        <span class="pub-title-text"><a href="https://dl.acm.org/doi/10.1145/3723178.3723308" target="_blank">Advancing Glioma Segmentation: A Robust 3D Residual Attention U-Net Framework for Multimodal MRI Images</a></span>
        <div class="pub-authors-text">Soumit Das, Md. Farukuzzaman Faruk, <strong>Shakil Mahmud Shuvo</strong>, Azmain Yakin Srizon, S. M. Mahedy Hasan, Md. Al Mamun</div>
        <div class="pub-venue-text">3rd International Conference on Computing Advancements (ICCA 2024) <span class="pub-venue-badge acm">ACM</span></div>
      </div>

      <div class="pub-cat-header">
        <div class="pub-cat-icon"><i class="fas fa-file-alt"></i></div>
        <span class="pub-cat-label">Springer Conference Papers</span>
        <span class="pub-cat-count">2</span>
      </div>

      <div class="pub-entry">
        <span class="pub-title-text"><a href="https://link.springer.com/chapter/10.1007/978-981-99-8937-9_38" target="_blank">Multi-class Brain Tumor Classification with DenseNet-Based Deep Learning Features and Ensemble of Machine Learning Approaches</a></span>
        <div class="pub-authors-text"><strong>Shakil Mahmud Shuvo</strong>, Md. Farukuzzaman Faruk, Azmain Yakin Srizon, Tahsen Islam Sajon, S. M. Mahedy Hasan, Anirban Barai, A. F. M. Minhazur Rahman, Md. Al Mamun</div>
        <div class="pub-venue-text">2nd International Conference on Big Data, IoT and Machine Learning (BIM 2023) <span class="pub-venue-badge spring">Springer</span></div>
      </div>

      <div class="pub-entry">
        <span class="pub-title-text"><a href="https://link.springer.com/chapter/10.1007/978-981-99-8937-9_24" target="_blank">Attention Mechanism-Enhanced Deep CNN Architecture for Precise Multi-class Leukemia Classification</a></span>
        <div class="pub-authors-text">Tahsen Islam Sajon, Barsha Roy, Md. Farukuzzaman Faruk, Azmain Yakin Srizon, <strong>Shakil Mahmud Shuvo</strong>, Md. Al Mamun, Abu Sayeed, S. M. Mahedy Hasan</div>
        <div class="pub-venue-text">2nd International Conference on Big Data, IoT and Machine Learning (BIM 2023) <span class="pub-venue-badge spring">Springer</span></div>
      </div>

      <div class="pub-cat-header">
        <div class="pub-cat-icon"><i class="fas fa-file-alt"></i></div>
        <span class="pub-cat-label">IEEE Conference Papers</span>
        <span class="pub-cat-count">1</span>
      </div>

      <div class="pub-entry">
        <span class="pub-title-text"><a href="https://ieeexplore.ieee.org/document/10212729" target="_blank">A Late Fusion Deep CNN Model for the Classification of Brain Tumors from Multi-Parametric MRI Images</a></span>
        <div class="pub-authors-text">Anirban Barai, Md. Farukuzzaman Faruk, <strong>Shakil Mahmud Shuvo</strong>, Azmain Yakin Srizon, S. M. Mahedy Hasan, Abu Sayeed</div>
        <div class="pub-venue-text">International Conference on Next-Generation Computing, IoT and Machine Learning (NCIM 2023) <span class="pub-venue-badge ieee">IEEE</span></div>
      </div>

    </div>

    <!-- References -->
    <div class="cv-section">
      <div class="cv-sh"><i class="fas fa-user-tie"></i> References</div>
      {% for ref in site.data.references %}
      <div class="cv-ref-card">
        <h4 class="cv-ref-name">
          {{ ref.name }}
          {% if ref.linkedin and ref.linkedin != "" %}<a href="{{ ref.linkedin }}" target="_blank" title="LinkedIn"><i class="fab fa-linkedin cv-ref-li-icon"></i></a>{% endif %}
        </h4>
        <div class="cv-ref-title">{{ ref.title }}</div>
        <div class="cv-ref-meta">{{ ref.institution }} &ensp;·&ensp; {{ ref.relationship }} &ensp;·&ensp; {{ ref.date }}</div>
        {% if ref.text %}<p class="cv-ref-text">{{ ref.text }}</p>{% endif %}
      </div>
      {% endfor %}
    </div>

  </div><!-- /cv-main -->

  <!-- ASIDE -->
  <div class="cv-aside">

    <div class="cv-aside-section">
      <div class="cv-aside-sh"><i class="fas fa-flask"></i> Research Interests</div>
      <div class="interest-pills">
        <span class="interest-pill">Federated Learning</span>
        <span class="interest-pill">Medical Imaging</span>
        <span class="interest-pill">NLP & Mental Health</span>
        <span class="interest-pill">Explainable AI</span>
        <span class="interest-pill">Multimodal Reasoning</span>
        <span class="interest-pill">Healthcare AI</span>
      </div>
    </div>

    <div class="cv-aside-section">
      <div class="cv-aside-sh"><i class="fas fa-code"></i> Technical Skills</div>
      <div class="skill-cat-label">Languages</div>
      <div class="skill-pills">
        <span class="skill-pill">Python</span>
        <span class="skill-pill">SQL</span>
        <span class="skill-pill">R</span>
      </div>
      <div class="skill-cat-label">ML / Deep Learning</div>
      <div class="skill-pills">
        <span class="skill-pill">PyTorch</span>
        <span class="skill-pill">TensorFlow</span>
        <span class="skill-pill">Keras</span>
        <span class="skill-pill">Scikit-learn</span>
        <span class="skill-pill">OpenCV</span>
      </div>
      <div class="skill-cat-label">NLP & LLMs</div>
      <div class="skill-pills">
        <span class="skill-pill">LangChain</span>
        <span class="skill-pill">HuggingFace</span>
        <span class="skill-pill">OpenAI API</span>
        <span class="skill-pill">RAG</span>
        <span class="skill-pill">BERT</span>
      </div>
      <div class="skill-cat-label">Data & Cloud</div>
      <div class="skill-pills">
        <span class="skill-pill">AWS</span>
        <span class="skill-pill">Azure</span>
        <span class="skill-pill">Docker</span>
        <span class="skill-pill">Spark</span>
        <span class="skill-pill">Pandas</span>
      </div>
      <div class="skill-cat-label">Tools</div>
      <div class="skill-pills">
        <span class="skill-pill">Git</span>
        <span class="skill-pill">Jupyter</span>
        <span class="skill-pill">LaTeX</span>
        <span class="skill-pill">SAP</span>
        <span class="skill-pill">Salesforce</span>
      </div>
    </div>

    <div class="cv-aside-section">
      <div class="cv-aside-sh"><i class="fas fa-language"></i> Languages</div>
      <div class="interest-pills">
        <span class="interest-pill">Bengali (Native)</span>
        <span class="interest-pill">English (Fluent)</span>
      </div>
    </div>

    <div class="cv-aside-section">
      <div class="cv-aside-sh"><i class="fas fa-link"></i> Profiles</div>
      <a href="https://scholar.google.com/citations?user=EOsiW3sAAAAJ" target="_blank" class="cv-profile-link">
        <i class="ai ai-google-scholar"></i> Google Scholar
      </a>
      <a href="https://linkedin.com/in/smshuv0" target="_blank" class="cv-profile-link">
        <i class="fab fa-linkedin"></i> LinkedIn
      </a>
      <a href="https://github.com/ShakilMahmudShuvo" target="_blank" class="cv-profile-link">
        <i class="fab fa-github"></i> GitHub
      </a>
    </div>

  </div><!-- /cv-aside -->

</div><!-- /cv-body -->
</div><!-- /cv-wrap -->

<!-- ── Section dot navigation ─────────────────────────────────────────── -->
<style>
#cv-dot-nav {
  position: fixed;
  right: 18px;
  top: 50%;
  transform: translateY(-50%);
  display: flex;
  flex-direction: column;
  gap: 10px;
  z-index: 500;
}
.cv-dot {
  width: 8px; height: 8px;
  border-radius: 50%;
  background: #cbd5e1;
  border: none; padding: 0; cursor: pointer;
  transition: background 0.2s, transform 0.2s, width 0.25s;
  position: relative;
}
.cv-dot::after {
  content: attr(data-label);
  position: absolute;
  right: 16px; top: 50%;
  transform: translateY(-50%);
  background: #1e293b; color: #e2e8f0;
  font-size: 0.68rem; font-weight: 500;
  padding: 3px 8px; border-radius: 4px;
  white-space: nowrap; opacity: 0;
  pointer-events: none;
  transition: opacity 0.15s;
  font-family: inherit;
}
.cv-dot:hover::after { opacity: 1; }
.cv-dot:hover { background: #0d9488; transform: scale(1.3); }
.cv-dot.active { background: #0d9488; transform: scale(1.4); }
@media (max-width: 768px) { #cv-dot-nav { display: none; } }
</style>

<div id="cv-dot-nav">
  <button class="cv-dot active" data-target="cv-sec-hero"        data-label="Hero"></button>
  <button class="cv-dot"        data-target="cv-sec-summary"     data-label="Summary"></button>
  <button class="cv-dot"        data-target="cv-sec-experience"  data-label="Experience"></button>
  <button class="cv-dot"        data-target="cv-sec-education"   data-label="Education"></button>
  <button class="cv-dot"        data-target="cv-sec-publications" data-label="Publications"></button>
</div>

<script>
/* ── Neural network canvas ── */
(function () {
  var canvas = document.getElementById('nn-canvas');
  if (!canvas) return;
  var hero = canvas.parentElement;
  var ctx  = canvas.getContext('2d');
  var nodes = [];

  function resize() {
    canvas.width  = hero.offsetWidth;
    canvas.height = hero.offsetHeight;
  }

  function initNodes() {
    nodes = [];
    for (var i = 0; i < 32; i++) {
      nodes.push({
        x: Math.random() * canvas.width,
        y: Math.random() * canvas.height,
        vx: (Math.random() - 0.5) * 0.35,
        vy: (Math.random() - 0.5) * 0.35,
        r: Math.random() * 1.8 + 0.8
      });
    }
  }

  function draw() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    for (var i = 0; i < nodes.length; i++) {
      for (var j = i + 1; j < nodes.length; j++) {
        var dx = nodes[i].x - nodes[j].x;
        var dy = nodes[i].y - nodes[j].y;
        var d  = Math.sqrt(dx*dx + dy*dy);
        if (d < 110) {
          ctx.strokeStyle = 'rgba(45,212,191,' + ((1 - d/110) * 0.4) + ')';
          ctx.lineWidth = 0.7;
          ctx.beginPath();
          ctx.moveTo(nodes[i].x, nodes[i].y);
          ctx.lineTo(nodes[j].x, nodes[j].y);
          ctx.stroke();
        }
      }
    }
    nodes.forEach(function (n) {
      ctx.beginPath();
      ctx.arc(n.x, n.y, n.r, 0, Math.PI * 2);
      ctx.fillStyle = 'rgba(45,212,191,0.65)';
      ctx.fill();
      n.x += n.vx; n.y += n.vy;
      if (n.x < 0 || n.x > canvas.width)  n.vx *= -1;
      if (n.y < 0 || n.y > canvas.height) n.vy *= -1;
    });
    requestAnimationFrame(draw);
  }

  resize();
  initNodes();
  draw();
  window.addEventListener('resize', function () { resize(); initNodes(); });
})();

/* ── Section dot navigation ── */
(function () {
  var dots = Array.from(document.querySelectorAll('.cv-dot'));
  var sections = dots.map(function (d) { return document.getElementById(d.dataset.target); });

  dots.forEach(function (btn) {
    btn.addEventListener('click', function () {
      var target = document.getElementById(btn.dataset.target);
      if (target) target.scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
  });

  var observer = new IntersectionObserver(function (entries) {
    entries.forEach(function (entry) {
      if (entry.isIntersecting) {
        var id = entry.target.id;
        dots.forEach(function (d) {
          d.classList.toggle('active', d.dataset.target === id);
        });
      }
    });
  }, { threshold: 0.3 });

  sections.forEach(function (s) { if (s) observer.observe(s); });
})();
</script>
