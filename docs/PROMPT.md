# PROMPT.md — ChatGPT Prompts for Writing Blog Posts

Copy the prompt below into ChatGPT along with your project details to generate a
draft blog post for this site. This file lives in `docs/`, so it is never
deployed. After ChatGPT replies, use the follow-up prompt to get clean Markdown.

## Main Prompt

```
You are a senior technical writer and an expert in the Jekyll "Chirpy" theme. I will give you details
about a software project I built. Your job is to write a complete, publication-ready blog post in
Markdown that I can drop directly into my Jekyll site's _posts/ folder.

## OUTPUT FORMAT (follow exactly)

Return ONLY the final Markdown file content — starting with the YAML front matter block and ending
with the last line of the article. Do not wrap it in code fences unless I ask. Do not add
explanations, commentary, or "here is your post" text.

## FRONT MATTER (YAML)

Use exactly this structure, filling in the placeholders:

---
title: <A specific, compelling title under 60 characters>
date: <today's date in YYYY-MM-DD HH:MM:SS +0600 format>
categories: [projects]
tags: [<3-6 relevant tags>]
image: <path to a project image, or omit this line if I have no image>
toc: true
---

Rules:
- title must be descriptive, not generic (e.g. "Building a RAG Q&A Bot with LangChain", never "My Project").
- categories must be a single item: [projects] (I also have a [blog] category for non-project posts).
- tags should be short lowercase keywords: the main tech stack + the core problem domain.

## CONTENT REQUIREMENTS

Write the post with these sections in this order, using `##` for H2 and `###` for H3:

1. ## Introduction
   - A hook paragraph: what problem motivated the project, in 2-4 sentences. Plain, specific, no hype.

2. ## Project Overview
   - A short table (Category | Details) containing: Project Name, Purpose, Tech Stack, Duration,
     and Role/Contributions. Keep it compact.
   - 1-2 paragraphs describing what the project actually does, end to end.

3. ## Architecture / How It Works
   - Explain the system flow: components, how data moves, key design decisions.
   - Include ONE Mermaid diagram (flowchart or sequence) wrapped in a ```mermaid code block.
   - Explain the diagram in 2-3 sentences.

4. ## Key Implementation Details
   - 2-4 H3 subsections, each about one interesting technical challenge (e.g. data pipeline,
     model choice, API design, optimization, a bug you solved).
   - Include 1-3 short, real code snippets per subsection in ```python, ```sql, or ```bash fences.
     Each snippet must be under 25 lines, self-contained, and have a one-line comment explaining
     the non-obvious part. Do not dump entire files.

5. ## Challenges & Lessons Learned
   - 3-5 bullet points: real difficulties you hit and how you solved them, plus 1-2 things you'd
     do differently. Be honest and specific, not generic.

6. ## Results / Impact
   - 2-4 bullets with concrete numbers where possible (accuracy, latency, users, LoC, time saved).
     If you don't have numbers, describe qualitative results.

7. ## Conclusion
   - 2-3 sentences summarizing what the project taught you.

8. ## Links
   - A short list:
     - [GitHub Repository](<your repo URL>)
     - [Live Demo](<demo URL>)  (only if one exists)

## TONE & STYLE

- First person ("I"), professional, concise, beginner-friendly.
- No fluff, no marketing speak, no emojis, no exclamation marks.
- Use active voice and short sentences.
- Aim for 800-1200 words total.

## CHIRPY/JEKYLL RULES

- Use standard Markdown; GitHub-style tables use pipes.
- Put your image (if any) in the site's assets/img/ folder and reference it like:
  /assets/img/<project-image>.png
- Do NOT use raw HTML for layout; only standard Markdown and fenced code blocks.
- No emojis anywhere.

## NOW, HERE ARE MY PROJECT DETAILS (fill these in)

- Project name / GitHub repo URL: <PASTE>
- What it does (2-3 sentences): <PASTE>
- Tech stack: <PASTE>
- Key features: <PASTE>
- Architecture/flow (if you know it): <PASTE>
- Most interesting technical challenge: <PASTE>
- Results/numbers (if any): <PASTE>
- Anything you learned: <PASTE>
- Demo/live link (if any): <PASTE>
- Screenshots or code you want included: <PASTE or say "none">
```

## Follow-up Prompt (convert a plain answer to Markdown)

Use this when ChatGPT replies with unformatted text instead of clean Markdown:

```
Ignore your previous formatting. Take the blog post you just wrote and convert it into ONE complete
Markdown file that I can paste directly into my Jekyll (Chirpy theme) _posts/ folder.

Do this:
1. Start with YAML front matter between two `---` lines containing: title, date in
   `YYYY-MM-DD HH:MM:SS +0600` format, categories: [projects], tags: [...], toc: true.
2. Use standard Markdown only — `##` for main sections, `###` for subsections.
3. Convert any paragraph grouping into proper headings instead of plain text.
4. Make all lists real Markdown lists (`-` bullets or `1.` numbered).
5. Wrap every code example in triple-backtick fences with a language label (e.g. ```python).
6. Convert any tabular info into GitHub-style pipe tables (| col | col |).
7. Bold key terms with **...** and italicize with *...*.
8. No emojis, no raw HTML, no walls of unformatted text.
9. Output ONLY the Markdown file content itself — no intro sentence, no "here is your post",
   and do NOT wrap the whole thing in a code fence.
```

## Workflow

1. Run the main prompt with one project's details.
2. If the output is not clean Markdown, run the follow-up prompt on it.
3. Copy the result into `_posts/YYYY-MM-DD-post-slug.md`.
4. Make sure `date` is quoted in the front matter, and the GitHub link is real.
5. Build and check: `.\tools\test.ps1` (or `bundle exec jekyll build`).

## Related

- [blog-post-template.md](blog-post-template.md) — the post structure and front matter.
- [projects-card-template.md](projects-card-template.md) — card template for the Projects page.