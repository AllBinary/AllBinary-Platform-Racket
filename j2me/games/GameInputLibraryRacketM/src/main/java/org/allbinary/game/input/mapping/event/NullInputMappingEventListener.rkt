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
;; package org.allbinary.game.input.mapping.event

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "./InputMappingEventListenerInterface.rkt")
(provide (all-defined-out))

(define NullInputMappingEventListener%
  (class JObject%
    (super-new)
    (define/public (jm_onInputMappingEvent_1 _inputMappingEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn (void))))))
(define (NullInputMappingEventListener.jclassValue) NullInputMappingEventListener%)

(define NullInputMappingEventListener.jcell_NULL_INPUT_MAPPING_EVENT_LISTENER 'jnone)
(define (NullInputMappingEventListener.jstatic_NULL_INPUT_MAPPING_EVENT_LISTENER)
  (when (eq? NullInputMappingEventListener.jcell_NULL_INPUT_MAPPING_EVENT_LISTENER 'jnone) (set! NullInputMappingEventListener.jcell_NULL_INPUT_MAPPING_EVENT_LISTENER (NullInputMappingEventListener.jnew_0)))
  NullInputMappingEventListener.jcell_NULL_INPUT_MAPPING_EVENT_LISTENER)
(define (NullInputMappingEventListener.jsetstatic_NULL_INPUT_MAPPING_EVENT_LISTENER value) (set! NullInputMappingEventListener.jcell_NULL_INPUT_MAPPING_EVENT_LISTENER value))

(define (NullInputMappingEventListener.jnew_0)
  (define this (new NullInputMappingEventListener% [jclass "NullInputMappingEventListener"]))
  this)



