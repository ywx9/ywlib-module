#include "ywlib"
using namespace yw;

inline constexpr void test(auto&& Ref) {
  if constexpr (is_lvref<decltype(Ref)>) std::print("lvalue reference\n");
  else if constexpr (is_rvref<decltype(Ref)>) std::print("rvalue reference\n");
  else std::print("not reference\n");
}

int main() {
  int a = 0;
  test(asconst(a));
  test(asconst(0));
  test(asconst(mv(a)));
  return 0;
}
