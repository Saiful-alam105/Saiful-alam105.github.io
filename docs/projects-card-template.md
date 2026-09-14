# Projects Card Template

Reference template for adding a project to the Projects page. This file lives in
`docs/` which is excluded from the Jekyll build, so it is **never deployed** to the
site. Copy a card block into `_tabs/projects.md` and fill it in.

## How to Add a Project

1. Open `_tabs/projects.md`.
2. Duplicate one of the card blocks below (including the `<!-- ... -->` comment).
3. Replace the title, description, links, and badges.
4. If the project has a blog post, add a blog-post link (`/posts/<slug>/`).
5. Build and check: `.\tools\test.ps1` (or `bundle exec jekyll build`).

Each card is a self-contained block you can duplicate and fill in.

## Blank Card (no blog post)

```html
<!-- ============================================================
  PROJECT NAME
============================================================ -->
<div class="card project-card mb-4">
  <div class="card-body">
    <h3 class="card-title h5">
      Project Name
      <a href="https://github.com/Saiful-alam105/<repo>" target="_blank" rel="noopener"
         class="ms-2" aria-label="GitHub repo"><i class="fab fa-github"></i></a>
    </h3>
    <p class="card-text">
      One to two sentences describing what this project does, the problem it
      solves, and what you learned building it.
    </p>
    <p>
      <span class="badge text-bg-light border">Tag 1</span>
      <span class="badge text-bg-light border">Tag 2</span>
      <span class="badge text-bg-light border">Tag 3</span>
    </p>
  </div>
</div>
```

## Card with a Blog Post

```html
<!-- ============================================================
  PROJECT NAME
============================================================ -->
<div class="card project-card mb-4">
  <div class="card-body">
    <h3 class="card-title h5">
      Project Name
      <a href="https://github.com/Saiful-alam105/<repo>" target="_blank" rel="noopener"
         class="ms-2" aria-label="GitHub repo"><i class="fab fa-github"></i></a>
      <a href="/posts/<post-slug>/" class="ms-2" aria-label="Blog post"><i class="fas fa-book"></i></a>
    </h3>
    <p class="card-text">
      One to two sentences describing what this project does, the problem it
      solves, and what you learned building it.
    </p>
    <p>
      <span class="badge text-bg-light border">Tag 1</span>
      <span class="badge text-bg-light border">Tag 2</span>
    </p>
  </div>
</div>
```

## Example (from the deployed page)

```html
<!-- ============================================================
  SMS SPAM DETECTOR
============================================================ -->
<div class="card project-card mb-4">
  <div class="card-body">
    <h3 class="card-title h5">
      SMS Spam Detector
      <a href="https://github.com/Saiful-alam105/spam-detection" target="_blank" rel="noopener"
         class="ms-2" aria-label="GitHub repo"><i class="fab fa-github"></i></a>
      <a href="/posts/sms-spam-detector/" class="ms-2" aria-label="Blog post"><i class="fas fa-book"></i></a>
    </h3>
    <p class="card-text">
      An end-to-end NLP and machine-learning project that classifies SMS messages
      as spam or ham. Compares Naive Bayes, Logistic Regression, and Random Forest
      against an RNN, with Random Forest achieving the best overall F1 score.
    </p>
    <p>
      <span class="badge text-bg-light border">Python</span>
      <span class="badge text-bg-light border">NLP</span>
      <span class="badge text-bg-light border">Scikit-learn</span>
    </p>
  </div>
</div>
```