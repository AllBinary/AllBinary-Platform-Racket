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

(define ExplosionBasicSound%
  (class CompositeSound%
    (super-new)))
(define (ExplosionBasicSound.jclassValue) ExplosionBasicSound%)

(define ExplosionBasicSound.jcell_soundInterface 'jnone)
(define (ExplosionBasicSound.jstatic_soundInterface)
  (when (eq? ExplosionBasicSound.jcell_soundInterface 'jnone) (set! ExplosionBasicSound.jcell_soundInterface (ExplosionBasicSound.jnew_0)))
  ExplosionBasicSound.jcell_soundInterface)
(define (ExplosionBasicSound.jsetstatic_soundInterface value) (set! ExplosionBasicSound.jcell_soundInterface value))

(define (ExplosionBasicSound.jnew_0)
  (define this (new ExplosionBasicSound% [jclass "ExplosionBasicSound"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (ExplosionBasicSound.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ExplosionBasicSound.jstatic_soundInterface)))))



