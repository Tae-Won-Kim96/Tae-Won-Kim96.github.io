$ErrorActionPreference = "Stop"
$RepoUrl = "https://github.com/Tae-Won-Kim96/Tae-Won-Kim96.github.io.git"

Write-Host "Publishing Tae-Won Kim portfolio to GitHub Pages..." -ForegroundColor Cyan

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "Git is not installed. Install Git for Windows first: https://git-scm.com/download/win" -ForegroundColor Red
    exit 1
}

if (-not (Test-Path ".git")) {
    git init
}

$name = git config user.name 2>$null
if (-not $name) {
    $name = Read-Host "Git commit name (e.g. Tae-Won Kim)"
    git config user.name "$name"
}

$email = git config user.email 2>$null
if (-not $email) {
    $email = Read-Host "Git commit email (GitHub no-reply email is OK)"
    git config user.email "$email"
}

git branch -M main

git add index.html .nojekyll README.md README_DEPLOY.md PUBLISH_WINDOWS.ps1

$hasCommit = git rev-parse --verify HEAD 2>$null
if ($LASTEXITCODE -ne 0) {
    git commit -m "Initial portfolio"
} else {
    $changes = git status --porcelain
    if ($changes) {
        git commit -m "Update portfolio"
    }
}

$origin = git remote get-url origin 2>$null
if ($LASTEXITCODE -eq 0) {
    if ($origin -ne $RepoUrl) {
        git remote set-url origin $RepoUrl
    }
} else {
    git remote add origin $RepoUrl
}

Write-Host "Remote:" -ForegroundColor Yellow
git remote -v

Write-Host "Pushing main branch..." -ForegroundColor Cyan
git push -u origin main

Write-Host "Done. GitHub Pages URL: https://Tae-Won-Kim96.github.io" -ForegroundColor Green
Write-Host "If GitHub asks you to sign in, complete the browser authentication prompt." -ForegroundColor Yellow
