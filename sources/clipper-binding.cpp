//#include "clipper_ver6.4.2/cpp/clipper.hpp"
#include "../includes/clipper-binding.h"

extern "C" int fortytwo() {
  return 42;
}

int wrap_fortytwo(lua_State *L) {
  lua_pushnumber(L, fortytwo());
  return 1;
}

extern "C" int luaopen_clipper(lua_State *L) {
  lua_pushcfunction(L, wrap_fortytwo);
  return 1;
}
