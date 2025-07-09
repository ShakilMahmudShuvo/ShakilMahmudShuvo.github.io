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

<style>
.projects-section h2.category {
  font-size: 1.8rem;
  font-weight: 600;
  color: var(--global-text-color);
  border-bottom: 2px solid var(--global-divider-color);
  padding-bottom: 0.5rem;
}
</style>
