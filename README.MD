# PROJECT YWLIB-MODULE

C++20のモジュール機能を用いて、
- C++標準ライブラリ
- Win32API
- DirectX 12
を利用できるようにします。

現状(2024/07/18)、VSCODEのIntellisenseがモジュールに対応していないようなので、
コンパイル時はモジュールを、コーディング時はヘッダーを参照するように設定します。

つまり、以下のようなファイル構成を採ることになるでしょう。

```cpp:win32.ifc.hpp
/// \file win32.ifc.hpp
/// \brief compatible header for win32.ifc

// declarations
```

```cpp:win32.hpp
/// \file win32.hpp
/// \brief header file to swich between module and header

#ifdef ywlib_enable_module
import win32
#else
#include "win32.ifc.hpp"
#endif
```

```cpp:ywlib
/// \file ywlib
/// \brief main header file

#include "std.hpp"
#include "win32.hpp"
#include "dx12.hpp"

// definitions
```

# LICENSE

```
Copyright 2022 ywx9

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
