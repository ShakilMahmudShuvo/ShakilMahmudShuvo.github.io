---
layout: page
title: Suicidal Ideation Detection Using Language Models
short-title: Suicidal Ideation Detection
description: Transformer-based NLP system for early detection of suicidal ideation in Reddit posts.
img: assets/img/project/suicidal.jpg
importance: 8
category: previous
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        <div class="text-center">
            <a href="https://github.com/ShakilMahmudShuvo/SuicidalIdeationDetection" class="btn btn-sm btn-primary" target="_blank">
                <i class="fab fa-github"></i> View on GitHub
            </a>
            <a href="https://dl.acm.org/doi/full/10.1145/3723178.3723242" class="btn btn-sm btn-success" target="_blank">
                <i class="fas fa-file-alt"></i> Read Paper
            </a>
        </div>
    </div>
</div>

---

## Overview

This research addresses a critical mental health challenge by developing an advanced NLP system for early detection of suicidal ideation in social media posts. Published at **ICCA 2024** as a **first-author paper**, this work combines state-of-the-art language models with Bidirectional GRU networks to achieve remarkable detection accuracy while minimizing false negatives—crucial for potentially life-saving interventions.

The system analyzes Reddit posts to identify linguistic patterns and emotional markers associated with suicidal ideation, providing a scalable solution for mental health monitoring in online communities.

### Tools & Technologies

`Python` `PyTorch` `Transformers` `BERT` `RoBERTa` `DistilBERT` `ELECTRA` `Bi-GRU` `scikit-learn` `NLTK` `Pandas`

---

## Research Motivation

Suicide is a leading cause of death worldwide, with social media platforms increasingly becoming spaces where individuals express distressing thoughts. However, detecting these signals faces several challenges:

- **Implicit Expression**: People often express suicidal thoughts indirectly due to stigma
- **Complex Language**: Sarcasm, metaphors, and context-dependent meanings complicate detection
- **High Stakes**: False negatives could mean missing someone in crisis
- **Scale Challenge**: Manual monitoring of millions of posts is impossible

Our approach leverages deep learning to provide automated, scalable detection while maintaining high sensitivity to potential crisis situations.

---

## Technical Innovation

### 1. **Hybrid Architecture**

Our novel approach combines the strengths of two powerful techniques:

<div class="row">
    <div class="col-md-6">
        <div class="card h-100 border-primary">
            <div class="card-body">
                <h5 class="card-title text-primary"><i class="fas fa-brain"></i> Pre-trained Language Models</h5>
                <p class="card-text">Leverage contextual understanding from BERT, RoBERTa, DistilBERT, DistilRoBERTa, and ELECTRA-Small for deep semantic comprehension</p>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="card h-100 border-success">
            <div class="card-body">
                <h5 class="card-title text-success"><i class="fas fa-sync-alt"></i> Bidirectional GRU</h5>
                <p class="card-text">Capture sequential dependencies and temporal patterns in both forward and backward directions for enhanced text understanding</p>
            </div>
        </div>
    </div>
</div>

### 2. **Model Architecture**

```python
Input Text → Tokenization → Pre-trained Language Model → 
Contextual Embeddings → Bidirectional GRU → 
Dense Layer → Sigmoid → Binary Classification
```

### 3. **Key Features**

- **Contextual Understanding**: Language models capture nuanced meanings and context
- **Sequential Pattern Recognition**: Bi-GRU identifies temporal dependencies in text
- **Attention to Subtle Cues**: Model learns to recognize indirect expressions of distress
- **Low False Negative Rate**: Optimized to minimize missing at-risk individuals

---

## Results & Performance

<div class="row text-center mb-4">
    <div class="col-md-3 col-6">
        <div class="metric-card">
            <h2 class="text-primary">95.8%</h2>
            <p>BERT-BiGRU Accuracy</p>
        </div>
    </div>
    <div class="col-md-3 col-6">
        <div class="metric-card">
            <h2 class="text-success">95.2%</h2>
            <p>DistilBERT-BiGRU Accuracy</p>
        </div>
    </div>
    <div class="col-md-3 col-6">
        <div class="metric-card">
            <h2 class="text-warning">4.17%</h2>
            <p>BERT False Negative Rate</p>
        </div>
    </div>
    <div class="col-md-3 col-6">
        <div class="metric-card">
            <h2 class="text-info">2.80%</h2>
            <p>DistilBERT False Negative Rate</p>
        </div>
    </div>
</div>

### Model Performance Comparison

| Model | Accuracy | Precision | Recall | F1-Score | False Negative Rate |
|-------|----------|-----------|---------|----------|-------------------|
| **BERT-BiGRU** | **95.8%** | 94.2% | 97.1% | 95.6% | **4.17%** |
| **DistilBERT-BiGRU** | **95.2%** | 93.8% | 96.5% | 95.1% | **2.80%** |
| RoBERTa-BiGRU | 94.6% | 93.1% | 96.0% | 94.5% | 5.23% |
| ELECTRA-BiGRU | 93.9% | 92.4% | 95.3% | 93.8% | 6.15% |

---

## Ethical Considerations

This research was conducted with careful attention to:
- **Privacy**: All data was anonymized and no personal identifiers were retained
- **Consent**: Used only publicly available data from consenting platforms
- **Responsible Disclosure**: Results shared with mental health organizations
- **Deployment Ethics**: Emphasis on human-in-the-loop systems

---

## Real-World Impact

### Potential Applications
- **Social Media Monitoring**: Early warning systems for platforms
- **Mental Health Support**: Assisting counselors in identifying at-risk individuals
- **Research Tool**: Understanding linguistic markers of mental distress
- **Crisis Prevention**: Enabling timely interventions

### Key Advantages
- **Scalability**: Can process millions of posts in real-time
- **Consistency**: Eliminates human variability in screening
- **24/7 Availability**: Continuous monitoring capability
- **Multi-platform**: Adaptable to various social media platforms

---

## Citation

If you use this work in your research, please cite:

```bibtex
@inproceedings{shuvo2024early,
  title={Early Detection of Suicidal Ideation Using Bidirectional GRU 
         and Language Models},
  author={Shuvo, Shakil Mahmud and Novely, Navia and Faruk, Md Farukuzzaman 
          and Srizon, Azmain Yakin and Hasan, SM Mahedy},
  booktitle={Proceedings of the 3rd International Conference on Computing Advancements},
  pages={482--490},
  year={2024}
}
```

---

<div class="text-center mt-5">
    <a href="https://github.com/ShakilMahmudShuvo/SuicidalIdeationDetection" class="btn btn-primary" target="_blank">
        <i class="fab fa-github"></i> View Source Code
    </a>
    <a href="https://dl.acm.org/doi/full/10.1145/3723178.3723242" class="btn btn-success ml-2" target="_blank">
        <i class="fas fa-file-alt"></i> Read Full Paper
    </a>
</div>

<style>
.metric-card {
    padding: 20px;
    border-radius: 10px;
    background: #f8f9fa;
    margin-bottom: 20px;
    transition: all 0.3s ease;
}

.metric-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 5px 20px rgba(0,0,0,0.1);
}

.metric-card h2 {
    font-weight: bold;
    margin-bottom: 10px;
}

table {
    margin: 20px auto;
}

table th {
    background-color: #f8f9fa;
    font-weight: 600;
}

table td {
    text-align: center;
}
</style> 