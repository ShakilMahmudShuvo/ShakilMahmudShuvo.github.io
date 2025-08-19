---
layout: page
permalink: /test_scores/
title: Test Scores
description: Standardized test scores and English proficiency certifications
nav: false
nav_order: 8
---

<div class="container-fluid">

<!-- IELTS Score Section -->
<div class="row mt-4">
    <div class="col-12">
        <h2 class="section-title"><i class="fas fa-graduation-cap text-primary"></i> IELTS Academic</h2>
        
        <div class="row mt-4">
            <div class="col-lg-8 mx-auto">
                <div class="card test-score-card">
                    <div class="card-header bg-primary text-white">
                        <h4 class="mb-0">International English Language Testing System (IELTS)</h4>
                    </div>
                    <div class="card-body">
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <p class="mb-2"><i class="fas fa-calendar-alt"></i> <strong>Test Date:</strong> 17 August 2025</p>
                                <p class="mb-2"><i class="fas fa-globe"></i> <strong>Test Type:</strong> Academic</p>
                            </div>
                            <div class="col-md-6 text-md-end">
                                <div class="overall-score">
                                    <h3 class="mb-0">Overall Band Score</h3>
                                    <div class="score-display">7.0</div>
                                </div>
                            </div>
                        </div>
                        
                        <hr>
                        
                        <h5 class="mb-3">Module Scores</h5>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <div class="module-score">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div>
                                            <i class="fas fa-headphones text-info"></i> <strong>Listening</strong>
                                        </div>
                                        <div class="score-badge">7.5</div>
                                    </div>
                                    <div class="progress mt-2">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 83.33%" aria-valuenow="7.5" aria-valuemin="0" aria-valuemax="9"></div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-md-6 mb-3">
                                <div class="module-score">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div>
                                            <i class="fas fa-book-open text-success"></i> <strong>Reading</strong>
                                        </div>
                                        <div class="score-badge">7.5</div>
                                    </div>
                                    <div class="progress mt-2">
                                        <div class="progress-bar bg-success" role="progressbar" style="width: 83.33%" aria-valuenow="7.5" aria-valuemin="0" aria-valuemax="9"></div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-md-6 mb-3">
                                <div class="module-score">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div>
                                            <i class="fas fa-pen text-warning"></i> <strong>Writing</strong>
                                        </div>
                                        <div class="score-badge">6.5</div>
                                    </div>
                                    <div class="progress mt-2">
                                        <div class="progress-bar bg-warning" role="progressbar" style="width: 72.22%" aria-valuenow="6.5" aria-valuemin="0" aria-valuemax="9"></div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-md-6 mb-3">
                                <div class="module-score">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div>
                                            <i class="fas fa-comments text-danger"></i> <strong>Speaking</strong>
                                        </div>
                                        <div class="score-badge">6.5</div>
                                    </div>
                                    <div class="progress mt-2">
                                        <div class="progress-bar bg-danger" role="progressbar" style="width: 72.22%" aria-valuenow="6.5" aria-valuemin="0" aria-valuemax="9"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <hr>
                        
                        <div class="row mt-3">
                            <div class="col-12">
                                <h5 class="mb-3">CEFR Level</h5>
                                <p class="mb-0">This IELTS score corresponds to <strong>CEFR Level C1</strong> (Advanced/Proficient User), demonstrating the ability to:</p>
                                <ul class="mt-2">
                                    <li>Understand a wide range of demanding, longer texts and recognize implicit meaning</li>
                                    <li>Express ideas fluently and spontaneously without much obvious searching for expressions</li>
                                    <li>Use language flexibly and effectively for social, academic, and professional purposes</li>
                                    <li>Produce clear, well-structured, detailed text on complex subjects</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Additional Test Scores Section (placeholder for future scores) -->
<div class="row mt-5 mb-5">
    <div class="col-12">
        <h2 class="section-title"><i class="fas fa-clipboard-check text-secondary"></i> Other Standardized Tests</h2>
        <div class="alert alert-info mt-3" role="alert">
            <i class="fas fa-info-circle"></i> Additional test scores (GRE, TOEFL, etc.) will be added here as they become available.
        </div>
    </div>
</div>

</div>

<style>
.section-title {
    font-size: 1.8rem;
    font-weight: 600;
    color: var(--global-text-color);
    border-bottom: 2px solid var(--global-divider-color);
    padding-bottom: 0.5rem;
    margin-bottom: 1rem;
}

.test-score-card {
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    border: none;
    transition: transform 0.3s;
}

.test-score-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
}

.overall-score {
    text-align: center;
}

.score-display {
    font-size: 3rem;
    font-weight: bold;
    color: #007bff;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}

.module-score {
    background-color: var(--global-bg-color);
    padding: 1rem;
    border-radius: 8px;
    border: 1px solid var(--global-divider-color);
}

.score-badge {
    font-size: 1.5rem;
    font-weight: bold;
    color: var(--global-theme-color);
}

.progress {
    height: 10px;
    border-radius: 5px;
    background-color: var(--global-divider-color);
}

.progress-bar {
    border-radius: 5px;
}

/* Dark mode adjustments */
html[data-theme="dark"] .test-score-card {
    background-color: var(--global-card-bg-color);
}

html[data-theme="dark"] .card-header.bg-primary {
    background-color: #0056b3 !important;
}

html[data-theme="dark"] .module-score {
    background-color: rgba(255, 255, 255, 0.05);
}

html[data-theme="dark"] .alert-info {
    background-color: rgba(13, 110, 253, 0.1);
    color: var(--global-text-color);
    border-color: rgba(13, 110, 253, 0.3);
}
</style>
