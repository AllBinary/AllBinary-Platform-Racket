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
;; package org.allbinary.midlet

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/canvas/Processor.rkt"
  "../../../java/lang/System.rkt")
(provide (all-defined-out))

(define MidletExitProcessor%
  (class Processor%
    (super-new)
    (field [f_midlet JR.null])
    (define/override (jm_process_0)
    (let ()
      (let/ec jreturn
        (System.jm_exit_1 0))))))
(define (MidletExitProcessor.jclassValue) MidletExitProcessor%)

(define (MidletExitProcessor.jnew_1 _midlet)
  (define this (new MidletExitProcessor% [jclass "MidletExitProcessor"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_midlet this _midlet)))
  this)



