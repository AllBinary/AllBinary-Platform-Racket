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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/input/analog/AnalogLocationInputFactory.rkt" (AnalogLocationInputFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(provide (all-defined-out))

(define LocalPlayerInputIdFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_MAX_NUMBER_OF_PLAYERS 0])
    (field [f_MAX_FAST_DEVICEID 0])
    (field [f_deviceIdToplayerId JR.null])
    (field [f_playerIdToDeviceId JR.null])
    (field [f_playersInPlay JR.null])
    (field [f_totalDevicesMapped 0])
    (define/public (jm_getDeviceId_1 _playerInputId)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_playerIdToDeviceId this) _playerInputId)))))
    (define/public (jm_getPlayerForDevice_1 _deviceId)
    (let ([_index JR.null][_playerInputId JR.null])
      (let/ec jreturn
        (set! _index 0)
        (if (< _deviceId (get-field f_MAX_FAST_DEVICEID this))
            (begin
            (set! _playerInputId (vector-ref (get-field f_deviceIdToplayerId this) _deviceId))
            (when (not (= _playerInputId (JR.i32 (- 1))))
                (begin
                (jreturn _playerInputId))))
            (begin
            (begin
                (set! _index (JR.i32 (- (get-field f_totalDevicesMapped this) 1)))
                (let/ec jbreak (let jloop () (when (>= _index 0)
                    (let/ec jcontinue
                (when (= (vector-ref (get-field f_playerIdToDeviceId this) _index) _deviceId)
                    (begin
                    (jreturn _index))))
                    (set! _index (JR.i32 (- _index 1))) (jloop)))))))
        (set! _index (get-field f_totalDevicesMapped this))
        (if (< _deviceId (get-field f_MAX_FAST_DEVICEID this))
            (begin
            (vector-set! (get-field f_deviceIdToplayerId this) _deviceId _index))
            (begin
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (StringMaker.jnew_0) jm_append_1 "Added DeviceId: ") jm_appendint_1 _deviceId) jm_append_1 " beyond fast Id list") jm_toString_0) this "getPlayerForDevice")))
        (vector-set! (get-field f_playerIdToDeviceId this) _index _deviceId)
        (send (AnalogLocationInputFactory.jm_getInstance_0) jm_addPlayer_1 (get-field f_totalDevicesMapped this))
        (set-field! f_totalDevicesMapped this (JR.i32 (+ (get-field f_totalDevicesMapped this) 1)))
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 "Added DeviceId: ") jm_appendint_1 _deviceId) jm_append_1 " at: ") jm_appendint_1 _index) jm_append_1 " Total: ") jm_appendint_1 (get-field f_totalDevicesMapped this)) jm_toString_0) this "getPlayerForDevice")
        (jreturn _index))))
    (define/public (jm_getTotalDevicesInPlay_0)
    (let ([_total JR.null][_index JR.null])
      (let/ec jreturn
        (set! _total 0)
        (begin
            (set! _index (JR.i32 (- (get-field f_totalDevicesMapped this) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (when (eq? (vector-ref (get-field f_playersInPlay this) _index) #t)
                (begin
                (set! _total (JR.i32 (+ _total 1))))))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (jreturn _total))))
    (define/public (jm_isPlayerInPlay_1 _playerInputId)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_playersInPlay this) _playerInputId)))))
    (define/public (jm_setPlayerInPlay_1 _playerInputId)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Setting PlayerInPlay with playerInputId: ") jm_appendint_1 _playerInputId) jm_toString_0) this "setPlayerInPlay")
        (vector-set! (get-field f_playersInPlay this) _playerInputId #t))))
    (define/public (jm_setPlayerOutOfPlay_1 _playerInputId)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Setting PlayerOutOfPlay with playerInputId: ") jm_appendint_1 _playerInputId) jm_toString_0) this "setPlayerOutOfPlay")
        (vector-set! (get-field f_playersInPlay this) _playerInputId #f))))
    (define/public (jm_getPlayersInPlay_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_playersInPlay this)))))))
(define (LocalPlayerInputIdFactory.jclassValue) LocalPlayerInputIdFactory%)

(define LocalPlayerInputIdFactory.jcell_instance 'jnone)
(define (LocalPlayerInputIdFactory.jstatic_instance)
  (when (eq? LocalPlayerInputIdFactory.jcell_instance 'jnone) (set! LocalPlayerInputIdFactory.jcell_instance (LocalPlayerInputIdFactory.jnew_0)))
  LocalPlayerInputIdFactory.jcell_instance)
(define (LocalPlayerInputIdFactory.jsetstatic_instance value) (set! LocalPlayerInputIdFactory.jcell_instance value))

(define (LocalPlayerInputIdFactory.jnew_0)
  (define this (new LocalPlayerInputIdFactory% [jclass "LocalPlayerInputIdFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_MAX_NUMBER_OF_PLAYERS this 6)
    (set-field! f_MAX_FAST_DEVICEID this 65)
    (set-field! f_deviceIdToplayerId this (JR.newArray 0 (get-field f_MAX_FAST_DEVICEID this)))
    (set-field! f_playerIdToDeviceId this (JR.newArray 0 (get-field f_MAX_NUMBER_OF_PLAYERS this)))
    (set-field! f_playersInPlay this (JR.newArray #f (get-field f_MAX_NUMBER_OF_PLAYERS this)))
    (set-field! f_totalDevicesMapped this 0)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (JR.i32 (- (vector-length (get-field f_deviceIdToplayerId this)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (vector-set! (get-field f_deviceIdToplayerId this) _index (JR.i32 (- 1))))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))))
  this)

(define (LocalPlayerInputIdFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LocalPlayerInputIdFactory.jstatic_instance)))))



