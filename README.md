# BooxEmacs

This is my init.el file for emacs on my Boox Pro

## vterm
`pkg install cmake libvterm`

> Before installing emacs-libvterm, you need to make sure you have installed
>  - GNU Emacs (>= 25.1) with module support. You can check that, by verifying that module-file-suffix is not nil.
>  - cmake (>= 3.11)
>  - libtool-bin (related issues: #66 #85)
>  - OPTIONAL: libvterm (>= 0.2). This library can be found in the official repositories of most distributions (e.g., Arch, Debian, Fedora, Gentoo, openSUSE, Ubuntu). Typical names are libvterm (Arch, Fedora, Gentoo, openSUSE), or libvterm-dev (Debian, Ubuntu). If not available, libvterm will be downloaded during the compilation process. Some distributions (e.g. Ubuntu < 20.04, Debian < 11) have versions of libvterm that are too old. If you find compilation errors related to VTERM_COLOR, you should not use your system libvterm. See FAQ for more details.

## gptel
Make a `.authinfo.gpg` file with:  
`machine generativelanguage.googleapis.com login apikey password <your api key from https://makersuite.google.com/app/apikey>`
