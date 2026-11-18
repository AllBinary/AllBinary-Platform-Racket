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
  "./DownKeyEventHandlerBase.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/LocalPlayerInputIdFactory.rkt" (LocalPlayerInputIdFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define DownKeyEventHandler%
  (class DownKeyEventHandlerBase%
    (super-new)
    (field [f_playerInputIdFactory JR.null])
    (define/public (jm_getInstanceForDevice_1 _deviceId)
    (let ([_playerInputId JR.null])
      (let/ec jreturn
        (set! _playerInputId (send (get-field f_playerInputIdFactory this) jm_getPlayerForDevice_1 _deviceId))
        (jreturn (vector-ref (DownKeyEventHandler.jstatic_instanceArray) _playerInputId)))))
    (define/public (jm_getInstanceForPlayer_1 _playerInputId)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (DownKeyEventHandler.jstatic_instanceArray) _playerInputId)))))
    (define/override (jm_removeAllListeners_0)
    (let ([_index JR.null])
      (let/ec jreturn
        (super jm_removeAllListeners_0)
        (begin
            (set! _index (JR.i32 (- (vector-length (DownKeyEventHandler.jstatic_instanceArray)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (JR.className (vector-ref (DownKeyEventHandler.jstatic_instanceArray) _index)))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))
    (define/override (jm_removeListenerSingleThreaded_1 _eventListenerInterface)
    (let ([_index JR.null])
      (let/ec jreturn
        (super jm_removeListenerSingleThreaded_1 _eventListenerInterface)
        (begin
            (set! _index (JR.i32 (- (vector-length (DownKeyEventHandler.jstatic_instanceArray)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (JR.className (vector-ref (DownKeyEventHandler.jstatic_instanceArray) _index)))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))
    (define/override (jm_removeListener_1 _eventListenerInterface)
    (let ([_index JR.null])
      (let/ec jreturn
        (super jm_removeListener_1 _eventListenerInterface)
        (begin
            (set! _index (JR.i32 (- (vector-length (DownKeyEventHandler.jstatic_instanceArray)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (JR.className (vector-ref (DownKeyEventHandler.jstatic_instanceArray) _index)))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))))
(define (DownKeyEventHandler.jclassValue) DownKeyEventHandler%)

(define DownKeyEventHandler.jcell_instance 'jnone)
(define (DownKeyEventHandler.jstatic_instance)
  (when (eq? DownKeyEventHandler.jcell_instance 'jnone) (set! DownKeyEventHandler.jcell_instance (DownKeyEventHandler.jnew_0)))
  DownKeyEventHandler.jcell_instance)
(define (DownKeyEventHandler.jsetstatic_instance value) (set! DownKeyEventHandler.jcell_instance value))

(define DownKeyEventHandler.jcell_instanceArray 'jnone)
(define (DownKeyEventHandler.jstatic_instanceArray)
  (when (eq? DownKeyEventHandler.jcell_instanceArray 'jnone) (set! DownKeyEventHandler.jcell_instanceArray (vector (DownKeyEventHandlerBase.jnew_0) (DownKeyEventHandlerBase.jnew_0) (DownKeyEventHandlerBase.jnew_0) (DownKeyEventHandlerBase.jnew_0) (DownKeyEventHandlerBase.jnew_0) (DownKeyEventHandlerBase.jnew_0))))
  DownKeyEventHandler.jcell_instanceArray)
(define (DownKeyEventHandler.jsetstatic_instanceArray value) (set! DownKeyEventHandler.jcell_instanceArray value))

(define (DownKeyEventHandler.jnew_0)
  (define this (new DownKeyEventHandler% [jclass "DownKeyEventHandler"]))
    (set-field! f_playerInputIdFactory this (LocalPlayerInputIdFactory.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (DownKeyEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DownKeyEventHandler.jstatic_instance)))))



