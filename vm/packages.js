const packages = [
  {
    name: "adduser",
    version: "3.118",
  },
  {
    name: "apparmor",
    version: "2.13.2-10",
  },
  {
    name: "apt",
    version: "1.8.2.2",
  },
  {
    name: "apt-listchanges",
    version: "3.19",
  },
  {
    name: "apt-utils",
    version: "1.8.2.2",
  },
  {
    name: "base-files",
    version: "10.3+deb10u8",
  },
  {
    name: "base-passwd",
    version: "3.5.46",
  },
  {
    name: "bash",
    version: "5.0-4",
  },
  {
    name: "bash-completion",
    version: "1:2.8-6",
  },
  {
    name: "bind9-host",
    version: "1:9.11.5.P4+dfsg-5.1+deb10u2",
  },
  {
    name: "bridge-utils",
    version: "1.6-2",
  },
  {
    name: "bsdmainutils",
    version: "11.1.2+b1",
  },
  {
    name: "bsdutils",
    version: "1:2.33.1-0.1",
  },
  {
    name: "bzip2",
    version: "1.0.6-9.2~deb10u1",
  },
  {
    name: "ca-certificates",
    version: "20200601~deb10u2",
  },
  {
    name: "chrony",
    version: "3.4-4+deb10u1",
  },
  {
    name: "cloud-guest-utils",
    version: "0.29-1",
  },
  {
    name: "cloud-image-utils",
    version: "0.29-1",
  },
  {
    name: "cloud-init",
    version: "20.2-2~deb10u1",
  },
  {
    name: "cloud-initramfs-growroot",
    version: "0.18.debian7",
  },
  {
    name: "cloud-utils",
    version: "0.29-1",
  },
  {
    name: "coreutils",
    version: "8.30-3",
  },
  {
    name: "cpio",
    version: "2.12+dfsg-9",
  },
  {
    name: "cron",
    version: "3.0pl1-134+deb10u1",
  },
  {
    name: "curl",
    version: "7.64.0-4+deb10u1",
  },
  {
    name: "dash",
    version: "0.5.10.2-5",
  },
  {
    name: "dbus",
    version: "1.12.20-0+deb10u1",
  },
  {
    name: "debconf",
    version: "1.5.71",
  },
  {
    name: "debian-archive-keyring",
    version: "2019.1",
  },
  {
    name: "debianutils",
    version: "4.8.6.1",
  },
  {
    name: "diffutils",
    version: "1:3.7-3",
  },
  {
    name: "distro-info-data",
    version: "0.41+deb10u3",
  },
  {
    name: "dmsetup",
    version: "2:1.02.155-3",
  },
  {
    name: "dpkg",
    version: "1.19.7",
  },
  {
    name: "e2fsprogs",
    version: "1.44.5-1+deb10u3",
  },
  {
    name: "ethtool",
    version: "1:4.19-1",
  },
  {
    name: "fdisk",
    version: "2.33.1-0.1",
  },
  {
    name: "file",
    version: "1:5.35-4+deb10u2",
  },
  {
    name: "findutils",
    version: "4.6.0+git+20190209-2",
  },
  {
    name: "gcc-8-base:amd64",
    version: "8.3.0-6",
  },
  {
    name: "gdisk",
    version: "1.0.3-1.1",
  },
  {
    name: "genisoimage",
    version: "9:1.1.11-3+b2",
  },
  {
    name: "geoip-database",
    version: "20181108-1",
  },
  {
    name: "gettext-base",
    version: "0.19.8.1-9",
  },
  {
    name: "gpgv",
    version: "2.2.12-1+deb10u1",
  },
  {
    name: "grep",
    version: "3.3-1",
  },
  {
    name: "groff-base",
    version: "1.22.4-3",
  },
  {
    name: "grub-cloud-amd64",
    version: "0.0.4",
  },
  {
    name: "grub-common",
    version: "2.02+dfsg1-20+deb10u3",
  },
  {
    name: "grub-efi-amd64-bin",
    version: "2.02+dfsg1-20+deb10u3",
  },
  {
    name: "grub-pc-bin",
    version: "2.02+dfsg1-20+deb10u3",
  },
  {
    name: "grub2-common",
    version: "2.02+dfsg1-20+deb10u3",
  },
  {
    name: "gzip",
    version: "1.9-3",
  },
  {
    name: "hostname",
    version: "3.21",
  },
  {
    name: "ifenslave",
    version: "2.9",
  },
  {
    name: "ifupdown",
    version: "0.8.35",
  },
  {
    name: "init",
    version: "1.56+nmu1",
  },
  {
    name: "init-system-helpers",
    version: "1.56+nmu1",
  },
  {
    name: "initramfs-tools",
    version: "0.133+deb10u1",
  },
  {
    name: "initramfs-tools-core",
    version: "0.133+deb10u1",
  },
  {
    name: "iproute2",
    version: "4.20.0-2+deb10u1",
  },
  {
    name: "iptables",
    version: "1.8.2-4",
  },
  {
    name: "iputils-ping",
    version: "3:20180629-2+deb10u1",
  },
  {
    name: "isc-dhcp-client",
    version: "4.4.1-2",
  },
  {
    name: "iso-codes",
    version: "4.2-1",
  },
  {
    name: "klibc-utils",
    version: "2.0.6-1",
  },
  {
    name: "kmod",
    version: "26-1",
  },
  {
    name: "krb5-locales",
    version: "1.17-3+deb10u1",
  },
  {
    name: "less",
    version: "487-0.1+b1",
  },
  {
    name: "libacl1:amd64",
    version: "2.2.53-4",
  },
  {
    name: "libaio1:amd64",
    version: "0.3.112-3",
  },
  {
    name: "libapparmor1:amd64",
    version: "2.13.2-10",
  },
  {
    name: "libapt-inst2.0:amd64",
    version: "1.8.2.2",
  },
  {
    name: "libapt-pkg5.0:amd64",
    version: "1.8.2.2",
  },
  {
    name: "libargon2-1:amd64",
    version: "0~20171227-0.2",
  },
  {
    name: "libattr1:amd64",
    version: "1:2.4.48-4",
  },
  {
    name: "libaudit-common",
    version: "1:2.8.4-3",
  },
  {
    name: "libaudit1:amd64",
    version: "1:2.8.4-3",
  },
  {
    name: "libbind9-161:amd64",
    version: "1:9.11.5.P4+dfsg-5.1+deb10u2",
  },
  {
    name: "libblkid1:amd64",
    version: "2.33.1-0.1",
  },
  {
    name: "libbsd0:amd64",
    version: "0.9.1-2",
  },
  {
    name: "libbz2-1.0:amd64",
    version: "1.0.6-9.2~deb10u1",
  },
  {
    name: "libc-bin",
    version: "2.28-10",
  },
  {
    name: "libc-l10n",
    version: "2.28-10",
  },
  {
    name: "libc6:amd64",
    version: "2.28-10",
  },
  {
    name: "libcap-ng0:amd64",
    version: "0.7.9-2",
  },
  {
    name: "libcap2:amd64",
    version: "1:2.25-2",
  },
  {
    name: "libcap2-bin",
    version: "1:2.25-2",
  },
  {
    name: "libcom-err2:amd64",
    version: "1.44.5-1+deb10u3",
  },
  {
    name: "libcryptsetup12:amd64",
    version: "2:2.1.0-5+deb10u2",
  },
  {
    name: "libcurl3-gnutls:amd64",
    version: "7.64.0-4+deb10u1",
  },
  {
    name: "libcurl4:amd64",
    version: "7.64.0-4+deb10u1",
  },
  {
    name: "libdb5.3:amd64",
    version: "5.3.28+dfsg1-0.5",
  },
  {
    name: "libdbus-1-3:amd64",
    version: "1.12.20-0+deb10u1",
  },
  {
    name: "libdebconfclient0:amd64",
    version: "0.249",
  },
  {
    name: "libdevmapper1.02.1:amd64",
    version: "2:1.02.155-3",
  },
  {
    name: "libdns-export1104",
    version: "1:9.11.5.P4+dfsg-5.1+deb10u2",
  },
  {
    name: "libdns1104:amd64",
    version: "1:9.11.5.P4+dfsg-5.1+deb10u2",
  },
  {
    name: "libedit2:amd64",
    version: "3.1-20181209-1",
  },
  {
    name: "libefiboot1:amd64",
    version: "37-2+deb10u1",
  },
  {
    name: "libefivar1:amd64",
    version: "37-2+deb10u1",
  },
  {
    name: "libelf1:amd64",
    version: "0.176-1.1",
  },
  {
    name: "libestr0:amd64",
    version: "0.1.10-2.1",
  },
  {
    name: "libexpat1:amd64",
    version: "2.2.6-2+deb10u1",
  },
  {
    name: "libext2fs2:amd64",
    version: "1.44.5-1+deb10u3",
  },
  {
    name: "libfastjson4:amd64",
    version: "0.99.8-2",
  },
  {
    name: "libfdisk1:amd64",
    version: "2.33.1-0.1",
  },
  {
    name: "libffi6:amd64",
    version: "3.2.1-9",
  },
  {
    name: "libfreetype6:amd64",
    version: "2.9.1-3+deb10u2",
  },
  {
    name: "libfstrm0:amd64",
    version: "0.4.0-1",
  },
  {
    name: "libfuse2:amd64",
    version: "2.9.9-1+deb10u1",
  },
  {
    name: "libgcc1:amd64",
    version: "1:8.3.0-6",
  },
  {
    name: "libgcrypt20:amd64",
    version: "1.8.4-5",
  },
  {
    name: "libgdbm6:amd64",
    version: "1.18.1-4",
  },
  {
    name: "libgeoip1:amd64",
    version: "1.6.12-1",
  },
  {
    name: "libglib2.0-0:amd64",
    version: "2.58.3-2+deb10u2",
  },
  {
    name: "libgmp10:amd64",
    version: "2:6.1.2+dfsg-4",
  },
  {
    name: "libgnutls30:amd64",
    version: "3.6.7-4+deb10u6",
  },
  {
    name: "libgpg-error0:amd64",
    version: "1.35-1",
  },
  {
    name: "libgpm2:amd64",
    version: "1.20.7-5",
  },
  {
    name: "libgssapi-krb5-2:amd64",
    version: "1.17-3+deb10u1",
  },
  {
    name: "libhogweed4:amd64",
    version: "3.4.1-1",
  },
  {
    name: "libicu63:amd64",
    version: "63.1-6+deb10u1",
  },
  {
    name: "libidn11:amd64",
    version: "1.33-2.2",
  },
  {
    name: "libidn2-0:amd64",
    version: "2.0.5-1+deb10u1",
  },
  {
    name: "libip4tc0:amd64",
    version: "1.8.2-4",
  },
  {
    name: "libip6tc0:amd64",
    version: "1.8.2-4",
  },
  {
    name: "libiptc0:amd64",
    version: "1.8.2-4",
  },
  {
    name: "libisc-export1100:amd64",
    version: "1:9.11.5.P4+dfsg-5.1+deb10u2",
  },
  {
    name: "libisc1100:amd64",
    version: "1:9.11.5.P4+dfsg-5.1+deb10u2",
  },
  {
    name: "libisccc161:amd64",
    version: "1:9.11.5.P4+dfsg-5.1+deb10u2",
  },
  {
    name: "libisccfg163:amd64",
    version: "1:9.11.5.P4+dfsg-5.1+deb10u2",
  },
  {
    name: "libjson-c3:amd64",
    version: "0.12.1+ds-2+deb10u1",
  },
  {
    name: "libk5crypto3:amd64",
    version: "1.17-3+deb10u1",
  },
  {
    name: "libkeyutils1:amd64",
    version: "1.6-6",
  },
  {
    name: "libklibc:amd64",
    version: "2.0.6-1",
  },
  {
    name: "libkmod2:amd64",
    version: "26-1",
  },
  {
    name: "libkrb5-3:amd64",
    version: "1.17-3+deb10u1",
  },
  {
    name: "libkrb5support0:amd64",
    version: "1.17-3+deb10u1",
  },
  {
    name: "libldap-2.4-2:amd64",
    version: "2.4.47+dfsg-3+deb10u5",
  },
  {
    name: "libldap-common",
    version: "2.4.47+dfsg-3+deb10u5",
  },
  {
    name: "liblmdb0:amd64",
    version: "0.9.22-1",
  },
  {
    name: "liblognorm5:amd64",
    version: "2.0.5-1",
  },
  {
    name: "liblwres161:amd64",
    version: "1:9.11.5.P4+dfsg-5.1+deb10u2",
  },
  {
    name: "liblz4-1:amd64",
    version: "1.8.3-1",
  },
  {
    name: "liblzma5:amd64",
    version: "5.2.4-1",
  },
  {
    name: "libmagic-mgc",
    version: "1:5.35-4+deb10u2",
  },
  {
    name: "libmagic1:amd64",
    version: "1:5.35-4+deb10u2",
  },
  {
    name: "libmnl0:amd64",
    version: "1.0.4-2",
  },
  {
    name: "libmount1:amd64",
    version: "2.33.1-0.1",
  },
  {
    name: "libmpdec2:amd64",
    version: "2.4.2-2",
  },
  {
    name: "libncurses6:amd64",
    version: "6.1+20181013-2+deb10u2",
  },
  {
    name: "libncursesw6:amd64",
    version: "6.1+20181013-2+deb10u2",
  },
  {
    name: "libnetfilter-conntrack3:amd64",
    version: "1.0.7-1",
  },
  {
    name: "libnettle6:amd64",
    version: "3.4.1-1",
  },
  {
    name: "libnewt0.52:amd64",
    version: "0.52.20-8",
  },
  {
    name: "libnfnetlink0:amd64",
    version: "1.0.1-3+b1",
  },
  {
    name: "libnftnl11:amd64",
    version: "1.1.2-2",
  },
  {
    name: "libnghttp2-14:amd64",
    version: "1.36.0-2+deb10u1",
  },
  {
    name: "libp11-kit0:amd64",
    version: "0.23.15-2+deb10u1",
  },
  {
    name: "libpam-modules:amd64",
    version: "1.3.1-5",
  },
  {
    name: "libpam-modules-bin",
    version: "1.3.1-5",
  },
  {
    name: "libpam-runtime",
    version: "1.3.1-5",
  },
  {
    name: "libpam-systemd:amd64",
    version: "241-7~deb10u6",
  },
  {
    name: "libpam0g:amd64",
    version: "1.3.1-5",
  },
  {
    name: "libpcap0.8:amd64",
    version: "1.8.1-6",
  },
  {
    name: "libpci3:amd64",
    version: "1:3.5.2-1",
  },
  {
    name: "libpcre2-8-0:amd64",
    version: "10.32-5",
  },
  {
    name: "libpcre3:amd64",
    version: "2:8.39-12",
  },
  {
    name: "libpipeline1:amd64",
    version: "1.5.1-2",
  },
  {
    name: "libpng16-16:amd64",
    version: "1.6.36-6",
  },
  {
    name: "libpopt0:amd64",
    version: "1.16-12",
  },
  {
    name: "libprocps7:amd64",
    version: "2:3.3.15-2",
  },
  {
    name: "libprotobuf-c1:amd64",
    version: "1.3.1-1+b1",
  },
  {
    name: "libpsl5:amd64",
    version: "0.20.2-2",
  },
  {
    name: "libpython3-stdlib:amd64",
    version: "3.7.3-1",
  },
  {
    name: "libpython3.7-minimal:amd64",
    version: "3.7.3-2+deb10u2",
  },
  {
    name: "libpython3.7-stdlib:amd64",
    version: "3.7.3-2+deb10u2",
  },
  {
    name: "libreadline7:amd64",
    version: "7.0-5",
  },
  {
    name: "librtmp1:amd64",
    version: "2.4+20151223.gitfa8646d.1-2",
  },
  {
    name: "libsasl2-2:amd64",
    version: "2.1.27+dfsg-1+deb10u1",
  },
  {
    name: "libsasl2-modules:amd64",
    version: "2.1.27+dfsg-1+deb10u1",
  },
  {
    name: "libsasl2-modules-db:amd64",
    version: "2.1.27+dfsg-1+deb10u1",
  },
  {
    name: "libseccomp2:amd64",
    version: "2.3.3-4",
  },
  {
    name: "libselinux1:amd64",
    version: "2.8-1+b1",
  },
  {
    name: "libsemanage-common",
    version: "2.8-2",
  },
  {
    name: "libsemanage1:amd64",
    version: "2.8-2",
  },
  {
    name: "libsepol1:amd64",
    version: "2.8-1",
  },
  {
    name: "libslang2:amd64",
    version: "2.3.2-2",
  },
  {
    name: "libsmartcols1:amd64",
    version: "2.33.1-0.1",
  },
  {
    name: "libsqlite3-0:amd64",
    version: "3.27.2-3+deb10u1",
  },
  {
    name: "libss2:amd64",
    version: "1.44.5-1+deb10u3",
  },
  {
    name: "libssh2-1:amd64",
    version: "1.8.0-2.1",
  },
  {
    name: "libssl1.1:amd64",
    version: "1.1.1d-0+deb10u4",
  },
  {
    name: "libstdc++6:amd64",
    version: "8.3.0-6",
  },
  {
    name: "libsystemd0:amd64",
    version: "241-7~deb10u6",
  },
  {
    name: "libtasn1-6:amd64",
    version: "4.13-3",
  },
  {
    name: "libtinfo6:amd64",
    version: "6.1+20181013-2+deb10u2",
  },
  {
    name: "libuchardet0:amd64",
    version: "0.0.6-3",
  },
  {
    name: "libudev1:amd64",
    version: "241-7~deb10u6",
  },
  {
    name: "libunistring2:amd64",
    version: "0.9.10-1",
  },
  {
    name: "libutempter0:amd64",
    version: "1.1.6-3",
  },
  {
    name: "libuuid1:amd64",
    version: "2.33.1-0.1",
  },
  {
    name: "libwrap0:amd64",
    version: "7.6.q-28",
  },
  {
    name: "libxml2:amd64",
    version: "2.9.4+dfsg1-7+deb10u1",
  },
  {
    name: "libxtables12:amd64",
    version: "1.8.2-4",
  },
  {
    name: "libyaml-0-2:amd64",
    version: "0.2.1-1",
  },
  {
    name: "libzstd1:amd64",
    version: "1.3.8+dfsg-3",
  },
  {
    name: "linux-base",
    version: "4.6",
  },
  {
    name: "linux-image-4.19.0-14-amd64",
    version: "4.19.171-2",
  },
  {
    name: "linux-image-amd64",
    version: "4.19+105+deb10u9",
  },
  {
    name: "locales",
    version: "2.28-10",
  },
  {
    name: "login",
    version: "1:4.5-1.1",
  },
  {
    name: "logrotate",
    version: "3.14.0-4",
  },
  {
    name: "lsb-base",
    version: "10.2019051400",
  },
  {
    name: "lsb-release",
    version: "10.2019051400",
  },
  {
    name: "man-db",
    version: "2.8.5-2",
  },
  {
    name: "manpages",
    version: "4.16-2",
  },
  {
    name: "mawk",
    version: "1.3.3-17+b3",
  },
  {
    name: "mime-support",
    version: "3.62",
  },
  {
    name: "mount",
    version: "2.33.1-0.1",
  },
  {
    name: "nano",
    version: "3.2-3",
  },
  {
    name: "ncurses-base",
    version: "6.1+20181013-2+deb10u2",
  },
  {
    name: "ncurses-bin",
    version: "6.1+20181013-2+deb10u2",
  },
  {
    name: "net-tools",
    version: "1.60+git20180626.aebd88e-1",
  },
  {
    name: "netbase",
    version: "5.6",
  },
  {
    name: "openssh-client",
    version: "1:7.9p1-10+deb10u2",
  },
  {
    name: "openssh-server",
    version: "1:7.9p1-10+deb10u2",
  },
  {
    name: "openssh-sftp-server",
    version: "1:7.9p1-10+deb10u2",
  },
  {
    name: "openssl",
    version: "1.1.1d-0+deb10u4",
  },
  {
    name: "passwd",
    version: "1:4.5-1.1",
  },
  {
    name: "pciutils",
    version: "1:3.5.2-1",
  },
  {
    name: "perl-base",
    version: "5.28.1-6+deb10u1",
  },
  {
    name: "procps",
    version: "2:3.3.15-2",
  },
  {
    name: "psmisc",
    version: "23.2-1",
  },
  {
    name: "publicsuffix",
    version: "20190415.1030-1",
  },
  {
    name: "python-apt-common",
    version: "1.8.4.3",
  },
  {
    name: "python3",
    version: "3.7.3-1",
  },
  {
    name: "python3-apt",
    version: "1.8.4.3",
  },
  {
    name: "python3-asn1crypto",
    version: "0.24.0-1",
  },
  {
    name: "python3-blinker",
    version: "1.4+dfsg1-0.2",
  },
  {
    name: "python3-certifi",
    version: "2018.8.24-1",
  },
  {
    name: "python3-cffi-backend",
    version: "1.12.2-1",
  },
  {
    name: "python3-chardet",
    version: "3.0.4-3",
  },
  {
    name: "python3-configobj",
    version: "5.0.6-3",
  },
  {
    name: "python3-cryptography",
    version: "2.6.1-3+deb10u2",
  },
  {
    name: "python3-dbus",
    version: "1.2.8-3",
  },
  {
    name: "python3-debconf",
    version: "1.5.71",
  },
  {
    name: "python3-debian",
    version: "0.1.35",
  },
  {
    name: "python3-debianbts",
    version: "2.8.2",
  },
  {
    name: "python3-distro-info",
    version: "0.21",
  },
  {
    name: "python3-httplib2",
    version: "0.11.3-2",
  },
  {
    name: "python3-idna",
    version: "2.6-1",
  },
  {
    name: "python3-jinja2",
    version: "2.10-2",
  },
  {
    name: "python3-json-pointer",
    version: "1.10-1",
  },
  {
    name: "python3-jsonpatch",
    version: "1.21-1",
  },
  {
    name: "python3-jsonschema",
    version: "2.6.0-4",
  },
  {
    name: "python3-jwt",
    version: "1.7.0-2",
  },
  {
    name: "python3-markupsafe",
    version: "1.1.0-1",
  },
  {
    name: "python3-minimal",
    version: "3.7.3-1",
  },
  {
    name: "python3-oauthlib",
    version: "2.1.0-1",
  },
  {
    name: "python3-pkg-resources",
    version: "40.8.0-1",
  },
  {
    name: "python3-pycurl",
    version: "7.43.0.2-0.1",
  },
  {
    name: "python3-pysimplesoap",
    version: "1.16.2-1",
  },
  {
    name: "python3-reportbug",
    version: "7.5.3~deb10u1",
  },
  {
    name: "python3-requests",
    version: "2.21.0-1",
  },
  {
    name: "python3-six",
    version: "1.12.0-1",
  },
  {
    name: "python3-urllib3",
    version: "1.24.1-1",
  },
  {
    name: "python3-yaml",
    version: "3.13-2",
  },
  {
    name: "python3.7",
    version: "3.7.3-2+deb10u2",
  },
  {
    name: "python3.7-minimal",
    version: "3.7.3-2+deb10u2",
  },
  {
    name: "qemu-utils",
    version: "1:3.1+dfsg-8+deb10u8",
  },
  {
    name: "readline-common",
    version: "7.0-5",
  },
  {
    name: "reportbug",
    version: "7.5.3~deb10u1",
  },
  {
    name: "resolvconf",
    version: "1.79",
  },
  {
    name: "rsyslog",
    version: "8.1901.0-1",
  },
  {
    name: "screen",
    version: "4.6.2-3",
  },
  {
    name: "sed",
    version: "4.7-1",
  },
  {
    name: "sensible-utils",
    version: "0.0.12",
  },
  {
    name: "socat",
    version: "1.7.3.2-2",
  },
  {
    name: "sudo",
    version: "1.8.27-1+deb10u3",
  },
  {
    name: "systemd",
    version: "241-7~deb10u6",
  },
  {
    name: "systemd-sysv",
    version: "241-7~deb10u6",
  },
  {
    name: "sysvinit-utils",
    version: "2.93-8",
  },
  {
    name: "tar",
    version: "1.30+dfsg-6",
  },
  {
    name: "tcpdump",
    version: "4.9.3-1~deb10u2",
  },
  {
    name: "traceroute",
    version: "1:2.1.0-2",
  },
  {
    name: "tzdata",
    version: "2021a-0+deb10u1",
  },
  {
    name: "ucf",
    version: "3.0038+nmu1",
  },
  {
    name: "udev",
    version: "241-7~deb10u6",
  },
  {
    name: "unattended-upgrades",
    version: "1.11.2",
  },
  {
    name: "util-linux",
    version: "2.33.1-0.1",
  },
  {
    name: "uuid-runtime",
    version: "2.33.1-0.1",
  },
  {
    name: "vim",
    version: "2:8.1.0875-5",
  },
  {
    name: "vim-common",
    version: "2:8.1.0875-5",
  },
  {
    name: "vim-runtime",
    version: "2:8.1.0875-5",
  },
  {
    name: "vim-tiny",
    version: "2:8.1.0875-5",
  },
  {
    name: "vlan",
    version: "2.0.5",
  },
  {
    name: "wget",
    version: "1.20.1-1.1",
  },
  {
    name: "whiptail",
    version: "0.52.20-8",
  },
  {
    name: "xxd",
    version: "2:8.1.0875-5",
  },
  {
    name: "xz-utils",
    version: "5.2.4-1",
  },
  {
    name: "zlib1g:amd64",
    version: "1:1.2.11.dfsg-1",
  },
];

for (const package of packages) {
  console.log(package.name);
}
