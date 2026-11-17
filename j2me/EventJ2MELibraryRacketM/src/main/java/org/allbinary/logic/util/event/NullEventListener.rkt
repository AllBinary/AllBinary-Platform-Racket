#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary.logic.util.event

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./EventListenerInterface.rkt")
(provide (all-defined-out))

(define NullEventListener%
  (class JObject%
    (super-new)
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn (void))))))

(define NullEventListener.jcell_NULL_EVENT_LISTENER 'jnone)
(define (NullEventListener.jstatic_NULL_EVENT_LISTENER)
  (when (eq? NullEventListener.jcell_NULL_EVENT_LISTENER 'jnone) (set! NullEventListener.jcell_NULL_EVENT_LISTENER (NullEventListener.jnew_0)))
  NullEventListener.jcell_NULL_EVENT_LISTENER)

(define (NullEventListener.jnew_0)
  (define this (new NullEventListener% [jclass "NullEventListener"]))
  this)



