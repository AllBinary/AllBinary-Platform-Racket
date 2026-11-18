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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["./InputProcessor.rkt" (InputProcessor.jnew_0)])
(provide (all-defined-out))

(define InputProcessorFactory%
  (class JObject%
    (super-new)
    (field [f_inputProcessor JR.null])
    (define/public (jm_getInputProcessor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_inputProcessor this)))))))
(define (InputProcessorFactory.jclassValue) InputProcessorFactory%)

(define InputProcessorFactory.jcell_instance 'jnone)
(define (InputProcessorFactory.jstatic_instance)
  (when (eq? InputProcessorFactory.jcell_instance 'jnone) (set! InputProcessorFactory.jcell_instance (InputProcessorFactory.jnew_0)))
  InputProcessorFactory.jcell_instance)
(define (InputProcessorFactory.jsetstatic_instance value) (set! InputProcessorFactory.jcell_instance value))

(define (InputProcessorFactory.jnew_0)
  (define this (new InputProcessorFactory% [jclass "InputProcessorFactory"]))
    (set-field! f_inputProcessor this (InputProcessor.jnew_0))
  this)

(define (InputProcessorFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (InputProcessorFactory.jstatic_instance)))))



