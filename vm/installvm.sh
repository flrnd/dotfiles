sudo virt-install \
            --name debian-kvm-img\
            --memory 1024 \
            --disk ~/.local/lib/libvirt/images/debian-10-generic-amd64.qcow2,device=disk,bus=virtio \
            --disk ~/.local/lib/libvirt/images/boot-generic.img,device=cdrom \
            --os-type linux \
            --os-variant debian10 \
            --virt-type kvm \
            --graphics none \
            --network network=default,model=virtio \
            --import