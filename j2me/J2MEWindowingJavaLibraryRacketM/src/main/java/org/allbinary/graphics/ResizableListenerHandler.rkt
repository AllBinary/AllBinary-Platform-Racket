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
;; package org.allbinary.graphics

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ResizableListenerHandler%
  (class JObject%
    (super-new)
    (define/public (jm_setListener_1 _resizableListenerInterface)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_fire_1 _isFullScreen)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_fireEvent_1 _value)
    (let ()
      (let/ec jreturn (void))))))
(define (ResizableListenerHandler.jclassValue) ResizableListenerHandler%)

(define ResizableListenerHandler.jcell_instance 'jnone)
(define (ResizableListenerHandler.jstatic_instance)
  (when (eq? ResizableListenerHandler.jcell_instance 'jnone) (set! ResizableListenerHandler.jcell_instance (ResizableListenerHandler.jnew_0)))
  ResizableListenerHandler.jcell_instance)
(define (ResizableListenerHandler.jsetstatic_instance value) (set! ResizableListenerHandler.jcell_instance value))

(define (ResizableListenerHandler.jnew_0)
  (define this (new ResizableListenerHandler% [jclass "ResizableListenerHandler"]))
  this)

(define (ResizableListenerHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ResizableListenerHandler.jstatic_instance)))))



