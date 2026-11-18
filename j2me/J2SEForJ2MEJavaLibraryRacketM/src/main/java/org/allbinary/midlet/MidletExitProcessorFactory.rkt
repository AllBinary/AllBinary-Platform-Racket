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
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/AppletUtil.rkt" (AppletUtil.jm_isAppletLoader_1)])
(lazy-require ["../../../org/allbinary/J2MEUtil.rkt" (J2MEUtil.jm_isJ2ME_0)])
(lazy-require ["../../../org/allbinary/canvas/Processor.rkt" (Processor.jm_getInstance_0)])
(lazy-require ["./MidletExitProcessor.rkt" (MidletExitProcessor.jnew_1)])
(provide (all-defined-out))

(define MidletExitProcessorFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getExitInstance_1 _midlet)
    (let ()
      (let/ec jreturn
        (if (or (AppletUtil.jm_isAppletLoader_1 _midlet) (J2MEUtil.jm_isJ2ME_0))
            (begin
            (jreturn (Processor.jm_getInstance_0)))
            (begin
            (jreturn (MidletExitProcessor.jnew_1 _midlet)))))))))
(define (MidletExitProcessorFactory.jclassValue) MidletExitProcessorFactory%)

(define MidletExitProcessorFactory.jcell_instance 'jnone)
(define (MidletExitProcessorFactory.jstatic_instance)
  (when (eq? MidletExitProcessorFactory.jcell_instance 'jnone) (set! MidletExitProcessorFactory.jcell_instance (MidletExitProcessorFactory.jnew_0)))
  MidletExitProcessorFactory.jcell_instance)
(define (MidletExitProcessorFactory.jsetstatic_instance value) (set! MidletExitProcessorFactory.jcell_instance value))

(define (MidletExitProcessorFactory.jnew_0)
  (define this (new MidletExitProcessorFactory% [jclass "MidletExitProcessorFactory"]))
  this)

(define (MidletExitProcessorFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MidletExitProcessorFactory.jstatic_instance)))))



