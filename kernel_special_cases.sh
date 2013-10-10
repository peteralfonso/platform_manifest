#!/bin/bash
#this is brittle, but it ought to get the job done.

## all non-specified kernels are assumed to be from CyanogenMod

case $1 in
    apache)
        export remote="github"
        export remoterevision="cm-10.1"
        export kernelsource="Motorhead1991/samsung-kernel-msm7x30"
    ;;
    e975|e980)
        export kernelsource="lge-kernel-gproj"
    ;;
    m7*)
        export remote="vanir"
        export remoterevision="sonic-dev"
    ;;
    p880)
        export remote="github"
        export remoterevision="cm-10.2"
        export kernelsource="mzhou/lge-kernel-p880-cyanogenmod"
    ;;
    toro|toroplus|maguro)
        export remote="github"
        export remoterevision="jim_mr2"
        export kernelsource="jimsth/vanir_tuna"
    ;;
    vigor*)
        export remote="github"
        export remoterevision="cm-10.2"
        export kernelsource="Flyhalf205/vigor_aosp_kernel"
    ;;
esac
