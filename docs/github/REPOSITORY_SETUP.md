# Create and Publish the GitHub Repository

## Recommended repository
- Name: `finbank-ai-devsecops-120-days`
- Description: `120-day AWS DevOps, DevSecOps, AIOps and banking platform engineering portfolio`
- Visibility: Public only after a secret and privacy review. Otherwise begin Private.
- Do not initialize the remote with files if you will push this extracted package, to avoid an unnecessary first merge.

## Web method
1. Sign in to GitHub.
2. Use the **New repository** action.
3. Select your personal account as owner.
4. Enter the recommended name and description.
5. Choose visibility.
6. Leave README, `.gitignore`, and license unselected when importing this package.
7. Create the repository and copy its SSH URL.

## Local or EC2 commands
```bash
mkdir -p ~/Projects
cd ~/Projects
unzip AWS-DevOps-AI-Banking-120-Day-Master-Pack.zip
cd AWS-DevOps-AI-Banking-120-Day-Master-Pack

git init
git branch -M main
git add .
git diff --cached --check
git status
git commit -m "docs: initialize 120-day AWS DevOps AI banking roadmap"

git remote add origin git@github.com:YOUR_GITHUB_USERNAME/finbank-ai-devsecops-120-days.git
git remote -v
git push -u origin main
```

## Immediately configure
- Protect `main` and require pull requests.
- Require successful status checks.
- Enable secret scanning and dependency alerts when available.
- Add repository topics: `aws`, `devops`, `devsecops`, `kubernetes`, `terraform`, `aiops`, `banking`, `amazon-bedrock`.
- Create milestones for each roadmap phase.

## Daily Git workflow
```bash
git switch main
git pull --ff-only
git switch -c day-001-foundation
# complete notes and lab
git add .
git diff --cached
git commit -m "docs(day-001): complete baseline and guardrails"
git push -u origin day-001-foundation
```
Open a pull request, review the diff and evidence, then merge after checks pass.
