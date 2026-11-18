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
;; package org.allbinary.game.input.mapping.event

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt")
(provide (all-defined-out))

(define InputMappingEventHandler%
  (class BasicEventHandler%
    (super-new)
    (define/override (jm_process_2 _eventObject _eventListenerInterface)
    (let ([_inputMappingEventListenerInterface JR.null])
      (let/ec jreturn
        (set! _inputMappingEventListenerInterface _eventListenerInterface)
        (send _inputMappingEventListenerInterface jm_onInputMappingEvent_1 _eventObject))))))
(define (InputMappingEventHandler.jclassValue) InputMappingEventHandler%)

(define InputMappingEventHandler.jcell_gameKeyEventHandler 'jnone)
(define (InputMappingEventHandler.jstatic_gameKeyEventHandler)
  (when (eq? InputMappingEventHandler.jcell_gameKeyEventHandler 'jnone) (set! InputMappingEventHandler.jcell_gameKeyEventHandler (InputMappingEventHandler.jnew_0)))
  InputMappingEventHandler.jcell_gameKeyEventHandler)
(define (InputMappingEventHandler.jsetstatic_gameKeyEventHandler value) (set! InputMappingEventHandler.jcell_gameKeyEventHandler value))

(define (InputMappingEventHandler.jnew_0)
  (define this (new InputMappingEventHandler% [jclass "InputMappingEventHandler"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (InputMappingEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (InputMappingEventHandler.jstatic_gameKeyEventHandler)))))



