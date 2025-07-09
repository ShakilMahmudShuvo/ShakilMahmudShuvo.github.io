---
layout: page
title: Retinal Disease Classification using OCT Images
short-title: Retinal Disease Classification (OCT)
description: Hybrid CNN architectures with attention mechanisms for multi-class retinal disease identification.
img: assets/img/project/retinal_oct.jpg
importance: 9
category: previous
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        <div class="text-center">
            <a href="https://github.com/ShakilMahmudShuvo/RetinalDiseaseMulticlassClassification" class="btn btn-sm btn-primary" target="_blank">
                <i class="fab fa-github"></i> View on GitHub
            </a>
            <a href="https://dl.acm.org/doi/full/10.1145/3723178.3723304" class="btn btn-sm btn-success" target="_blank">
                <i class="fas fa-file-alt"></i> Read Paper
            </a>
        </div>
    </div>
</div>

---

## Overview

This research presents a novel approach to automated retinal disease classification using Optical Coherence Tomography (OCT) images. By incorporating **Convolutional Block Attention Module (CBAM)** and **skip connections** into pre-trained CNNs, we achieved state-of-the-art performance in identifying eight different retinal conditions.

Published at the **3rd International Conference on Computing Advancements (ICCA 2024)**, this work addresses the critical need for automated diagnostic tools in ophthalmology, potentially preventing blindness through early disease detection.

### Tools & Technologies

`Python` `TensorFlow` `Keras` `OpenCV` `NumPy` `Pandas` `Matplotlib` `CBAM` `DenseNet121` `Xception`

---

## Research Motivation

Millions of people worldwide suffer from retinal diseases that, if left untreated, can lead to preventable blindness. Traditional manual diagnosis methods are:
- Time-consuming and labor-intensive
- Subject to inter-observer variability
- Limited by the availability of specialized ophthalmologists
- Prone to human error in early-stage disease detection

Our automated approach using deep learning aims to overcome these limitations by providing fast, consistent, and accurate diagnoses.

---

## Technical Approach

### 1. **Hybrid Architecture Design**

We developed a novel architecture combining three key components:

<div class="row">
    <div class="col-md-4">
        <div class="card h-100 border-primary">
            <div class="card-body">
                <h5 class="card-title text-primary"><i class="fas fa-network-wired"></i> Pre-trained CNNs</h5>
                <p class="card-text">Leveraged transfer learning with DenseNet121, ResNet50, VGG16, Xception, and EfficientNetB1</p>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card h-100 border-success">
            <div class="card-body">
                <h5 class="card-title text-success"><i class="fas fa-eye"></i> CBAM Module</h5>
                <p class="card-text">Enhanced feature extraction by focusing on pathologically significant regions in OCT images</p>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card h-100 border-warning">
            <div class="card-body">
                <h5 class="card-title text-warning"><i class="fas fa-project-diagram"></i> Skip Connections</h5>
                <p class="card-text">Facilitated direct information flow between layers, preserving fine-grained features</p>
            </div>
        </div>
    </div>
</div>

### 2. **Dataset: OCT-C8**

The study utilized the comprehensive OCT-C8 dataset containing:
- **8 Classes**: 7 disease types + 1 healthy class
- **Diseases Covered**:
  - Age-related Macular Degeneration (AMD)
  - Diabetic Macular Edema (DME)
  - Epiretinal Membrane (ERM)
  - Macular Hole (MH)
  - Retinal Artery Occlusion (RAO)
  - Retinal Vein Occlusion (RVO)
  - Vitreomacular Traction (VMT)
  - Normal retina

### 3. **Model Architecture**

```python
# Simplified architecture overview
Input OCT Image → Pre-trained CNN Base → CBAM Module → Skip Connection → 
Dense Layers → Softmax Classification → Disease Prediction
```

---

## Results & Performance

<div class="row text-center mb-4">
    <div class="col-md-3 col-6">
        <div class="metric-card">
            <h2 class="text-primary">96.28%</h2>
            <p>DenseNet-CBAM-Skip Accuracy</p>
        </div>
    </div>
    <div class="col-md-3 col-6">
        <div class="metric-card">
            <h2 class="text-success">96.11%</h2>
            <p>Xception-CBAM-Skip Accuracy</p>
        </div>
    </div>
    <div class="col-md-3 col-6">
        <div class="metric-card">
            <h2 class="text-warning">96.31%</h2>
            <p>F1-Score (DenseNet)</p>
        </div>
    </div>
    <div class="col-md-3 col-6">
        <div class="metric-card">
            <h2 class="text-info">8</h2>
            <p>Classes Identified</p>
        </div>
    </div>
</div>

### Performance Comparison

Our hybrid models significantly outperformed baseline pre-trained models:
- **DenseNet121 (baseline)**: 91.2% → **DenseNet-CBAM-Skip**: 96.28% (+5.08%)
- **Xception (baseline)**: 90.8% → **Xception-CBAM-Skip**: 96.11% (+5.31%)

---

## Key Innovations

1. **Attention-Enhanced Feature Extraction**: CBAM module enables the model to focus on disease-specific regions in OCT images
2. **Information Preservation**: Skip connections prevent loss of fine-grained details crucial for accurate diagnosis
3. **Efficient Transfer Learning**: Leveraged pre-trained models while adapting them specifically for retinal disease patterns
4. **Multi-Architecture Validation**: Tested across multiple CNN architectures to ensure robustness

---

## Clinical Impact

This research contributes to:
- **Early Disease Detection**: Automated screening can identify diseases in early stages
- **Healthcare Accessibility**: Reduces dependency on specialized ophthalmologists in remote areas
- **Consistent Diagnoses**: Eliminates inter-observer variability
- **Rapid Processing**: Real-time classification enables immediate clinical decisions

---

## Implementation Details

### Model Training
- **Optimizer**: Adam with learning rate scheduling
- **Loss Function**: Categorical cross-entropy
- **Data Augmentation**: Rotation, flipping, zooming to improve generalization
- **Validation Strategy**: 5-fold cross-validation

### Hardware Requirements
- **GPU**: NVIDIA Tesla V100 or equivalent
- **RAM**: Minimum 16GB
- **Storage**: ~10GB for dataset and models

---

## Future Work

- Integration with clinical imaging systems for real-time diagnosis
- Extension to other imaging modalities (fundus photography, fluorescein angiography)
- Development of explainable AI features for clinical interpretation
- Mobile deployment for point-of-care diagnostics

---

## Citation

If you use this work in your research, please cite:

```bibtex
@inproceedings{novely2024improving,
  title={Improving Pre-Trained CNNs with CBAM and Skip Connections for 
         Multi-Class Retinal Diseases Classification using OCT Images},
  author={Novely, Navia and Mahmud Shuvo, Shakil and Faruk, Md Farukuzzaman},
  booktitle={Proceedings of the 3rd International Conference on Computing Advancements},
  pages={946--953},
  year={2024}
}
```

---

<div class="text-center mt-5">
    <a href="https://github.com/ShakilMahmudShuvo/RetinalDiseaseMulticlassClassification" class="btn btn-primary" target="_blank">
        <i class="fab fa-github"></i> View Source Code
    </a>
    <a href="https://dl.acm.org/doi/full/10.1145/3723178.3723304" class="btn btn-success ml-2" target="_blank">
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
</style> 