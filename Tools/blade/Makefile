LUCET_BLADE=$(HOME)/lucet-blade
WASI_SDK=$(HOME)/wasi-sdk
WABT=$(HOME)/wabt
BINARYEN=$(HOME)/binaryen
HACL_STAR=$(HOME)/hacl-star

LUCETC=$(LUCET_BLADE)/target/debug/lucetc
LUCETC_FLAGS=--emit=so --guard-size "4GiB" --min-reserved-size "4GiB" --max-reserved-size "4GiB"
WASI_CLANG=$(WASI_SDK)/wasi-sdk-12.0/bin/clang
WASI_CLANG_FLAGS=-O3 --sysroot=$(WASI_SDK)/wasi-sdk-12.0/share/wasi-sysroot
WASI_LINK_FLAGS=-nostartfiles -Wl,--no-entry -Wl,--export-all
WAT2WASM=$(WABT)/out/clang/Debug/wat2wasm
WASM2WAT=$(WABT)/out/clang/Debug/wasm2wat
WASM_OPT=$(BINARYEN)/bin/wasm-opt
HACL_FLAGS=-I$(HACL_STAR)/dist/kremlin/include -I$(HACL_STAR)/dist/kremlin/kremlib/dist/minimal

.DEFAULT_GOAL=build

.PHONY: FORCE
FORCE:
$(LUCETC): FORCE
	cd $(LUCET_BLADE) && cargo build

wasm_src/%.wasm.unopt: c_src/%.c c_src/%.h
	$(WASI_CLANG) $(WASI_CLANG_FLAGS) $(HACL_FLAGS) $< -o $@ $(WASI_LINK_FLAGS)

wasm_src/%.wasm: wasm_src/%.wasm.unopt
	$(WASM_OPT) -mvp --disable-mutable-globals -O4 $< -o $@

wasm_src/%.wasm: wasm_src/%.wat
	$(WAT2WASM) $< -o $@

wasm_wat/%.wat: wasm_src/%.wasm
	mkdir -p wasm_wat
	$(WASM2WAT) $< -o $@

wasm_obj/%/ref.so: wasm_src/%.wasm $(LUCETC)
	mkdir -p wasm_obj/$*
	$(LUCETC) $(LUCETC_FLAGS) --blade-type=none $< -o $@

wasm_obj/%/baseline_fence_with_v1_1.so: wasm_src/%.wasm $(LUCETC)
	mkdir -p wasm_obj/$*
	$(LUCETC) $(LUCETC_FLAGS) --blade-type=baseline_fence --blade-v1-1 $< -o $@

wasm_obj/%/baseline_fence_no_v1_1.so: wasm_src/%.wasm $(LUCETC)
	mkdir -p wasm_obj/$*
	$(LUCETC) $(LUCETC_FLAGS) --blade-type=baseline_fence $< -o $@

wasm_obj/%/baseline_slh_with_v1_1.so: wasm_src/%.wasm $(LUCETC)
	mkdir -p wasm_obj/$*
	$(LUCETC) $(LUCETC_FLAGS) --blade-type=baseline_slh --blade-v1-1 $< -o $@

wasm_obj/%/baseline_slh_no_v1_1.so: wasm_src/%.wasm $(LUCETC)
	mkdir -p wasm_obj/$*
	$(LUCETC) $(LUCETC_FLAGS) --blade-type=baseline_slh $< -o $@

wasm_obj/%/lfence_with_v1_1.so: wasm_src/%.wasm $(LUCETC)
	mkdir -p wasm_obj/$*
	$(LUCETC) $(LUCETC_FLAGS) --blade-type=lfence --blade-v1-1 $< -o $@

wasm_obj/%/lfence_no_v1_1.so: wasm_src/%.wasm $(LUCETC)
	mkdir -p wasm_obj/$*
	$(LUCETC) $(LUCETC_FLAGS) --blade-type=lfence $< -o $@

