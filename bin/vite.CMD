@SETLOCAL
@IF NOT DEFINED NODE_PATH (
  @SET "NODE_PATH=%~dp0\H:\runoob-vue3-test3\node_modules\.store\vite@1.0.0-rc.13\node_modules"
) ELSE (
  @SET "NODE_PATH=%NODE_PATH%;%~dp0\H:\runoob-vue3-test3\node_modules\.store\vite@1.0.0-rc.13\node_modules"
)
@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\..\.store\vite@1.0.0-rc.13\node_modules\vite\bin\vite.js" %*
) ELSE (
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\..\.store\vite@1.0.0-rc.13\node_modules\vite\bin\vite.js" %*
)
