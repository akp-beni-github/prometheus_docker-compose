qemu-system-aarch64 \
   -monitor stdio \
   -M virt,highmem=off \
   -accel hvf \
   -cpu host \
   -smp 4 \
   -m 3000 \
   -bios ~/Downloads/5f79f86a0f163e4a1f9df919da5eea20-f546faea68f4149c06cca88fa67ace07a3758268/QEMU_EFI.fd \
   -device virtio-gpu-pci \
   -display default,show-cursor=on \
   -device qemu-xhci \
   -device usb-kbd \
   -device usb-tablet \
   -device intel-hda \
   -device hda-duplex \
   -drive file=ubuntu-latest.raw,format=raw,if=virtio,cache=writethrough \
   -cdrom ~/Downloads/ubuntu-22.04.3-live-server-arm64.iso

