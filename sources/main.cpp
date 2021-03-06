#include <stdio.h>
#include "../includes/clipper-binding.h"
#include "../clipper_ver6.4.2/cpp/clipper.hpp"

int main(void)
{
  // testing lua api
  lua_State *state = luaL_newstate();
  printf("%p\n", luaopen_binding(state));
  // testing other functions
  printf("%d\n", fortytwo());
  // testing clipper functions
  ClipperLib::IntPoint pt = ClipperLib::IntPoint(1, 2);
  printf("%d\n", pt.X);
  printf("%d\n", pt.Y);
  return 0;
}