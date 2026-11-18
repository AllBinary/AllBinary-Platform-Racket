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
;; package org.allbinary.graphics.displayable.event

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt")
(provide (all-defined-out))

(define DisplayChangeEventHandler%
  (class BasicEventHandler%
    (super-new)
    (define/override (jm_process_2 _eventObject _eventListenerInterface)
    (let ([_displayChangeEventListener JR.null])
      (let/ec jreturn
        (set! _displayChangeEventListener _eventListenerInterface)
        (send _displayChangeEventListener jm_onDisplayChangeEvent_1 _eventObject))))))
(define (DisplayChangeEventHandler.jclassValue) DisplayChangeEventHandler%)

(define DisplayChangeEventHandler.jcell_SINGLETON 'jnone)
(define (DisplayChangeEventHandler.jstatic_SINGLETON)
  (when (eq? DisplayChangeEventHandler.jcell_SINGLETON 'jnone) (set! DisplayChangeEventHandler.jcell_SINGLETON (DisplayChangeEventHandler.jnew_0)))
  DisplayChangeEventHandler.jcell_SINGLETON)
(define (DisplayChangeEventHandler.jsetstatic_SINGLETON value) (set! DisplayChangeEventHandler.jcell_SINGLETON value))

(define (DisplayChangeEventHandler.jnew_0)
  (define this (new DisplayChangeEventHandler% [jclass "DisplayChangeEventHandler"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (DisplayChangeEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DisplayChangeEventHandler.jstatic_SINGLETON)))))



