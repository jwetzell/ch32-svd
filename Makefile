
DEVICES := $(sort $(wildcard ch32-rs/devices/*.yaml))
SVD_OUT := $(patsubst ch32-rs/devices/%.yaml,svd/%.svd,$(DEVICES))

all: $(SVD_OUT)
	

$(SVD_OUT): 
	svdtools patch $(patsubst svd/%.svd,ch32-rs/devices/%.yaml,$@) svd/$(notdir $@)