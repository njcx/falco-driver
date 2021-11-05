#
# Copyright (C) 2021 The Falco Authors.
#
# This file is dual licensed under either the MIT or GPL 2. See
# MIT.txt or GPL.txt for full copies of the license.
#

falco-y += main.o dynamic_params_table.o fillers_table.o flags_table.o ppm_events.o ppm_fillers.o event_table.o syscall_table.o ppm_cputime.o
obj-m += falco.o
ccflags-y := 

KERNELDIR 		?= /lib/modules/$(shell uname -r)/build

TOP := $(shell pwd)
all:
	$(MAKE) -C $(KERNELDIR) M=$(TOP) modules

clean:
	$(MAKE) -C $(KERNELDIR) M=$(TOP) clean

install: all
	$(MAKE) -C $(KERNELDIR) M=$(TOP) modules_install
