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

I am a **Machine Learning Researcher** with a proven track record of **6 peer-reviewed publications** (2 as first author) and a passion for developing AI solutions that address critical healthcare challenges. My research has consistently achieved state-of-the-art results, with accuracies ranging from **96.33% to 99.33%** across medical imaging, NLP for mental health, and computer vision applications.

<div class="research-highlight">
    <h4><i class="fas fa-graduation-cap mr-2"></i>PhD Aspirations</h4>
    <p class="mb-0">I am actively seeking PhD opportunities to advance my research in <strong>trustworthy AI for healthcare</strong>, with particular focus on multimodal learning, federated systems, and explainable AI. My goal is to develop AI technologies that democratize healthcare access globally while ensuring privacy, interpretability, and robustness.</p>
</div>

Currently, I serve as an **Associate Data Scientist** at [Cognitus Consulting LLC](https://cognitus.com), where I spearhead the development of large-language-model driven systems for Fortune 500 clients. My journey in AI research began at [Rajshahi University of Engineering & Technology (RUET)](https://www.ruet.ac.bd/), where I graduated with a **B.Sc. in Computer Science & Engineering** and worked as a research assistant at the *Young Learners' Research Lab*.

## Research Contributions

My research contributions span multiple high-impact areas:

- **Medical Imaging & AI**: Developed novel architectures for brain tumor classification, glioma segmentation, and retinal disease detection
- **NLP for Mental Health**: Created BERT-based systems for early detection of suicidal ideation with 95.8% accuracy
- **Computer Vision Innovation**: Implemented attention mechanisms and fusion techniques achieving up to 99.33% accuracy
- **Healthcare AI Systems**: Published in prestigious venues including **ICCA 2024**, **BIM 2023**, and **NCIM 2023**

<div class="text-center mt-4 mb-4">
    <a href="/research/" class="btn btn-outline-primary btn-lg">
        <i class="fas fa-microscope mr-2"></i>View My Research
    </a>
</div>

---

<!-- Put your address / P.O. box / other info right below your picture. You can also disable any of these elements by editing `profile` property of the YAML header of your `_pages/about.md`. Edit `_bibliography/papers.bib` and Jekyll will render your [publications page](/al-folio/publications/) automatically.

Link to your social media connections, too. This theme is set up to use [Font Awesome icons](http://fortawesome.github.io/Font-Awesome/) and [Academicons](https://jpswalsh.github.io/academicons/), like the ones below. Add your Facebook, Twitter, LinkedIn, Google Scholar, or just disable all of them. -->
