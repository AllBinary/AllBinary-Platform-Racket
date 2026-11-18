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
(lazy-require ["../../../../org/allbinary/game/input/mapping/InputToGameKeyMapping.rkt" (InputToGameKeyMapping.jnew_0 InputToGameKeyMapping.jm_getNullInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/button/BasicTouchInputFactory.rkt" (BasicTouchInputFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./PCKeyFactory.rkt" (PCKeyFactory.jm_getInstance_0)])
(lazy-require ["./GameKeyFactory.rkt" (GameKeyFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define PlatformFormInputMappingFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_inputToGameKeyMapping JR.null])
    (define/public (jm_getOrCreate_0)
    (let ([_pcKeyFactory JR.null][_inputToGameKeyMapping JR.null][_gameKeyFactory JR.null][_basicTouchInputFactory JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_GET_INSTANCE _commonStrings) _e))])
            (when (eq? (get-field f_inputToGameKeyMapping this) (InputToGameKeyMapping.jm_getNullInstance_0))
                (begin
                (set! _pcKeyFactory (PCKeyFactory.jm_getInstance_0))
                (set! _inputToGameKeyMapping (InputToGameKeyMapping.jnew_0))
                (set! _gameKeyFactory (GameKeyFactory.jm_getInstance_0))
                (set! _basicTouchInputFactory (BasicTouchInputFactory.jm_getInstance_0))
                (send _inputToGameKeyMapping jm_add_2 (get-field f_UP _gameKeyFactory) (get-field f_DPAD_UP _pcKeyFactory))
                (send _inputToGameKeyMapping jm_add_2 (get-field f_DOWN _gameKeyFactory) (get-field f_DPAD_DOWN _pcKeyFactory))
                (send _inputToGameKeyMapping jm_add_2 (get-field f_LEFT _gameKeyFactory) (get-field f_DPAD_LEFT _pcKeyFactory))
                (send _inputToGameKeyMapping jm_add_2 (get-field f_RIGHT _gameKeyFactory) (get-field f_DPAD_RIGHT _pcKeyFactory))
                (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM1 _gameKeyFactory) (get-field f_ENTER _pcKeyFactory))
                (send _inputToGameKeyMapping jm_add_2 (get-field f_UP _gameKeyFactory) (get-field f_UP _basicTouchInputFactory))
                (send _inputToGameKeyMapping jm_add_2 (get-field f_LEFT _gameKeyFactory) (get-field f_LEFT _basicTouchInputFactory))
                (send _inputToGameKeyMapping jm_add_2 (get-field f_RIGHT _gameKeyFactory) (get-field f_RIGHT _basicTouchInputFactory))
                (send _inputToGameKeyMapping jm_add_2 (get-field f_DOWN _gameKeyFactory) (get-field f_DOWN _basicTouchInputFactory))
                (set-field! f_inputToGameKeyMapping this _inputToGameKeyMapping))))
        (jreturn (get-field f_inputToGameKeyMapping this)))))))
(define (PlatformFormInputMappingFactory.jclassValue) PlatformFormInputMappingFactory%)

(define PlatformFormInputMappingFactory.jcell_instance 'jnone)
(define (PlatformFormInputMappingFactory.jstatic_instance)
  (when (eq? PlatformFormInputMappingFactory.jcell_instance 'jnone) (set! PlatformFormInputMappingFactory.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  PlatformFormInputMappingFactory.jcell_instance)
(define (PlatformFormInputMappingFactory.jsetstatic_instance value) (set! PlatformFormInputMappingFactory.jcell_instance value))

(define (PlatformFormInputMappingFactory.jnew_0)
  (define this (new PlatformFormInputMappingFactory% [jclass "PlatformFormInputMappingFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_inputToGameKeyMapping this (InputToGameKeyMapping.jm_getNullInstance_0))
  this)

(define (PlatformFormInputMappingFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (PlatformFormInputMappingFactory.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! PlatformFormInputMappingFactory.jcell_instance (PlatformFormInputMappingFactory.jnew_0))))
        (jreturn (PlatformFormInputMappingFactory.jstatic_instance)))))



