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
(define SelectSound%
  (class CompositeSound%
    (super-new)))
(define (SelectSound.jclassValue) SelectSound%)

(define SelectSound.jcell_soundInterface 'jnone)
(define (SelectSound.jstatic_soundInterface)
  (when (eq? SelectSound.jcell_soundInterface 'jnone) (set! SelectSound.jcell_soundInterface (SelectSound.jnew_0)))
  SelectSound.jcell_soundInterface)
(define (SelectSound.jsetstatic_soundInterface value) (set! SelectSound.jcell_soundInterface value))

(define (SelectSound.jnew_0)
  (define this (new SelectSound% [jclass "SelectSound"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (SelectSound.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SelectSound.jstatic_soundInterface)))))



