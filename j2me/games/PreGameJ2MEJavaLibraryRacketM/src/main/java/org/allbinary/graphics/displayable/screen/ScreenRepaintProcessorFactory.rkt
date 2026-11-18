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
;; package org.allbinary.graphics.displayable.screen

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/J2MEUtil.rkt" (J2MEUtil.jm_isJ2ME_0)])
(lazy-require ["../../../../../org/allbinary/canvas/Processor.rkt" (Processor.jm_getInstance_0)])
(lazy-require ["./ScreenRepaintProcessor.rkt" (ScreenRepaintProcessor.jnew_1)])
(provide (all-defined-out))

(define ScreenRepaintProcessorFactory%
  (class JObject%
    (super-new)
    (define/public (jm_create_1 _displayable)
    (let ()
      (let/ec jreturn
        (if (not (J2MEUtil.jm_isJ2ME_0))
            (begin
            (jreturn (ScreenRepaintProcessor.jnew_1 _displayable)))
            (begin
            (jreturn (Processor.jm_getInstance_0)))))))))
(define (ScreenRepaintProcessorFactory.jclassValue) ScreenRepaintProcessorFactory%)

(define ScreenRepaintProcessorFactory.jcell_instance 'jnone)
(define (ScreenRepaintProcessorFactory.jstatic_instance)
  (when (eq? ScreenRepaintProcessorFactory.jcell_instance 'jnone) (set! ScreenRepaintProcessorFactory.jcell_instance (ScreenRepaintProcessorFactory.jnew_0)))
  ScreenRepaintProcessorFactory.jcell_instance)
(define (ScreenRepaintProcessorFactory.jsetstatic_instance value) (set! ScreenRepaintProcessorFactory.jcell_instance value))

(define (ScreenRepaintProcessorFactory.jnew_0)
  (define this (new ScreenRepaintProcessorFactory% [jclass "ScreenRepaintProcessorFactory"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ScreenRepaintProcessorFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ScreenRepaintProcessorFactory.jstatic_instance)))))



