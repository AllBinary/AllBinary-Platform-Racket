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

(define ErrorSound%
  (class CompositeSound%
    (super-new)))
(define (ErrorSound.jclassValue) ErrorSound%)

(define ErrorSound.jcell_soundInterface 'jnone)
(define (ErrorSound.jstatic_soundInterface)
  (when (eq? ErrorSound.jcell_soundInterface 'jnone) (set! ErrorSound.jcell_soundInterface (ErrorSound.jnew_0)))
  ErrorSound.jcell_soundInterface)
(define (ErrorSound.jsetstatic_soundInterface value) (set! ErrorSound.jcell_soundInterface value))

(define (ErrorSound.jnew_0)
  (define this (new ErrorSound% [jclass "ErrorSound"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (ErrorSound.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ErrorSound.jstatic_soundInterface)))))



