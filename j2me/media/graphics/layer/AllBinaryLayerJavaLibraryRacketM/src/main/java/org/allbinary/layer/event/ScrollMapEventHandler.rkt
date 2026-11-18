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
;; package org.allbinary.layer.event

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt")
(provide (all-defined-out))

(define ScrollMapEventHandler%
  (class BasicEventHandler%
    (super-new)
    (define/override (jm_process_2 _eventObject _eventListenerInterface)
    (let ([_scrollMapEventListenerInterface JR.null])
      (let/ec jreturn
        (set! _scrollMapEventListenerInterface _eventListenerInterface)
        (send _scrollMapEventListenerInterface jm_onMoveEvent_1 _eventObject))))))
(define (ScrollMapEventHandler.jclassValue) ScrollMapEventHandler%)

(define ScrollMapEventHandler.jcell_SINGLETON 'jnone)
(define (ScrollMapEventHandler.jstatic_SINGLETON)
  (when (eq? ScrollMapEventHandler.jcell_SINGLETON 'jnone) (set! ScrollMapEventHandler.jcell_SINGLETON (ScrollMapEventHandler.jnew_0)))
  ScrollMapEventHandler.jcell_SINGLETON)
(define (ScrollMapEventHandler.jsetstatic_SINGLETON value) (set! ScrollMapEventHandler.jcell_SINGLETON value))

(define (ScrollMapEventHandler.jnew_0)
  (define this (new ScrollMapEventHandler% [jclass "ScrollMapEventHandler"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ScrollMapEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ScrollMapEventHandler.jstatic_SINGLETON)))))



