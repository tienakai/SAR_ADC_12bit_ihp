# ==============================
# Tools
# ==============================
IVERILOG = iverilog
VVP      = vvp
GTKWAVE  = gtkwave
NGSPICE  = ngspice

# ==============================
# Files (LOCAL to verilog/)
# ==============================
TOP      = state_machine
OUTPUT   = $(TOP).out
VCD_FILE = $(TOP).vcd
MIXED    = $(TOP).so

SRC_FILES = state_machine.v state_machine_tb.v

DEST_DIR = ../simulations

# ==============================
# Default
# ==============================
all: run_wave

# ==============================
# Compile RTL
# ==============================
$(OUTPUT): $(SRC_FILES)
	$(IVERILOG) -g2012 -o $(OUTPUT) $(SRC_FILES)

# ==============================
# Run simulation
# ==============================
run: $(OUTPUT)
	$(VVP) $(OUTPUT)

# ==============================
# View waveform
# ==============================
wave:
	$(GTKWAVE) $(VCD_FILE) conf.gtkw

# ==============================
# Run + wave
# ==============================
run_wave: run wave

# ==============================
# Copy .so placeholder
# ==============================
copy:
	cp -f $(MIXED) $(DEST_DIR) || true

# ==============================
# Mixed-signal (via xschem)
# ==============================
ngspice:
	cd .. && xschem

# ==============================
# Full flow
# ==============================
full: run_wave ngspice copy

# ==============================
# Clean
# ==============================
clean:
	rm -f $(OUTPUT) $(VCD_FILE) $(MIXED)
	rm -rf $(TOP)_obj_dir

