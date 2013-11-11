#!/bin/bash
#this is brittle, but it ought to get the job done.

## all non-specified kernels are assumed to be from CyanogenMod

export defaultremote=cm
export defaultrevision=cm-11.0
export precompiled=

case $1 in
    apache)
        export remote="github"
        export remoterevision="cm-10.1"
        export kernelsource="Motorhead1991/samsung-kernel-msm7x30"
    ;;
    d802|vs980)
        export remoterevision="cm-10.2"
    ;;
    e975|e980)
        export remoterevision="cm-10.2"
        export kernelsource="lge-kernel-gproj"
    ;;
    grouper)
        export remoterevision="cm-10.2"
    ;;
    jflte*)
        export remote="vanir"
        export remoterevision="jb43"
        export kernelsource="kernel_samsung_jf"
    ;;
    hammerhead)
        export precompiled=0
    ;;
    m7*|dlx)
        export remote="vanir"
        export remoterevision="sonic-dev"
        export kernelsource="kernel_htc_m7"
    ;;
    manta)
        export remoterevision="cm-10.2"
    ;;
    maserati)
        export remoterevision="cm-10.2"
    ;;
    ovation)
        export remoterevision="cm-10.2"
    ;;
    p3100|p3110|p5100|p5110)
        export remoterevision="cm-10.2"
    ;;
    p700)
        export remote="github"
        export remoterevision="android-msm-3.4-jb4.3"
        export kernelsource="bart452/lge-kernel-lproj"
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
        export remoterevision="cm-11.0"
        export kernelsource="vigor/vigor_aosp_kernel"
   ;;
esac
