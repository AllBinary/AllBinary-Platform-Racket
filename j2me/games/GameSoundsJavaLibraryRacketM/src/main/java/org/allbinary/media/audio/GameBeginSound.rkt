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
(define GameBeginSound%
  (class CompositeSound%
    (super-new)))
(define (GameBeginSound.jclassValue) GameBeginSound%)

(define GameBeginSound.jcell_soundInterface 'jnone)
(define (GameBeginSound.jstatic_soundInterface)
  (when (eq? GameBeginSound.jcell_soundInterface 'jnone) (set! GameBeginSound.jcell_soundInterface (GameBeginSound.jnew_0)))
  GameBeginSound.jcell_soundInterface)
(define (GameBeginSound.jsetstatic_soundInterface value) (set! GameBeginSound.jcell_soundInterface value))

(define (GameBeginSound.jnew_0)
  (define this (new GameBeginSound% [jclass "GameBeginSound"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (GameBeginSound.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameBeginSound.jstatic_soundInterface)))))



