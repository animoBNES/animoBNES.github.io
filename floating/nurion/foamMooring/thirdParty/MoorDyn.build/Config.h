/** @file platform.h A set of definitions automatically exported by CMake
 *
 * This file can be used to programatically get the software version, as well
 * as some configuration options
 *
 * If you want to use the C++ API, you probably want to include this file first
 */

#ifndef __MOORDYN_PLATFORM_H__
#define __MOORDYN_PLATFORM_H__

#define MOORDYN_MAJOR_VERSION                                                  \
	$ { MOORDYN_MAJOR_VERSION }
#define MOORDYN_MINOR_VERSION                                                  \
	$ { MOORDYN_MINOR_VERSION }
#define MOORDYN_VERSION                                                        \
	$ { MOORDYN_VERSION }
#define MOORDYN_VERSION_STRING "2.2"

/* #undef MOORDYN_SINGLEPRECISSION */
#define USE_VTK

#endif // __MOORDYN_PLATFORM_H__