wasm_obj/%/lfence_per_block_with_v1_1.so: wasm_src/%.wasm $(LUCETC)
	mkdir -p wasm_obj/$*
	$(LUCETC) $(LUCETC_FLAGS) --blade-type=lfence_per_block --blade-v1-1 $< -o $@

wasm_obj/%/lfence_per_block_no_v1_1.so: wasm_src/%.wasm $(LUCETC)
	mkdir -p wasm_obj/$*
	$(LUCETC) $(LUCETC_FLAGS) --blade-type=lfence_per_block $< -o $@

wasm_obj/%/slh_with_v1_1.so: wasm_src/%.wasm $(LUCETC)
	mkdir -p wasm_obj/$*
	$(LUCETC) $(LUCETC_FLAGS) --blade-type=slh --blade-v1-1 $< -o $@

wasm_obj/%/slh_no_v1_1.so: wasm_src/%.wasm $(LUCETC)
	mkdir -p wasm_obj/$*
	$(LUCETC) $(LUCETC_FLAGS) --blade-type=slh $< -o $@

.PHONY: all_sos
all_sos: tea_sos sha256_sos salsa20_sos poly1305_sos curve25519_51_sos chacha20_sos

.PHONY: tea_sos
tea_sos: \
	wasm_obj/tea/ref.so \
	wasm_obj/tea/baseline_fence_with_v1_1.so \
	wasm_obj/tea/baseline_fence_no_v1_1.so \
	wasm_obj/tea/baseline_slh_with_v1_1.so \
	wasm_obj/tea/baseline_slh_no_v1_1.so \
	wasm_obj/tea/lfence_with_v1_1.so \
	wasm_obj/tea/lfence_no_v1_1.so \
	wasm_obj/tea/lfence_per_block_with_v1_1.so \
	wasm_obj/tea/lfence_per_block_no_v1_1.so \
	wasm_obj/tea/slh_with_v1_1.so \
	wasm_obj/tea/slh_no_v1_1.so \

.PHONY: sha256_sos
sha256_sos: \
	wasm_obj/sha256/ref.so \
	wasm_obj/sha256/baseline_fence_with_v1_1.so \
	wasm_obj/sha256/baseline_fence_no_v1_1.so \
	wasm_obj/sha256/baseline_slh_with_v1_1.so \
	wasm_obj/sha256/baseline_slh_no_v1_1.so \
	wasm_obj/sha256/lfence_with_v1_1.so \
	wasm_obj/sha256/lfence_no_v1_1.so \
	wasm_obj/sha256/lfence_per_block_with_v1_1.so \
	wasm_obj/sha256/lfence_per_block_no_v1_1.so \
	wasm_obj/sha256/slh_with_v1_1.so \
	wasm_obj/sha256/slh_no_v1_1.so \

.PHONY: salsa20_sos
salsa20_sos: \
	wasm_obj/salsa20/ref.so \
	wasm_obj/salsa20/baseline_fence_with_v1_1.so \
	wasm_obj/salsa20/baseline_fence_no_v1_1.so \
	wasm_obj/salsa20/baseline_slh_with_v1_1.so \
	wasm_obj/salsa20/baseline_slh_no_v1_1.so \
	wasm_obj/salsa20/lfence_with_v1_1.so \
	wasm_obj/salsa20/lfence_no_v1_1.so \
	wasm_obj/salsa20/lfence_per_block_with_v1_1.so \
	wasm_obj/salsa20/lfence_per_block_no_v1_1.so \
	wasm_obj/salsa20/slh_with_v1_1.so \
	wasm_obj/salsa20/slh_no_v1_1.so \

