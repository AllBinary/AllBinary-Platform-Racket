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
  "./DownGameKeyEventHandlerBase.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/LocalPlayerInputIdFactory.rkt" (LocalPlayerInputIdFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define DownGameKeyEventHandler%
  (class DownGameKeyEventHandlerBase%
    (super-new)
    (field [f_playerInputIdFactory JR.null])
    (define/public (jm_getInstanceForDevice_1 _deviceId)
    (let ([_playerInputId JR.null])
      (let/ec jreturn
        (set! _playerInputId (send (get-field f_playerInputIdFactory this) jm_getPlayerForDevice_1 _deviceId))
        (jreturn (vector-ref (DownGameKeyEventHandler.jstatic_instanceArray) _playerInputId)))))
    (define/public (jm_getInstanceForPlayer_1 _playerInputId)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (DownGameKeyEventHandler.jstatic_instanceArray) _playerInputId)))))
    (define/override (jm_removeAllListeners_0)
    (let ([_index JR.null])
      (let/ec jreturn
        (super jm_removeAllListeners_0)
        (begin
            (set! _index (JR.i32 (- (vector-length (DownGameKeyEventHandler.jstatic_instanceArray)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (JR.className (vector-ref (DownGameKeyEventHandler.jstatic_instanceArray) _index)))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))
    (define/override (jm_removeListenerSingleThreaded_1 _eventListenerInterface)
    (let ([_index JR.null])
      (let/ec jreturn
        (super jm_removeListenerSingleThreaded_1 _eventListenerInterface)
        (begin
            (set! _index (JR.i32 (- (vector-length (DownGameKeyEventHandler.jstatic_instanceArray)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (JR.className (vector-ref (DownGameKeyEventHandler.jstatic_instanceArray) _index)))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))
    (define/override (jm_removeListener_1 _eventListenerInterface)
    (let ([_index JR.null])
      (let/ec jreturn
        (super jm_removeListener_1 _eventListenerInterface)
        (begin
            (set! _index (JR.i32 (- (vector-length (DownGameKeyEventHandler.jstatic_instanceArray)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (JR.className (vector-ref (DownGameKeyEventHandler.jstatic_instanceArray) _index)))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))))
(define (DownGameKeyEventHandler.jclassValue) DownGameKeyEventHandler%)

(define DownGameKeyEventHandler.jcell_instance 'jnone)
(define (DownGameKeyEventHandler.jstatic_instance)
  (when (eq? DownGameKeyEventHandler.jcell_instance 'jnone) (set! DownGameKeyEventHandler.jcell_instance (DownGameKeyEventHandler.jnew_0)))
  DownGameKeyEventHandler.jcell_instance)
(define (DownGameKeyEventHandler.jsetstatic_instance value) (set! DownGameKeyEventHandler.jcell_instance value))

(define DownGameKeyEventHandler.jcell_instanceArray 'jnone)
(define (DownGameKeyEventHandler.jstatic_instanceArray)
  (when (eq? DownGameKeyEventHandler.jcell_instanceArray 'jnone) (set! DownGameKeyEventHandler.jcell_instanceArray (vector (DownGameKeyEventHandlerBase.jnew_0) (DownGameKeyEventHandlerBase.jnew_0) (DownGameKeyEventHandlerBase.jnew_0) (DownGameKeyEventHandlerBase.jnew_0) (DownGameKeyEventHandlerBase.jnew_0) (DownGameKeyEventHandlerBase.jnew_0))))
  DownGameKeyEventHandler.jcell_instanceArray)
(define (DownGameKeyEventHandler.jsetstatic_instanceArray value) (set! DownGameKeyEventHandler.jcell_instanceArray value))

(define (DownGameKeyEventHandler.jnew_0)
  (define this (new DownGameKeyEventHandler% [jclass "DownGameKeyEventHandler"]))
    (set-field! f_playerInputIdFactory this (LocalPlayerInputIdFactory.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (DownGameKeyEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DownGameKeyEventHandler.jstatic_instance)))))



