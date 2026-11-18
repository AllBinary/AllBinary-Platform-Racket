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
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["./InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(lazy-require ["./GameKeyFactory.rkt" (GameKeyFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define GameKeyMappingFactory%
  (class JObject%
    (super-new)
    (field [f_intKeyToGameKey JR.null])
    (define/public (jm_getGameKey_1 _key)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_intKeyToGameKey this) _key)))))
    (define/public (jm_setGameKey_1 _gameKey)
    (let ()
      (let/ec jreturn
        (vector-set! (get-field f_intKeyToGameKey this) (send _gameKey jm_getId_0) _gameKey))))))
(define (GameKeyMappingFactory.jclassValue) GameKeyMappingFactory%)

(define GameKeyMappingFactory.jcell_instance 'jnone)
(define (GameKeyMappingFactory.jstatic_instance)
  (when (eq? GameKeyMappingFactory.jcell_instance 'jnone) (set! GameKeyMappingFactory.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  GameKeyMappingFactory.jcell_instance)
(define (GameKeyMappingFactory.jsetstatic_instance value) (set! GameKeyMappingFactory.jcell_instance value))

(define (GameKeyMappingFactory.jnew_0)
  (define this (new GameKeyMappingFactory% [jclass "GameKeyMappingFactory"]))
    (set-field! f_intKeyToGameKey this (JR.newArray JR.null (get-field f_MAX (InputFactory.jm_getInstance_0))))
    (let ([_gameKeyFactory JR.null])
      (let/ec jreturn
        (set! _gameKeyFactory (GameKeyFactory.jm_getInstance_0))
        (send this jm_setGameKey_1 (get-field f_NONE _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_UP _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_DOWN _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_LEFT _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_RIGHT _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_KEY_POUND _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_KEY_STAR _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_KEY_NUM0 _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_KEY_NUM1 _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_KEY_NUM2 _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_KEY_NUM3 _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_KEY_NUM4 _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_KEY_NUM5 _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_KEY_NUM6 _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_KEY_NUM7 _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_KEY_NUM8 _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_KEY_NUM9 _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_GAME_A _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_GAME_B _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_GAME_C _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_GAME_D _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_FIRE _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_LEVEL_DOWN _gameKeyFactory))
        (send this jm_setGameKey_1 (get-field f_LEVEL_UP _gameKeyFactory))))
  this)

(define (GameKeyMappingFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (GameKeyMappingFactory.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! GameKeyMappingFactory.jcell_instance (GameKeyMappingFactory.jnew_0))))
        (jreturn (GameKeyMappingFactory.jstatic_instance)))))



