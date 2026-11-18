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
(define GameYouWinSound%
  (class CompositeSound%
    (super-new)))
(define (GameYouWinSound.jclassValue) GameYouWinSound%)

(define GameYouWinSound.jcell_soundInterface 'jnone)
(define (GameYouWinSound.jstatic_soundInterface)
  (when (eq? GameYouWinSound.jcell_soundInterface 'jnone) (set! GameYouWinSound.jcell_soundInterface (GameYouWinSound.jnew_0)))
  GameYouWinSound.jcell_soundInterface)
(define (GameYouWinSound.jsetstatic_soundInterface value) (set! GameYouWinSound.jcell_soundInterface value))

(define (GameYouWinSound.jnew_0)
  (define this (new GameYouWinSound% [jclass "GameYouWinSound"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (GameYouWinSound.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameYouWinSound.jstatic_soundInterface)))))



