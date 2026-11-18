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
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/game/input/mapping/PersistentInputMapping.rkt")
(lazy-require ["../../../../org/allbinary/game/configuration/persistance/GamePersistanceStrings.rkt" (GamePersistanceStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/button/BasicTouchInputFactory.rkt" (BasicTouchInputFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory.rkt" (TouchMotionGestureFactory.jm_getInstance_0)])
(lazy-require ["./GameKeyFactory.rkt" (GameKeyFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define MotionJ2MEDefaultGameInputMapping%
  (class PersistentInputMapping%
    (super-new)))
(define (MotionJ2MEDefaultGameInputMapping.jclassValue) MotionJ2MEDefaultGameInputMapping%)

(define (MotionJ2MEDefaultGameInputMapping.jnew_0)
  (define this (new MotionJ2MEDefaultGameInputMapping% [jclass "MotionJ2MEDefaultGameInputMapping"]))
    (let ([_inputToGameKeyMapping JR.null][_gameKeyFactory JR.null][_basicTouchInputFactory JR.null])
      (let/ec jreturn
        (void)
        (set! _inputToGameKeyMapping (send this jm_getInputMapping_0))
        (set! _gameKeyFactory (GameKeyFactory.jm_getInstance_0))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_UP _gameKeyFactory) (get-field f_KEY_NUM2 _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_LEFT _gameKeyFactory) (get-field f_KEY_NUM4 _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_RIGHT _gameKeyFactory) (get-field f_KEY_NUM6 _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_DOWN _gameKeyFactory) (get-field f_KEY_NUM8 _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM1 _gameKeyFactory) (get-field f_GAME_A _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM3 _gameKeyFactory) (get-field f_GAME_B _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM7 _gameKeyFactory) (get-field f_GAME_C _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM9 _gameKeyFactory) (get-field f_GAME_D _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_LEVEL_DOWN _gameKeyFactory) (get-field f_LEVEL_DOWN _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_LEVEL_UP _gameKeyFactory) (get-field f_LEVEL_UP _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_UP _gameKeyFactory) (get-field f_UP _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_DOWN _gameKeyFactory) (get-field f_DOWN _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_LEFT _gameKeyFactory) (get-field f_LEFT _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_RIGHT _gameKeyFactory) (get-field f_RIGHT _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_POUND _gameKeyFactory) (get-field f_KEY_POUND _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_STAR _gameKeyFactory) (get-field f_KEY_STAR _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM1 _gameKeyFactory) (get-field f_KEY_NUM1 _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM3 _gameKeyFactory) (get-field f_KEY_NUM3 _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM5 _gameKeyFactory) (get-field f_KEY_NUM5 _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM7 _gameKeyFactory) (get-field f_KEY_NUM7 _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM9 _gameKeyFactory) (get-field f_KEY_NUM9 _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM0 _gameKeyFactory) (get-field f_KEY_NUM0 _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM1 _gameKeyFactory) (get-field f_FIRE _gameKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_UP _gameKeyFactory) (get-field f_UP (TouchMotionGestureFactory.jm_getInstance_0)))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_DOWN _gameKeyFactory) (get-field f_DOWN (TouchMotionGestureFactory.jm_getInstance_0)))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_LEFT _gameKeyFactory) (get-field f_LEFT (TouchMotionGestureFactory.jm_getInstance_0)))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_RIGHT _gameKeyFactory) (get-field f_RIGHT (TouchMotionGestureFactory.jm_getInstance_0)))
        (set! _basicTouchInputFactory (BasicTouchInputFactory.jm_getInstance_0))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_UP _gameKeyFactory) (get-field f_UP _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_LEFT _gameKeyFactory) (get-field f_LEFT _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_RIGHT _gameKeyFactory) (get-field f_RIGHT _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_DOWN _gameKeyFactory) (get-field f_DOWN _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM0 _gameKeyFactory) (get-field f_SPECIAL_BUTTON_FIVE _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM7 _gameKeyFactory) (get-field f_SPECIAL_BUTTON_FOUR _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM9 _gameKeyFactory) (get-field f_SPECIAL_BUTTON_THREE _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM1 _gameKeyFactory) (get-field f_SPECIAL_BUTTON_TWO _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM3 _gameKeyFactory) (get-field f_SPECIAL_BUTTON_ONE _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM2 _gameKeyFactory) (get-field f_SPECIAL_BUTTON_SIX _basicTouchInputFactory))))
  this)



