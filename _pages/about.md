---
layout: about
title: About
permalink: /
subtitle: <span id="dynamic-title" class="dynamic-title"></span>

profile:
  align: left
  image: profile.jpg
  image_circular: true

news: false
latest_posts: false
selected_papers: true
education: true
social: true

---

<script>
document.addEventListener('DOMContentLoaded', function() {
    const titles = [
        "Data Scientist",
        "Machine Learning Engineer",
        "PhD Aspirant",
        "ML Researcher",
        "Deep Learning Enthusiast",
        "Traveller"
    ];
    let currentIndex = 0;
    const el = document.getElementById('dynamic-title');
    function type(text, i) {
        if (i < text.length) { el.textContent = text.substring(0, i + 1); setTimeout(() => type(text, i + 1), 95); }
        else { setTimeout(() => del(text, text.length), 2000); }
    }
    function del(text, i) {
        if (i > 0) { el.textContent = text.substring(0, i - 1); setTimeout(() => del(text, i - 1), 45); }
        else { currentIndex = (currentIndex + 1) % titles.length; setTimeout(() => type(titles[currentIndex], 0), 500); }
    }
    type(titles[0], 0);
});
</script>

<style>
/* Fix al-folio's text-align: justify on the content wrapper */
.clearfix { text-align: left !important; }

/* ── Typewriter ─────────────────────────────────────────────────────────── */
.dynamic-title {
    color: #495057;
    font-weight: 400;
    min-height: 1.5em;
    display: inline-block;
    position: relative;
}
.dynamic-title::after {
    content: '|';
    position: absolute;
    right: -10px;
    animation: blink 1s infinite;
    color: #adb5bd;
}
@keyframes blink { 0%, 50% { opacity: 1; } 51%, 100% { opacity: 0; } }

