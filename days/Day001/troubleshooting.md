# Day 001 Production Troubleshooting

## Scenario 1: Files staged in the wrong repository
**Symptoms:** `git status` shows unrelated application files.  
**Immediate action:** Do not commit or push.  
**Evidence:** `pwd`, `git rev-parse --show-toplevel`, `git remote -v`, `git status --short`.  
**Likely cause:** Command executed from the wrong directory or a repository was nested accidentally.  
**Recovery:** Change to the correct repository. If files were only staged, use `git restore --staged <path>` from the affected repository after reviewing the path. Do not delete files blindly.  
**Prevention:** Five-point repository check and repository-specific shell aliases.

## Scenario 2: `Permission denied (publickey)` during push
Verify the remote URL, SSH agent identities, key file permissions and GitHub key registration. Test with `ssh -T git@github.com`. Do not generate or replace keys until the current identity and configuration are understood.

## Scenario 3: Files exist locally but do not appear in Git
Git does not track empty directories. Add a meaningful file or a `.gitkeep` only when the empty directory itself is intentional. Check ignore rules with `git check-ignore -v <path>`.

## Scenario 4: AWS CLI reports expired token
Inspect `aws configure list`, environment variables, profile selection and credential-source type. Refresh temporary credentials through the approved mechanism. Never replace temporary credentials with long-lived keys merely to bypass expiration.

## Scenario 5: Disk usage is unexpectedly high
Use `df -hT` for filesystem capacity, `df -ih` for inode pressure, and `du -xhd1` from a known directory to locate consumption. Avoid deleting logs or application data before reviewing ownership, retention and recovery impact.

## Scenario 6: AI-generated command contains `rm -rf`
Do not execute it. Identify scope, expand variables safely, require a dry run or listing operation, confirm backup and rollback, and replace broad deletion with an explicit allowlisted path. AI output never overrides human review.
