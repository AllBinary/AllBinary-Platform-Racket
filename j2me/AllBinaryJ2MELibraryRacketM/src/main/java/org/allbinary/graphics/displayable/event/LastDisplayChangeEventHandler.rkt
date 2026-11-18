#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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

(define LastDisplayChangeEventHandler%
  (class BasicEventHandler%
    (super-new)
    (define/override (jm_process_2 _eventObject _eventListenerInterface)
    (let ([_displayChangeEventListener JR.null])
      (let/ec jreturn
        (set! _displayChangeEventListener _eventListenerInterface)
        (send _displayChangeEventListener jm_onDisplayChangeEvent_1 _eventObject))))))
(define (LastDisplayChangeEventHandler.jclassValue) LastDisplayChangeEventHandler%)

(define LastDisplayChangeEventHandler.jcell_SINGLETON 'jnone)
(define (LastDisplayChangeEventHandler.jstatic_SINGLETON)
  (when (eq? LastDisplayChangeEventHandler.jcell_SINGLETON 'jnone) (set! LastDisplayChangeEventHandler.jcell_SINGLETON (LastDisplayChangeEventHandler.jnew_0)))
  LastDisplayChangeEventHandler.jcell_SINGLETON)
(define (LastDisplayChangeEventHandler.jsetstatic_SINGLETON value) (set! LastDisplayChangeEventHandler.jcell_SINGLETON value))

(define (LastDisplayChangeEventHandler.jnew_0)
  (define this (new LastDisplayChangeEventHandler% [jclass "LastDisplayChangeEventHandler"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (LastDisplayChangeEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LastDisplayChangeEventHandler.jstatic_SINGLETON)))))



