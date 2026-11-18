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
(lazy-require ["./PCKeyFactory.rkt" (PCKeyFactory.jm_getInstance_0)])
(lazy-require ["./GameKeyFactory.rkt" (GameKeyFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define DesktopDefaultGameInputMapping%
  (class PersistentInputMapping%
    (super-new)))
(define (DesktopDefaultGameInputMapping.jclassValue) DesktopDefaultGameInputMapping%)

(define (DesktopDefaultGameInputMapping.jnew_0)
  (define this (new DesktopDefaultGameInputMapping% [jclass "DesktopDefaultGameInputMapping"]))
    (let ([_pcKeyFactory JR.null][_inputToGameKeyMapping JR.null][_gameKeyFactory JR.null][_touchMotionGestureFactory JR.null][_basicTouchInputFactory JR.null])
      (let/ec jreturn
        (void)
        (set! _pcKeyFactory (PCKeyFactory.jm_getInstance_0))
        (set! _inputToGameKeyMapping (send this jm_getInputMapping_0))
        (set! _gameKeyFactory (GameKeyFactory.jm_getInstance_0))
        (set! _touchMotionGestureFactory (TouchMotionGestureFactory.jm_getInstance_0))
        (set! _basicTouchInputFactory (BasicTouchInputFactory.jm_getInstance_0))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_FIRE _gameKeyFactory) (get-field f_ENTER _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM1 _gameKeyFactory) (get-field f_FOUR _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM1 _gameKeyFactory) (get-field f__P _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM1 _gameKeyFactory) (get-field f_p _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_UP _gameKeyFactory) (get-field f_DPAD_UP _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_DOWN _gameKeyFactory) (get-field f_DPAD_DOWN _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_LEFT _gameKeyFactory) (get-field f_DPAD_LEFT _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_RIGHT _gameKeyFactory) (get-field f_DPAD_RIGHT _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM7 _gameKeyFactory) (get-field f__Y _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM9 _gameKeyFactory) (get-field f__I _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_UP _gameKeyFactory) (get-field f__U _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_LEFT _gameKeyFactory) (get-field f__H _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_RIGHT _gameKeyFactory) (get-field f__J _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_DOWN _gameKeyFactory) (get-field f__N _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM5 _gameKeyFactory) (get-field f__M _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM7 _gameKeyFactory) (get-field f_y _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM9 _gameKeyFactory) (get-field f_i _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_UP _gameKeyFactory) (get-field f_u _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_LEFT _gameKeyFactory) (get-field f_h _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_RIGHT _gameKeyFactory) (get-field f_j _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_DOWN _gameKeyFactory) (get-field f_n _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM5 _gameKeyFactory) (get-field f_m _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM7 _gameKeyFactory) (get-field f__Q _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM9 _gameKeyFactory) (get-field f__E _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_UP _gameKeyFactory) (get-field f__W _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_LEFT _gameKeyFactory) (get-field f__A _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_RIGHT _gameKeyFactory) (get-field f__D _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_DOWN _gameKeyFactory) (get-field f__S _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM5 _gameKeyFactory) (get-field f__X _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM7 _gameKeyFactory) (get-field f_q _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM9 _gameKeyFactory) (get-field f_e _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_UP _gameKeyFactory) (get-field f_w _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_LEFT _gameKeyFactory) (get-field f_a _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_RIGHT _gameKeyFactory) (get-field f_d _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_DOWN _gameKeyFactory) (get-field f_s _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM5 _gameKeyFactory) (get-field f_x _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_UP _gameKeyFactory) (get-field f_UP _touchMotionGestureFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_DOWN _gameKeyFactory) (get-field f_DOWN _touchMotionGestureFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_LEFT _gameKeyFactory) (get-field f_LEFT _touchMotionGestureFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_RIGHT _gameKeyFactory) (get-field f_RIGHT _touchMotionGestureFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_UP _gameKeyFactory) (get-field f_UP _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_LEFT _gameKeyFactory) (get-field f_LEFT _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_RIGHT _gameKeyFactory) (get-field f_RIGHT _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_DOWN _gameKeyFactory) (get-field f_DOWN _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM0 _gameKeyFactory) (get-field f_SPECIAL_BUTTON_FIVE _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM7 _gameKeyFactory) (get-field f_SPECIAL_BUTTON_FOUR _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM9 _gameKeyFactory) (get-field f_SPECIAL_BUTTON_THREE _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM1 _gameKeyFactory) (get-field f_SPECIAL_BUTTON_TWO _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM3 _gameKeyFactory) (get-field f_SPECIAL_BUTTON_ONE _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM2 _gameKeyFactory) (get-field f_SPECIAL_BUTTON_SIX _basicTouchInputFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM3 _gameKeyFactory) (get-field f_THREE _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM0 _gameKeyFactory) (get-field f_ZERO _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM0 _gameKeyFactory) (get-field f_ONE _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_NUM0 _gameKeyFactory) (get-field f_SPACE _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_POUND _gameKeyFactory) (get-field f_DEL _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_POUND _gameKeyFactory) (get-field f_TWO _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_STAR _gameKeyFactory) (get-field f_ESCAPE _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_KEY_STAR _gameKeyFactory) (get-field f_STAR _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_LEVEL_DOWN _gameKeyFactory) (get-field f_COMMA _pcKeyFactory))
        (send _inputToGameKeyMapping jm_add_2 (get-field f_LEVEL_UP _gameKeyFactory) (get-field f_PERIOD _pcKeyFactory))))
  this)



