# meytal-claude-code-basic - Setup Script
# Copies skills and CLAUDE.md to your project

param(
    [Parameter(Mandatory=$true)]
    [string]$ProjectPath
)

# Validate project path
if (-not (Test-Path $ProjectPath)) {
    Write-Host "Error: Path '$ProjectPath' does not exist." -ForegroundColor Red
    exit 1
}

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$SkillsSource = Join-Path $ScriptDir ".claude\skills"
$ClaudeMdSource = Join-Path $ScriptDir "CLAUDE.md"

$SkillsDest = Join-Path $ProjectPath ".claude\skills"
$ClaudeMdDest = Join-Path $ProjectPath "CLAUDE.md"

Write-Host ""
Write-Host "=== meytal-claude-code-basic ===" -ForegroundColor Cyan
Write-Host "Installing to: $ProjectPath" -ForegroundColor White
Write-Host ""

# Copy skills
if (-not (Test-Path $SkillsDest)) {
    New-Item -ItemType Directory -Path $SkillsDest -Force | Out-Null
}

$skills = Get-ChildItem -Path $SkillsSource -Directory
foreach ($skill in $skills) {
    $destSkill = Join-Path $SkillsDest $skill.Name
    if (Test-Path $destSkill) {
        Write-Host "  [skip] $($skill.Name) - already exists" -ForegroundColor Yellow
    } else {
        Copy-Item -Path $skill.FullName -Destination $destSkill -Recurse
        Write-Host "  [ok]   $($skill.Name)" -ForegroundColor Green
    }
}

# Copy CLAUDE.md
if (Test-Path $ClaudeMdDest) {
    Write-Host "  [skip] CLAUDE.md - already exists" -ForegroundColor Yellow
} else {
    Copy-Item -Path $ClaudeMdSource -Destination $ClaudeMdDest
    Write-Host "  [ok]   CLAUDE.md" -ForegroundColor Green
}

Write-Host ""
Write-Host "Done! Skills installed:" -ForegroundColor Cyan
Write-Host "  - hebrew-content-writer" -ForegroundColor White
Write-Host "  - hebrew-rtl-best-practices" -ForegroundColor White
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "  1. Open VS Code in your project folder" -ForegroundColor White
Write-Host "  2. Open Claude Code" -ForegroundColor White
Write-Host "  3. Install marketplace plugins (see README.md)" -ForegroundColor White
Write-Host ""
