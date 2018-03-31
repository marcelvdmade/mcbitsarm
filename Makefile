SRC_DIR = src
OPENCM3_DIR = libopencm3

.PHONY: lib mcBits

all: lib mcBits

mcBits:
	make -C $(SRC_DIR) mcBits.bin
lib:
	@if [ ! "`ls -A $(OPENCM3_DIR)`" ] ; then \
		printf "######## ERROR ########\n"; \
		printf "\tlibopencm3 is not initialized.\n"; \
		printf "\tPlease run (in the root directory):\n"; \
		printf "\t$$ git submodule init\n"; \
		printf "\t$$ git submodule update\n"; \
		printf "\tbefore running make.\n"; \
		printf "######## ERROR ########\n"; \
		exit 1; \
		fi
	make -C $(OPENCM3_DIR)

clean:
	make -C $(SRC_DIR) clean
	#-rm -f hostside/output.txt
