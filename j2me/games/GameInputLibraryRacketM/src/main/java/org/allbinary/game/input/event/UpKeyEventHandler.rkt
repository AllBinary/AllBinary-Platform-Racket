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
;; package org.allbinary.game.input.event

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./UpKeyEventHandlerBase.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/LocalPlayerInputIdFactory.rkt" (LocalPlayerInputIdFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define UpKeyEventHandler%
  (class UpKeyEventHandlerBase%
    (super-new)
    (field [f_playerInputIdFactory JR.null])
    (define/public (jm_getInstanceForDevice_1 _deviceId)
    (let ([_playerInputId JR.null])
      (let/ec jreturn
        (set! _playerInputId (send (get-field f_playerInputIdFactory this) jm_getPlayerForDevice_1 _deviceId))
        (jreturn (vector-ref (UpKeyEventHandler.jstatic_instanceArray) _playerInputId)))))
    (define/public (jm_getInstanceForPlayer_1 _playerInputId)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (UpKeyEventHandler.jstatic_instanceArray) _playerInputId)))))
    (define/override (jm_removeAllListeners_0)
    (let ([_index JR.null])
      (let/ec jreturn
        (super jm_removeAllListeners_0)
        (begin
            (set! _index (JR.i32 (- (vector-length (UpKeyEventHandler.jstatic_instanceArray)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (JR.className (vector-ref (UpKeyEventHandler.jstatic_instanceArray) _index)))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))
    (define/override (jm_removeListenerSingleThreaded_1 _eventListenerInterface)
    (let ([_index JR.null])
      (let/ec jreturn
        (super jm_removeListenerSingleThreaded_1 _eventListenerInterface)
        (begin
            (set! _index (JR.i32 (- (vector-length (UpKeyEventHandler.jstatic_instanceArray)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (JR.className (vector-ref (UpKeyEventHandler.jstatic_instanceArray) _index)))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))
    (define/override (jm_removeListener_1 _eventListenerInterface)
    (let ([_index JR.null])
      (let/ec jreturn
        (super jm_removeListener_1 _eventListenerInterface)
        (begin
            (set! _index (JR.i32 (- (vector-length (UpKeyEventHandler.jstatic_instanceArray)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (JR.className (vector-ref (UpKeyEventHandler.jstatic_instanceArray) _index)))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))))
(define (UpKeyEventHandler.jclassValue) UpKeyEventHandler%)

(define UpKeyEventHandler.jcell_instance 'jnone)
(define (UpKeyEventHandler.jstatic_instance)
  (when (eq? UpKeyEventHandler.jcell_instance 'jnone) (set! UpKeyEventHandler.jcell_instance (UpKeyEventHandler.jnew_0)))
  UpKeyEventHandler.jcell_instance)
(define (UpKeyEventHandler.jsetstatic_instance value) (set! UpKeyEventHandler.jcell_instance value))

(define UpKeyEventHandler.jcell_instanceArray 'jnone)
(define (UpKeyEventHandler.jstatic_instanceArray)
  (when (eq? UpKeyEventHandler.jcell_instanceArray 'jnone) (set! UpKeyEventHandler.jcell_instanceArray (vector (UpKeyEventHandlerBase.jnew_0) (UpKeyEventHandlerBase.jnew_0) (UpKeyEventHandlerBase.jnew_0) (UpKeyEventHandlerBase.jnew_0) (UpKeyEventHandlerBase.jnew_0) (UpKeyEventHandlerBase.jnew_0))))
  UpKeyEventHandler.jcell_instanceArray)
(define (UpKeyEventHandler.jsetstatic_instanceArray value) (set! UpKeyEventHandler.jcell_instanceArray value))

(define (UpKeyEventHandler.jnew_0)
  (define this (new UpKeyEventHandler% [jclass "UpKeyEventHandler"]))
    (set-field! f_playerInputIdFactory this (LocalPlayerInputIdFactory.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (UpKeyEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (UpKeyEventHandler.jstatic_instance)))))



