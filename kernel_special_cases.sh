#!/bin/bash
#this is brittle, but it ought to get the job done.

## all non-specified kernels are assumed to be from CyanogenMod
export remote="cm"
export remoterevision="cm-11.0"

case $1 in 
    anzu|coconut|haida|hallon|iyokan|mango|satsuma|smultron|urushi)
        export kernelsource="LegacyXperia/msm7x30-3.4.x-nAa"
        export remote="lx"
        export remoterevision="cm-11.0"
    ;;
    apache)
        export remote="github"
        export kernelsource="Motorhead1991/samsung-kernel-msm7x30"
    ;;
    codinalte)
        export remote="github"
        export remoterevision="kk44"
        export kernelsource="Team-Exhibit/android_kernel_samsung_codinalte"
    ;;
    d710)
        export remote="github"
        export remoterevision="cm-11.0"
        export kernelsource="mtb3000gt/CM_android_kernel_samsung_smdk4412"
    ;;
    d80*)
        export remote="github"
        export remoterevision="kk44-stable"
        export kernelsource="bart452/kernel_lge_msm8974"
    ;;
    ls980|vs980)
        export remote="github"
        export remoterevision="7ffd2e99e4bcf2c32cc856c9dfb6877e7bcb9c58"
        export kernelsource="savoca/furnace_kernel_lge_msm8974"
    ;;
    e980)
        export kernelsource="lge-kernel-gproj"
    ;;
    galaxysmtd)
        export kernelsource="kernel_samsung_aries"
        export remote="vanir"
        export remoterevision="kk44"
    ;;
    golden)
        export remote="github"
        export remoterevision="kk44"
        export kernelsource="Team-Exhibit/android_kernel_samsung_golden"
    ;;
    gee*)
        export remote="github"
        export remoterevision="vanir"
        export kernelsource="xboxfanj/kernel_msm"
    ;;
    mako)
        export remote="github"
        export remoterevision="kitkat-cm"
        export kernelsource="mathkid95/linux_lg_kitkat"
    ;;
    hammerhead)
        export remote="github"
        export remoterevision="jim_kk_mr1"
        export kernelsource="jimsth/vanir_hammerhead"
    ;;
    jflte*)
        export remote="vanir"
        export remoterevision="kk44"
        export kernelsource="kernel_samsung_jf"
    ;;
    m7*|dlx)
        export remote="vanir"
        export remoterevision="kk44"
        export kernelsource="kernel_htc_m7"
    ;;
    nicki)
         export kernelsource="freexperia/android_Kernel_sony_msm8x27"
         export remote="github"
         export remoterevision="cm-11.0"
     ;;
    p880)
        export remote="cm"
        export remoterevision="cm-11.0"
        export kernelsource="lge-kernel-p880"
    ;;
    skomer)
        export remote="github"
        export remoterevision="kk44"
        export kernelsource="Team-Exhibit/android_kernel_samsung_skomer"
    ;;
    toro|toroplus|maguro)
        export remote="github"
        export remoterevision="jim_mr2"
        export kernelsource="jimsth/vanir_tuna"
    ;;
esac
