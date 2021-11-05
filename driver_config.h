/*

Copyright (C) 2021 The Falco Authors.

This file is dual licensed under either the MIT or GPL 2. See MIT.txt
or GPL2.txt for full copies of the license.

*/
#pragma once

#define PROBE_VERSION "17f5df52a7d9ed6bb12d3b1768460def8439936d"

#define PROBE_NAME "falco"

#define PROBE_DEVICE_NAME "falco"

#ifndef KBUILD_MODNAME
#define KBUILD_MODNAME PROBE_NAME
#endif
