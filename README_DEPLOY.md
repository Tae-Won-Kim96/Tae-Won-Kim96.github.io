# Tae-Won Kim — Portfolio deployment guide

This folder contains a single-file portfolio (`index.html`) designed for GitHub Pages.

## Recommended URL

If your GitHub username is `Tae-Won-Kim96`, create a repository named:

`Tae-Won-Kim96.github.io`

After deployment, the portfolio will normally be available at:

`https://Tae-Won-Kim96.github.io/`

## Method A — Upload through the GitHub website (easiest)

1. Sign in to GitHub.
2. Click **New repository**.
3. Repository name: **Tae-Won-Kim96.github.io**
4. Set visibility to **Public**.
5. Create the repository.
6. Click **Add file → Upload files**.
7. Upload `index.html` from this folder.
8. Commit the file to the `main` branch.
9. Open **Settings → Pages**.
10. Under **Build and deployment**, choose **Deploy from a branch**.
11. Select branch **main** and folder **/(root)**.
12. Click **Save**.
13. Wait a few minutes, then visit `https://Tae-Won-Kim96.github.io/`.

## Method B — Git command line

```bash
git clone https://github.com/Tae-Won-Kim96/Tae-Won-Kim96.github.io.git
cd Tae-Won-Kim96.github.io
# copy index.html into this folder
git add index.html
git commit -m "Add research portfolio"
git push origin main
```

Then enable GitHub Pages in **Settings → Pages** if it is not already enabled.

## What to edit before publishing

Open `index.html` in a text editor and search for these strings:

- `Tae-Won Kim` — your display name
- `taewon_kim@korea.ac.kr` — contact email
- `Tae-Won-Kim96` — GitHub username/links
- `Korea University · PRML Lab` — affiliation
- Publication title / citation

## Do NOT add the confidential project

If the institution did not authorize disclosure, do not mention the organization, project title, role, client, dataset, model, performance, or even a generalized project description unless disclosure itself is explicitly permitted.

## Optional next upgrades

- Add a Google Scholar button once you have a public Scholar profile URL.
- Add a downloadable CV PDF.
- Add a compressed showcase video or link to an unlisted YouTube/Vimeo demo.
- Add a custom domain later (e.g. `taewonkim.ai`).
- Add a second public research/project card when you have another public work item.

## QR code for the showcase

Use the final GitHub Pages URL as the QR destination. This is better than linking directly to a single repository because visitors can see your research identity, contact information, publication, and code from one page.