/* ── Status badge ───────────────────────────────────────────────────────── */
.status-indicator {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    background: #f0fdf4;
    border: 1px solid #bbf7d0;
    border-radius: 20px;
    padding: 5px 13px;
    font-size: 0.8rem;
    color: #15803d;
}
.status-dot {
    width: 7px; height: 7px;
    background: #22c55e;
    border-radius: 50%;
    flex-shrink: 0;
    animation: pulse-dot 2s infinite;
}
@keyframes pulse-dot {
    0%   { box-shadow: 0 0 0 0 rgba(34,197,94,0.6); }
    70%  { box-shadow: 0 0 0 5px rgba(34,197,94,0); }
    100% { box-shadow: 0 0 0 0 rgba(34,197,94,0); }
}
html[data-theme='dark'] .status-indicator { background: #052e16; border-color: #166534; color: #86efac; }

/* ── Stats strip ────────────────────────────────────────────────────────── */
.about-stats {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    border: 1px solid var(--global-divider-color, #e9ecef);
    border-radius: 10px;
    overflow: hidden;
    margin: 1.75rem 0;
}
.stat-item {
    padding: 1rem 0.5rem;
    text-align: center;
    border-right: 1px solid var(--global-divider-color, #e9ecef);
}
.stat-item:last-child { border-right: none; }
.stat-num {
    display: block;
    font-size: 1.6rem;
    font-weight: 700;
    color: #0d9488;
    line-height: 1;
    margin-bottom: 0.3rem;
    letter-spacing: -0.5px;
}
.stat-label {
    display: block;
    font-size: 0.68rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.6px;
    color: var(--global-text-color-light, #6c757d);
}
html[data-theme='dark'] .about-stats { border-color: #2a2a2a; }
html[data-theme='dark'] .stat-item  { border-right-color: #2a2a2a; }
@media (max-width: 576px) {
    .about-stats { grid-template-columns: repeat(3, 1fr); }
}

/* ── PhD goal card ──────────────────────────────────────────────────────── */
.phd-card {
    background: #f0fdfa;
    border: 1px solid #ccfbf1;
    border-left: 4px solid #0d9488;
    border-radius: 0 8px 8px 0;
    padding: 1.1rem 1.4rem;
    margin: 1.5rem 0;
}
.phd-card-label {
    font-size: 0.7rem;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 0.8px;
    color: #0d9488;
    margin-bottom: 0.45rem;
}
.phd-card p {
    font-size: 0.9rem;
    color: #134e4a;
    line-height: 1.65;
    margin: 0;
}
html[data-theme='dark'] .phd-card {
    background: #0d2220;
    border-color: #1a4a44;
    border-left-color: #2dd4bf;
}
html[data-theme='dark'] .phd-card-label { color: #2dd4bf; }
html[data-theme='dark'] .phd-card p { color: #99f6e4; }

/* ── Research interests ─────────────────────────────────────────────────── */
.interests-label {
    font-size: 0.7rem;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 0.8px;
    color: var(--global-text-color-light, #6c757d);
    margin-bottom: 0.6rem;
}
.interest-tags {
    display: flex;
    flex-wrap: wrap;
    gap: 7px;
    margin-bottom: 1.75rem;
}
.interest-tag {
    display: inline-flex;
    align-items: center;
    gap: 6px;
    background: #f0fdfa;
    border: 1px solid #99f6e4;
    border-radius: 20px;
    padding: 5px 13px;
    font-size: 0.8rem;
    color: #0d6e68;
    font-weight: 500;
    transition: border-color 0.15s, background 0.15s;
}
.interest-tag i { font-size: 0.72rem; color: #0d9488; }
.interest-tag:hover { border-color: #0d9488; background: #ccfbf1; }
html[data-theme='dark'] .interest-tag { background: #0d2220; border-color: #1a5c56; color: #5eead4; }
html[data-theme='dark'] .interest-tag:hover { background: #134e4a; border-color: #2dd4bf; }

/* ── CTA buttons ────────────────────────────────────────────────────────── */
.about-cta {
    display: flex;
    gap: 0.6rem;
    flex-wrap: wrap;
    margin: 0.25rem 0 0.5rem;
}
.cta-primary {
    display: inline-flex;
    align-items: center;
    gap: 6px;
    padding: 8px 20px;
    font-size: 0.875rem;
    font-weight: 500;
    border-radius: 6px;
    text-decoration: none;
    background: #0d9488;
    color: #fff;
    border: 1px solid #0d9488;
    transition: background 0.15s, border-color 0.15s;
}
.cta-primary:hover { background: #0b7a72; border-color: #0b7a72; color: #fff; text-decoration: none; }
.cta-secondary {
    display: inline-flex;
    align-items: center;
    gap: 6px;
    padding: 8px 20px;
    font-size: 0.875rem;
    font-weight: 500;
    border-radius: 6px;
    text-decoration: none;
    background: transparent;
    color: #1e293b;
    border: 1px solid #e2e8f0;
    transition: all 0.15s;
}
.cta-secondary:hover { border-color: #0d9488; color: #0d9488; background: #f0fdfa; text-decoration: none; }
html[data-theme='dark'] .cta-primary { background: #0d9488; border-color: #0d9488; color: #fff; }
html[data-theme='dark'] .cta-primary:hover { background: #0b7a72; }
html[data-theme='dark'] .cta-secondary { border-color: #2d3748; color: #cbd5e1; }
html[data-theme='dark'] .cta-secondary:hover { border-color: #2dd4bf; color: #2dd4bf; background: #0d2220; }

/* ── Dual clock ─────────────────────────────────────────────────────────── */
.dhaka-clock {
    display: inline-flex;
    align-items: center;
    gap: 7px;
    background: #f8fafb;
    border: 1px solid #e2e8f0;
    border-radius: 20px;
    padding: 5px 13px;
    font-size: 0.78rem;
    color: #64748b;
    font-variant-numeric: tabular-nums;
    white-space: nowrap;
}
.dhaka-clock i { color: #0d9488; font-size: 0.72rem; }
.clock-time { color: #1e293b; font-weight: 600; letter-spacing: 0.3px; }
.clock-label { font-size: 0.68rem; opacity: 0.75; }
.clock-sep { color: #cbd5e1; margin: 0 2px; }
html[data-theme='dark'] .dhaka-clock { background: #1a1a1a; border-color: #2d3748; color: #94a3b8; }
html[data-theme='dark'] .clock-time { color: #e2e8f0; }

/* ── Contact form ───────────────────────────────────────────────────────── */
.contact-form .form-control {
    border-radius: 5px;
    border-color: var(--global-divider-color, #dee2e6);
    font-size: 0.875rem;
    background: var(--global-card-bg-color, #fff);
    color: var(--global-text-color);
}
.contact-form .form-control:focus { border-color: #0d9488; box-shadow: 0 0 0 2px rgba(13,148,136,0.12); }
html[data-theme='dark'] .contact-form .form-control { background: #252525; border-color: #3a3a3a; color: #e0e0e0; }
</style>

<div class="mb-4" style="display:flex;align-items:center;flex-wrap:wrap;gap:0.6rem;">
  <span class="status-indicator">
    <span class="status-dot"></span>
    Open to PhD opportunities &ensp;·&ensp; Research collaborations welcome
  </span>
  <span class="dhaka-clock" title="Your local time vs Dhaka time">
    <i class="fas fa-clock"></i>
    <span class="clock-label" id="your-tz-label">You</span>
    <span class="clock-time" id="your-time">--:-- --</span>
    <span class="clock-sep">·</span>
    <span class="clock-time" id="dhaka-time">--:-- --</span>
    <span class="clock-label">Dhaka</span>
  </span>
</div>

<script>
(function() {
  /* ── Dual clock ── */
  var tzLabel = document.getElementById('your-tz-label');
  if (tzLabel) {
    try {
      var tz = Intl.DateTimeFormat().resolvedOptions().timeZone;
      var city = tz.split('/').pop().replace(/_/g, ' ');
      tzLabel.textContent = city.length > 10 ? 'You' : city;
    } catch(e) {}
  }
  function updateClocks() {
    var now = new Date();
    var yt = document.getElementById('your-time');
    var dt = document.getElementById('dhaka-time');
    var opts = { hour: '2-digit', minute: '2-digit', second: '2-digit', hour12: true };
    if (yt) yt.textContent = now.toLocaleTimeString('en-US', opts);
    if (dt) dt.textContent = now.toLocaleTimeString('en-US', Object.assign({}, opts, { timeZone: 'Asia/Dhaka' }));
  }
  updateClocks();
  setInterval(updateClocks, 1000);

})();
</script>

I'm a machine learning engineer and researcher based in Dhaka, Bangladesh. During the day I work as an **Associate Data Scientist** at [Cognitus Consulting](https://cognitus.com), building LLM-powered tools for enterprise clients: RAG pipelines, MCP-server workflows, and contract intelligence systems for companies like Lockheed Martin.

Outside of work, my attention goes toward research. My background is in **healthcare AI**; I got into it through the Young Learners' Research Lab at [RUET](https://www.ruet.ac.bd/) in Bangladesh, and it kind of stuck. Over the last two years I've published papers on brain tumor classification, retinal disease detection, and suicidal ideation detection in social media. That last one is the work I'm most proud of.

<div class="about-stats">
  <div class="stat-item">
    <span class="stat-num">7</span>
    <span class="stat-label">Publications</span>
  </div>
  <div class="stat-item">
    <span class="stat-num">3</span>
    <span class="stat-label">Venues</span>
  </div>
  <div class="stat-item">
    <span class="stat-num">2+</span>
    <span class="stat-label">Yrs Research</span>
  </div>
</div>

<div class="phd-card">
  <div class="phd-card-label">&#128270; What I'm working toward</div>
  <p>Actively looking for <strong>PhD programs</strong> in ML and AI. A year in industry has been useful; I've shipped real things and learned how messy deployment gets, but I want to go deeper. The questions that bother me most aren't the ones I get to work on day-to-day.</p>
</div>

<div class="interests-label">Research Interests</div>
<div class="interest-tags">
  <span class="interest-tag"><i class="fas fa-network-wired"></i> Federated Learning</span>
  <span class="interest-tag"><i class="fas fa-brain"></i> Medical Imaging</span>
  <span class="interest-tag"><i class="fas fa-comments"></i> NLP for Mental Health</span>
  <span class="interest-tag"><i class="fas fa-search"></i> Explainable AI</span>
  <span class="interest-tag"><i class="fas fa-layer-group"></i> Multimodal Reasoning</span>
</div>

<div class="about-cta">
  <a href="/research/" class="cta-primary"><i class="fas fa-microscope"></i> Research</a>
  <a href="/cv/" class="cta-secondary"><i class="fas fa-file-alt"></i> CV</a>
  <a href="/experience/" class="cta-secondary"><i class="fas fa-briefcase"></i> Experience</a>
</div>

---

## Get in Touch

Email me at [sshuvo.cse@gmail.com](mailto:sshuvo.cse@gmail.com) or use the form below.

<div data-fs-success style="display:none" class="alert alert-success mt-3">
  <i class="fas fa-check-circle mr-2"></i> Thanks! I'll get back to you soon.
</div>
<div data-fs-error style="display:none" class="alert alert-danger mt-3"></div>

<form id="contact-form" class="contact-form mt-3">
  <div class="form-row">
    <div class="form-group col-md-6">
      <input type="text" name="name" class="form-control" placeholder="Name" data-fs-field required>
      <span data-fs-error="name" class="text-danger" style="font-size:0.8rem"></span>
    </div>
    <div class="form-group col-md-6">
      <input type="email" name="email" class="form-control" placeholder="Email" data-fs-field required>
      <span data-fs-error="email" class="text-danger" style="font-size:0.8rem"></span>
    </div>
  </div>
  <div class="form-group mt-2">
    <select name="subject" class="form-control" data-fs-field>
      <option value="" disabled selected>Subject</option>
      <option>PhD Opportunity / Advising</option>
      <option>Research Collaboration</option>
      <option>Job / Internship</option>
      <option>Other</option>
    </select>
  </div>
  <div class="form-group mt-2">
    <textarea name="message" class="form-control" rows="4" placeholder="Message" data-fs-field required></textarea>
    <span data-fs-error="message" class="text-danger" style="font-size:0.8rem"></span>
  </div>
  <button type="submit" class="btn btn-primary btn-sm mt-2" data-fs-submit-btn>
    <i class="fas fa-paper-plane mr-1"></i> Send
  </button>
</form>

<script>
  window.formspree = window.formspree || function () { (formspree.q = formspree.q || []).push(arguments); };
  formspree('initForm', { formElement: '#contact-form', formId: 'meenjozr' });
</script>
<script src="https://unpkg.com/@formspree/ajax@1" defer></script>
