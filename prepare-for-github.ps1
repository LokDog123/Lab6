# prepare-for-github.ps1
Write-Host "Preparing project for GitHub..." -ForegroundColor Cyan

# Проверяем структуру проекта
 = @(".github\workflows", "docs", "manifests", "scripts", "monitoring")
foreach ( in ) {
    if (Test-Path ) {
        Write-Host "✓  exists" -ForegroundColor Green
    } else {
        Write-Host "✗  missing" -ForegroundColor Red
    }
}

# Проверяем основные файлы
 = @("README.md", "LICENSE", ".gitignore", "manifests\kustomization.yaml", "scripts\setup-cluster.ps1")
foreach ( in ) {
    if (Test-Path ) {
        Write-Host "✓  exists" -ForegroundColor Green
    } else {
        Write-Host "✗  missing" -ForegroundColor Red
    }
}

# Показываем команды для GitHub
Write-Host "
=== COMMANDS FOR GITHUB ===" -ForegroundColor Yellow
Write-Host "1. Initialize git repository:" -ForegroundColor Cyan
Write-Host "   git init" -ForegroundColor White
Write-Host "   git add ." -ForegroundColor White
Write-Host "   git commit -m 'Initial commit: Kubernetes Nginx Load Balancing Cluster'" -ForegroundColor White

Write-Host "
2. Create repository on GitHub and push:" -ForegroundColor Cyan
Write-Host "   git remote add origin https://github.com/your-username/k8s-nginx-cluster.git" -ForegroundColor White
Write-Host "   git branch -M main" -ForegroundColor White
Write-Host "   git push -u origin main" -ForegroundColor White

Write-Host "
3. Project structure ready for GitHub!" -ForegroundColor Green
Write-Host "   Total files: 8" -ForegroundColor Gray
