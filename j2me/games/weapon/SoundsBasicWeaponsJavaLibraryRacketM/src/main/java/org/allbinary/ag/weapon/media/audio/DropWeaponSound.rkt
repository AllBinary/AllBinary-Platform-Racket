#lang racket/base
;;
;; AllBinary Open License Version 1
;; Copyright (c) 2011 AllBinary
;; 
;; By agreeing to this license you and any business entity you represent are
;; legally bound to the AllBinary Open License Version 1 legal agreement.
;; 
;; You may obtain the AllBinary Open License Version 1 legal agreement from
;; AllBinary or the root directory of AllBinary's AllBinary Platform repository.
;; 
;; Created By: Travis Berthelot
;;  
;; Generated Code Do Not Modify
;; package org.allbinary.ag.weapon.media.audio

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/media/audio/CompositeSound.rkt")
(provide (all-defined-out))

(define DropWeaponSound%
  (class CompositeSound%
    (super-new)))
(define (DropWeaponSound.jclassValue) DropWeaponSound%)

(define DropWeaponSound.jcell_soundInterface 'jnone)
(define (DropWeaponSound.jstatic_soundInterface)
  (when (eq? DropWeaponSound.jcell_soundInterface 'jnone) (set! DropWeaponSound.jcell_soundInterface (DropWeaponSound.jnew_0)))
  DropWeaponSound.jcell_soundInterface)
(define (DropWeaponSound.jsetstatic_soundInterface value) (set! DropWeaponSound.jcell_soundInterface value))

(define (DropWeaponSound.jnew_0)
  (define this (new DropWeaponSound% [jclass "DropWeaponSound"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (DropWeaponSound.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DropWeaponSound.jstatic_soundInterface)))))



