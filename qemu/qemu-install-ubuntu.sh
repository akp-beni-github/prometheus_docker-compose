qemu-img create -f raw ubuntu-latest.raw 35G

qemu-system-aarch64 \
   -monitor stdio \
   -M virt,highmem=off \
   -accel hvf \
   -cpu host \
   -smp 4 \
   -m 3000 \
   -bios ~/Downloads/QEMU_EFI-a096471-edk2-stable202011/QEMU_EFI.fd \
   -device virtio-gpu-pci \
   -display default,show-cursor=on \
   -device qemu-xhci \
   -device usb-kbd \
   -device usb-tablet \
   -device intel-hda \
   -device hda-duplex \
   -drive file=ubuntu-latest.raw,format=raw,if=virtio,cache=writethrough \
   -cdrom ~/Downloads/ubuntu-24.04.1-live-server-arm64.iso

