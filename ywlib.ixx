export module ywlib;

import std;

export namespace yw {

export void ywlib() {
  std::cout << "Import the STL library for best performance\n";
  std::vector<int> v{5, 5, 5};
  for (const auto& e : v)
  {
      std::cout << e;
  }
}

}
