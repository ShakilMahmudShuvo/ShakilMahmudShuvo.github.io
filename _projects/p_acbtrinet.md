---
layout: page
title: ACB-TriNet: Malware Classification with Asymmetric Convolutions & Triplet Attention
short-title: ACB-TriNet
description: Dual-branch deep learning architecture achieving 98.98% accuracy on malware classification. Best Technical Paper at ICETCS 2025 (UK).
img: assets/img/project/acbtrinet.png
importance: 10
category: previous
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        <div class="text-center">
            <a href="https://github.com/ShakilMahmudShuvo/ACB-TriNet" class="btn btn-sm btn-primary" target="_blank">
                <i class="fab fa-github"></i> View on GitHub
            </a>
            <a href="https://drive.google.com/file/d/1fXkstzlnxIDUL3eVXNbeickwkAImdDvD/view" class="btn btn-sm btn-success" target="_blank">
                <i class="fas fa-file-pdf"></i> Preprint PDF
            </a>
            <span class="badge" style="background:#fef3c7;color:#92400e;border:1px solid #fde68a;font-size:0.78rem;padding:4px 10px;border-radius:20px;">🏆 Best Technical Paper · ICETCS 2025</span>
        </div>
    </div>
</div>

---

## Overview

ACB-TriNet is a dual-branch deep learning architecture for malware classification that converts malware binaries into three-channel image representations: **grayscale**, **entropy map**, and **Sobel edge features**, enabling the model to simultaneously capture global structural patterns and fine-grained local textures.

Published at the **International Conference on Emerging Trends in Cybersecurity (ICETCS 2025, UK)** and awarded **Best Technical Paper**. Accepted for publication in **Springer Lecture Notes**.

### Tools & Technologies

`Python` `PyTorch` `OpenCV` `NumPy` `Matplotlib` `Scikit-learn` `Malimg Dataset`

---

## Architecture

The framework has three core innovations:

<div class="row mb-4">
  <div class="col-md-4">
    <div class="card h-100" style="border-left:3px solid #0d9488;">
      <div class="card-body">
        <h6 class="card-title" style="color:#0d9488;"><i class="fas fa-layer-group"></i> Asymmetric Convolution Blocks (ACB)</h6>
        <p class="card-text" style="font-size:0.85rem;">Directional feature extraction using asymmetric 1×k and k×1 kernels alongside standard k×k convolutions. Captures horizontal, vertical, and diagonal patterns in malware visualizations.</p>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card h-100" style="border-left:3px solid #0d9488;">
      <div class="card-body">
        <h6 class="card-title" style="color:#0d9488;"><i class="fas fa-project-diagram"></i> Triplet Attention</h6>
        <p class="card-text" style="font-size:0.85rem;">Cross-dimensional feature refinement across H×W, C×W, and C×H planes without dimensionality reduction, capturing inter-channel and spatial dependencies simultaneously.</p>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card h-100" style="border-left:3px solid #0d9488;">
      <div class="card-body">
        <h6 class="card-title" style="color:#0d9488;"><i class="fas fa-compress-arrows-alt"></i> Global Attention Block (GAB)</h6>
        <p class="card-text" style="font-size:0.85rem;">Final feature fusion module that aggregates multi-scale representations from both branches, producing a discriminative global descriptor for classification.</p>
      </div>
    </div>
  </div>
</div>

### Three-Channel Input Representation

```
Malware Binary → Grayscale visualization  ┐
               → Entropy map              ├→ 3-channel tensor → Dual-branch ACB-TriNet
               → Sobel edge features      ┘
```

A **class-balanced focal loss** handles the significant class imbalance in the Malimg dataset (25 malware families with highly skewed distributions).

---

## Results

<div class="row text-center mb-4">
  <div class="col-md-3 col-6">
    <div class="metric-card">
      <h2 style="color:#0d9488;">98.98%</h2>
      <p>Accuracy</p>
    </div>
  </div>
  <div class="col-md-3 col-6">
    <div class="metric-card">
      <h2 style="color:#0d9488;">98.81%</h2>
      <p>F1-Score</p>
    </div>
  </div>
  <div class="col-md-3 col-6">
    <div class="metric-card">
      <h2 style="color:#0d9488;">2.28%</h2>
      <p>False Negative Rate</p>
    </div>
  </div>
  <div class="col-md-3 col-6">
    <div class="metric-card">
      <h2 style="color:#0d9488;">25</h2>
      <p>Malware Families</p>
    </div>
  </div>
</div>

---

## Citation

```bibtex
@inproceedings{shuvo2025acbtrinet,
  author    = {Shakil Mahmud Shuvo and Rezwanul Haque},
  title     = {ACB-TriNet: Asymmetric Convolutions and Triplet Attention for Effective Malware Classification},
  booktitle = {Proc. ICETCS 2025},
  year      = {2025},
  publisher = {Springer Lecture Notes},
  note      = {Best Technical Paper Award. Accepted, in press.}
}
```

---

<div class="text-center mt-4">
  <a href="https://github.com/ShakilMahmudShuvo/ACB-TriNet" class="btn btn-primary" target="_blank">
    <i class="fab fa-github"></i> View Source Code
  </a>
  <a href="https://drive.google.com/file/d/1fXkstzlnxIDUL3eVXNbeickwkAImdDvD/view" class="btn btn-success ml-2" target="_blank">
    <i class="fas fa-file-pdf"></i> Read Preprint
  </a>
</div>

<style>
.metric-card { padding:18px; border-radius:8px; background:#f0fdfa; border:1px solid #ccfbf1; margin-bottom:16px; }
.metric-card h2 { font-weight:700; margin-bottom:6px; }
</style>
