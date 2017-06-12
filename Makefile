SRC_DIR = src
KG_DIR = keygen
OPENCM3_DIR = libopencm3

.PHONY: lib mcBits keygen

all: lib mcBits keygen

mcBits:
	make -C $(SRC_DIR)
keygen:
	make -C $(KG_DIR)
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
	make -C $(KG_DIR) clean