---
layout: page
title: Projects
permalink: /projects/
description: My research and development projects.
nav: true
nav_order: 4
horizontal: false
---

<!-- Ongoing Projects Section -->
<div class="projects-section mb-4">
  <h2 class="category mb-4">
    <i class="fas fa-rocket text-warning"></i> Ongoing Projects
  </h2>
  <div class="projects">
    <div class="grid">
      {%- assign ongoing_projects = site.projects | where: "category", "ongoing" | sort: "importance" | reverse -%}
      {%- for project in ongoing_projects -%}
        {% include projects.html %}
      {%- endfor -%}
    </div>
  </div>
</div>

<hr class="my-4">

<!-- Previous Projects Section -->
<div class="projects-section">
  <h2 class="category mb-4">
    <i class="fas fa-archive text-secondary"></i> Previous Projects
  </h2>
  <div class="projects">
    <div class="grid">
      {%- assign previous_projects = site.projects | where: "category", "previous" | sort: "importance" | reverse -%}
      {%- for project in previous_projects -%}
        {% include projects.html %}
      {%- endfor -%}
    </div>
  </div>
</div>

<!-- GitHub Section -->
<div class="github-section text-center my-5">
  <h3 class="mb-3">More Projects</h3>
  <p class="lead mb-4">For more of my projects and contributions, visit my GitHub profile</p>
  <a href="https://github.com/ShakilMahmudShuvo" class="btn btn-outline-dark btn-lg" target="_blank">
    <i class="fab fa-github"></i> View GitHub Profile
  </a>
</div>

<style>
.projects-section h2.category {
  font-size: 1.8rem;
  font-weight: 600;
  color: var(--global-text-color);
  border-bottom: 2px solid var(--global-divider-color);
  padding-bottom: 0.5rem;
}

.github-section {
  padding: 3rem 0;
}

.github-section h3 {
  color: var(--global-text-color);
  font-weight: 600;
}

.github-section .lead {
  color: var(--global-text-color-light);
  font-size: 1.1rem;
}

.github-section .btn-outline-dark {
  background: transparent;
  border: 2px solid #495057;
  color: #495057;
  padding: 0.75rem 2rem;
  font-size: 1.1rem;
  transition: all 0.3s ease;
}

.github-section .btn-outline-dark:hover {
  background: #495057;
  color: #ffffff;
  transform: translateY(-2px);
  box-shadow: 0 5px 15px rgba(0,0,0,0.1);
}

.github-section .btn-outline-dark i {
  margin-right: 0.5rem;
  font-size: 1.3rem;
}

/* Dark mode support */
html[data-theme='dark'] .github-section .btn-outline-dark {
  border-color: #dee2e6;
  color: #dee2e6;
}

html[data-theme='dark'] .github-section .btn-outline-dark:hover {
  background: #dee2e6;
  color: #212529;
}
</style>
