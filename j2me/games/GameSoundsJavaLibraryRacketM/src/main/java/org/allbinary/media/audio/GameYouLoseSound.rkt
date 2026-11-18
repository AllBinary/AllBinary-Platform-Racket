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
(define GameYouLoseSound%
  (class CompositeSound%
    (super-new)))
(define (GameYouLoseSound.jclassValue) GameYouLoseSound%)

(define GameYouLoseSound.jcell_soundInterface 'jnone)
(define (GameYouLoseSound.jstatic_soundInterface)
  (when (eq? GameYouLoseSound.jcell_soundInterface 'jnone) (set! GameYouLoseSound.jcell_soundInterface (GameYouLoseSound.jnew_0)))
  GameYouLoseSound.jcell_soundInterface)
(define (GameYouLoseSound.jsetstatic_soundInterface value) (set! GameYouLoseSound.jcell_soundInterface value))

(define (GameYouLoseSound.jnew_0)
  (define this (new GameYouLoseSound% [jclass "GameYouLoseSound"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (GameYouLoseSound.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameYouLoseSound.jstatic_soundInterface)))))



