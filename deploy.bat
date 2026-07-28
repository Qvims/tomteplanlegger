@echo off
REM Publiser Tomteplanlegger 3D til GitHub Pages.
REM Bruk:  deploy.bat https://github.com/BRUKERNAVN/tomteplanlegger.git
setlocal
if "%~1"=="" (
  echo Bruk: deploy.bat ^<git-remote-url^>
  echo Eks:  deploy.bat https://github.com/BRUKERNAVN/tomteplanlegger.git
  exit /b 1
)
if not exist ".git" (
  git init
  git branch -M main
)
git add -A
git commit -m "Tomteplanlegger 3D"
git remote remove origin 2>nul
git remote add origin %~1
git push -u origin main
echo.
echo Pushet. Sla pa GitHub Pages:
echo   Settings -^> Pages -^> Source: "Deploy from a branch" -^> main / (root) -^> Save
endlocal
