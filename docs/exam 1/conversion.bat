@ECHO OFF
SETLOCAL
SET "sourcedir=D:\Sync\Sync\Teaching\Micromechanics\Lectures\Exam 1"
PUSHD "%sourcedir%"
FOR /f "delims=" %%a IN (
 'dir /b /s /a-d *.tex'
 ) DO (
 IF NOT EXIST "%%~dpna.md" pandoc "%%a" -f latex -t markdown_github -o "%%~dpna.md"
 )
)
popd
GOTO :EOF
