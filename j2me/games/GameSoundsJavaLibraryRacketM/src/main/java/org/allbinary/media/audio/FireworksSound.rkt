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
;; package org.allbinary.media.audio

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./CompositeSound.rkt")
(provide (all-defined-out))

;Use 8hz16bitmono for most J2ME
(define FireworksSound%
  (class CompositeSound%
    (super-new)))
(define (FireworksSound.jclassValue) FireworksSound%)

(define FireworksSound.jcell_soundInterface 'jnone)
(define (FireworksSound.jstatic_soundInterface)
  (when (eq? FireworksSound.jcell_soundInterface 'jnone) (set! FireworksSound.jcell_soundInterface (FireworksSound.jnew_0)))
  FireworksSound.jcell_soundInterface)
(define (FireworksSound.jsetstatic_soundInterface value) (set! FireworksSound.jcell_soundInterface value))

(define (FireworksSound.jnew_0)
  (define this (new FireworksSound% [jclass "FireworksSound"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (FireworksSound.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (FireworksSound.jstatic_soundInterface)))))



