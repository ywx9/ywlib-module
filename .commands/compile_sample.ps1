$VCToolsInstallDir = "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.38.33130"
$WindowsSdkLibDir = "C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0"
$cl = "$VCToolsInstallDir\bin\Hostx64\x64\cl.exe"
$link = "$VCToolsInstallDir\bin\Hostx64\x64\link.exe"
$lib1 = "$WindowsSdkLibDir\um\x64"
$lib2 = "$WindowsSdkLibDir\ucrt\x64"
$cmd1 = "&`"$cl`" sample.cpp /std:c++latest /EHsc /nologo /W4 /reference `"std=std.ifc`" /link std.obj /LIBPATH:`"$VCToolsInstallDir\lib\x64`" /LIBPATH:`"$lib1`" /LIBPATH:`"$lib2`""
Invoke-Expression $cmd1
