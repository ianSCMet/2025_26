@echo off
set /p name="Enter Folder Name: "

mkdir "%name%"
cd "%name%"

mkdir "Exports"
mkdir "Images"
mkdir "Saves"
mkdir "Textures"

cd "Exports"
mkdir "To Unreal"
mkdir "Other"
cd ..

cd "Textures"
mkdir "Final"
mkdir "Bakes"
cd ..

cd "Saves"
mkdir "SubstancePainter"
mkdir "Photoshop"
cd ..

cd "Images"
mkdir "References"
cd ..

echo "Folders have been created in the '%name%' folder."
pause
