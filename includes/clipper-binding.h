#ifndef __CLIPPER_BINDING_H
#define __CLIPPER_BINDING_H

#include "../lua-5.3.5/src/lua.hpp"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef BUILDING_CLIPPER_BINDING
#define CLIPPER_BINDING __declspec(dllexport)
#else
#define CLIPPER_BINDING __declspec(dllimport)
#endif

int CLIPPER_BINDING fortytwo();
int wrap_fortytwo(lua_State *L);
int CLIPPER_BINDING luaopen_clipper(lua_State *L);

#ifdef __cplusplus
}
#endif

#endif
