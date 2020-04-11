#ifndef __CLIPPER_BINDING_H
#define __CLIPPER_BINDING_H

#ifdef __cplusplus
extern "C" {
#endif

#ifdef BUILDING_CLIPPER_BINDING
#define CLIPPER_BINDING __declspec(dllexport)
#else
#define CLIPPER_BINDING __declspec(dllimport)
#endif

int CLIPPER_BINDING fortytwo();

#ifdef __cplusplus
}
#endif

#endif
