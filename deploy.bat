echo "Deploying updates to GitHub..."

REM Build the project.
hugo -t basics

REM Go To Public folder
cd public

REM Add changes to git
git add .

REM Commit changes
set message="Rebuilding site %date% %time%"
git commit -m %message%

REM Push source and build repos.
git push origin master