.PHONY: poly1305_sos
poly1305_sos: \
	wasm_obj/Hacl_Poly1305_32/ref.so \
	wasm_obj/Hacl_Poly1305_32/baseline_fence_with_v1_1.so \
	wasm_obj/Hacl_Poly1305_32/baseline_fence_no_v1_1.so \
	wasm_obj/Hacl_Poly1305_32/baseline_slh_with_v1_1.so \
	wasm_obj/Hacl_Poly1305_32/baseline_slh_no_v1_1.so \
	wasm_obj/Hacl_Poly1305_32/lfence_with_v1_1.so \
	wasm_obj/Hacl_Poly1305_32/lfence_no_v1_1.so \
	wasm_obj/Hacl_Poly1305_32/lfence_per_block_with_v1_1.so \
	wasm_obj/Hacl_Poly1305_32/lfence_per_block_no_v1_1.so \
	wasm_obj/Hacl_Poly1305_32/slh_with_v1_1.so \
	wasm_obj/Hacl_Poly1305_32/slh_no_v1_1.so \

.PHONY: curve25519_51_sos
curve25519_51_sos: \
	wasm_obj/Hacl_Curve25519_51/ref.so \
	wasm_obj/Hacl_Curve25519_51/baseline_fence_with_v1_1.so \
	wasm_obj/Hacl_Curve25519_51/baseline_fence_no_v1_1.so \
	wasm_obj/Hacl_Curve25519_51/baseline_slh_with_v1_1.so \
	wasm_obj/Hacl_Curve25519_51/baseline_slh_no_v1_1.so \
	wasm_obj/Hacl_Curve25519_51/lfence_with_v1_1.so \
	wasm_obj/Hacl_Curve25519_51/lfence_no_v1_1.so \
	wasm_obj/Hacl_Curve25519_51/lfence_per_block_with_v1_1.so \
	wasm_obj/Hacl_Curve25519_51/lfence_per_block_no_v1_1.so \
	wasm_obj/Hacl_Curve25519_51/slh_with_v1_1.so \
	wasm_obj/Hacl_Curve25519_51/slh_no_v1_1.so \

.PHONY: chacha20_sos
chacha20_sos: \
	wasm_obj/Hacl_Chacha20/ref.so \
	wasm_obj/Hacl_Chacha20/baseline_fence_with_v1_1.so \
	wasm_obj/Hacl_Chacha20/baseline_fence_no_v1_1.so \
	wasm_obj/Hacl_Chacha20/baseline_slh_with_v1_1.so \
	wasm_obj/Hacl_Chacha20/baseline_slh_no_v1_1.so \
	wasm_obj/Hacl_Chacha20/lfence_with_v1_1.so \
	wasm_obj/Hacl_Chacha20/lfence_no_v1_1.so \
	wasm_obj/Hacl_Chacha20/lfence_per_block_with_v1_1.so \
	wasm_obj/Hacl_Chacha20/lfence_per_block_no_v1_1.so \
	wasm_obj/Hacl_Chacha20/slh_with_v1_1.so \
	wasm_obj/Hacl_Chacha20/slh_no_v1_1.so \

target/debug/blade-benchmarks: all_sos src
	cargo build

.PHONY: build
build: target/debug/blade-benchmarks

.PHONY: run
run: target/debug/blade-benchmarks
	cargo run

.PHONY: test
test: target/debug/blade-benchmarks
	cargo test

.PHONY: bench
bench: target/debug/blade-benchmarks
	cargo bench

# Prints a report of the most recent `make bench` to stdout (human readable)
# and to `analysis/table.tex` (LaTeX).
# Also writes SHA256 scaling data to `analysis/sha256_scaling.json` and
# creates associated plots in `analysis/figures`.
.PHONY: report
report:
	cd analysis && cargo run && python3 ./sha256_scaling_plots.py

disasm_tea_%: wasm_obj/tea/%.so
	objdump -SDg $< | less
disasm_sha256_%: wasm_obj/sha256/%.so
	objdump -SDg $< | less
disasm_salsa20_%: wasm_obj/salsa20/%.so
	objdump -SDg $< | less
disasm_chacha20_%: wasm_obj/Hacl_Chacha20/%.so
	objdump -SDg $< | less

.PHONY: obj_clean
obj_clean:
	-rm -rf wasm_obj

.PHONY: clean
clean: obj_clean
	cargo clean
	cd analysis && cargo clean

.PHONY: fullclean
fullclean: clean
	cd $(LUCET_BLADE) && cargo clean