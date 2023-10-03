.PHONY: all clean sign_extend

IP 			= sign_extend
XVLOG_FLAGS = -sv -L uvm rtl/sign_extend.sv verif/tb_sign_extend.sv
XELAB_FLAGS = -top tb_$(IP)
XSIM_FLAGS 	= -R tb_$(IP)
OUT_DIR 	= ./out

all: clean
	mkdir -p $(OUT_DIR)
	xvlog $(XVLOG_FLAGS) $(FILE_LIST)
	xelab $(XELAB_FLAGS)
	xsim $(XSIM_FLAGS)
	mv xvlog* xelab* xsim** *.wdb *.vcd $(OUT_DIR)

sign_extend:
	make IP=sign_extend OUT_DIR=$(OUT_DIR)

clean:
	rm -rf xvlog* xelab* xsim* *.wdb *.vcd out