---
layout: about
title: About
permalink: /
subtitle: <span id="dynamic-title" class="dynamic-title"></span>
# <p>Graduate Student (M.Sc)</p>

profile:
  align: left
  image: profile.jpg
  image_circular: true # crops the image to make it circular
  # address: >
  #   <p style="font-weight: 400; font-style: italic">Machine Learning Engineer</p>
  #   <p style="font-weight: 500;">ACI Limited</p>

news: false  # includes a list of news items
latest_posts: false  # includes a list of the newest posts
selected_papers: true # includes a list of papers marked as "selected={true}"
education: true # includes educational qualification
social: true  # includes social icons at the bottom of the page


---

<script>
document.addEventListener('DOMContentLoaded', function() {
    const titles = [
        "Data Scientist",
        "Machine Learning Engineer",
        "PhD Aspirant",
        "Machine Learning Researcher",
        "Deep Learning Enthusiast",
        "Traveller"
    ];
    
    let currentIndex = 0;
    const dynamicTitle = document.getElementById('dynamic-title');
    
    function typeWriter(text, index = 0) {
        if (index < text.length) {
            dynamicTitle.textContent = text.substring(0, index + 1);
            setTimeout(() => typeWriter(text, index + 1), 100);
        } else {
            setTimeout(() => {
                deleteText(text);
            }, 2000);
        }
    }
    
    function deleteText(text, index = text.length) {
        if (index > 0) {
            dynamicTitle.textContent = text.substring(0, index - 1);
            setTimeout(() => deleteText(text, index - 1), 50);
        } else {
            currentIndex = (currentIndex + 1) % titles.length;
            setTimeout(() => typeWriter(titles[currentIndex]), 500);
        }
    }
    
    // Start the animation
    typeWriter(titles[currentIndex]);
});
</script>

<style>
.dynamic-title {
    color: var(--global-theme-color);
    font-weight: 500;
    min-height: 1.5em;
    display: inline-block;
    position: relative;
}

.dynamic-title::after {
    content: '|';
    position: absolute;
    right: -10px;
    animation: blink 1s infinite;
    color: var(--global-theme-color);
}

@keyframes blink {
    0%, 50% { opacity: 1; }
    51%, 100% { opacity: 0; }
}

/* Add some style to the subtitle area */
.page-title .page-description {
    min-height: 2em;
}

/* Research highlight box */
.research-highlight {
    background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
    border-left: 4px solid var(--global-theme-color);
    padding: 1rem 1.5rem;
    margin: 1.5rem 0;
    border-radius: 0 8px 8px 0;
}

.research-highlight h4 {
    color: var(--global-theme-color);
    margin-bottom: 0.5rem;
}
</style>

## About Me

As a passionate **Machine Learning Researcher**, I thrive on pushing the boundaries of AI to solve real-world challenges. My research journey has led me through diverse areas of machine learning, from medical imaging and natural language processing to computer vision, resulting in **6 peer-reviewed publications** where I've contributed as both lead and collaborative researcher.

My professional experience spans both academia and industry. Currently, I work as an **Associate Data Scientist** at [Cognitus Consulting LLC](https://cognitus.com), where I architect large language model solutions for Fortune 500 clients. This role has deepened my understanding of practical AI deployment while reinforcing my belief that the most impactful research bridges theoretical innovation with real-world application.

<div class="research-highlight">
    <h4><i class="fas fa-lightbulb mr-2"></i>Research Philosophy</h4>
    <p class="mb-0">I believe in the transformative power of machine learning across domains. While my published work focuses on healthcare AI, I'm <strong>eager to explore new frontiers in ML</strong> - from reinforcement learning and generative models to emerging paradigms in AI. Every new challenge is an opportunity to learn, adapt, and innovate.</p>
</div>

My academic foundation was built at [Rajshahi University of Engineering & Technology (RUET)](https://www.ruet.ac.bd/), where I earned my **B.Sc. in Computer Science & Engineering**. During my time there, I served as a research assistant at the *Young Learners' Research Lab*, where I discovered my passion for pushing the boundaries of what's possible with AI.

## Research Journey & Aspirations

Throughout my research career, I've developed expertise in:

- **Medical AI Systems**: Creating innovative architectures for brain tumor classification, retinal disease detection, and glioma segmentation
- **NLP Applications**: Building BERT-based models for mental health applications, including early detection of suicidal ideation
- **Computer Vision**: Implementing attention mechanisms and fusion techniques for enhanced image analysis
- **Cross-Domain Learning**: Applying transfer learning and ensemble methods across different problem spaces

What excites me most is the **unexplored potential** of machine learning. I'm actively seeking **PhD opportunities** where I can contribute to cutting-edge research while continuously expanding my horizons. Whether it's developing novel architectures, exploring theoretical foundations, or applying ML to entirely new domains, I approach each challenge with curiosity and determination.

<div class="research-highlight">
    <h4><i class="fas fa-rocket mr-2"></i>Looking Forward</h4>
    <p class="mb-0">I'm particularly interested in emerging areas like federated learning, multimodal AI, explainable AI systems, and the intersection of ML with other fields. My goal is not just to advance the state-of-the-art, but to ensure AI technologies are accessible, interpretable, and beneficial for all.</p>
</div>

<div class="text-center mt-4 mb-4">
    <a href="/research/" class="btn btn-outline-primary btn-lg">
        <i class="fas fa-microscope mr-2"></i>View My Research
    </a>
</div>

---

<!-- Put your address / P.O. box / other info right below your picture. You can also disable any of these elements by editing `profile` property of the YAML header of your `_pages/about.md`. Edit `_bibliography/papers.bib` and Jekyll will render your [publications page](/al-folio/publications/) automatically.

Link to your social media connections, too. This theme is set up to use [Font Awesome icons](http://fortawesome.github.io/Font-Awesome/) and [Academicons](https://jpswalsh.github.io/academicons/), like the ones below. Add your Facebook, Twitter, LinkedIn, Google Scholar, or just disable all of them. -->
