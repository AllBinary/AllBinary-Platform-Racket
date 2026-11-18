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
(lazy-require ["../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_UP Canvas.jstatic_DOWN Canvas.jstatic_LEFT Canvas.jstatic_RIGHT Canvas.jstatic_KEY_POUND Canvas.jstatic_KEY_STAR Canvas.jstatic_KEY_NUM0 Canvas.jstatic_KEY_NUM1 Canvas.jstatic_KEY_NUM2 Canvas.jstatic_KEY_NUM3 Canvas.jstatic_KEY_NUM4 Canvas.jstatic_KEY_NUM5 Canvas.jstatic_KEY_NUM6 Canvas.jstatic_KEY_NUM7 Canvas.jstatic_KEY_NUM8 Canvas.jstatic_GAME_A Canvas.jstatic_GAME_B Canvas.jstatic_GAME_C Canvas.jstatic_GAME_D Canvas.jstatic_FIRE Canvas.jstatic_KEY_NUM9)])
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonPhoneStrings.rkt" (CommonPhoneStrings.jm_getInstance_0)])
(lazy-require ["./GameKey.rkt" (GameKey.jnew_2)])
(lazy-require ["./InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define GameKeyFactory%
  (class JObject%
    (super-new)
    (field [f_NONE JR.null])
    (field [f_UP JR.null])
    (field [f_DOWN JR.null])
    (field [f_LEFT JR.null])
    (field [f_RIGHT JR.null])
    (field [f_KEY_POUND JR.null])
    (field [f_KEY_STAR JR.null])
    (field [f_KEY_NUM0 JR.null])
    (field [f_KEY_NUM1 JR.null])
    (field [f_KEY_NUM2 JR.null])
    (field [f_KEY_NUM3 JR.null])
    (field [f_KEY_NUM4 JR.null])
    (field [f_KEY_NUM5 JR.null])
    (field [f_KEY_NUM6 JR.null])
    (field [f_KEY_NUM7 JR.null])
    (field [f_KEY_NUM8 JR.null])
    (field [f_KEY_NUM9 JR.null])
    (field [f_GAME_A JR.null])
    (field [f_GAME_B JR.null])
    (field [f_GAME_C JR.null])
    (field [f_GAME_D JR.null])
    (field [f_FIRE JR.null])
    (field [f_LEVEL_DOWN JR.null])
    (field [f_LEVEL_UP JR.null])))
(define (GameKeyFactory.jclassValue) GameKeyFactory%)

(define GameKeyFactory.jcell_instance 'jnone)
(define (GameKeyFactory.jstatic_instance)
  (when (eq? GameKeyFactory.jcell_instance 'jnone) (set! GameKeyFactory.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  GameKeyFactory.jcell_instance)
(define (GameKeyFactory.jsetstatic_instance value) (set! GameKeyFactory.jcell_instance value))

(define (GameKeyFactory.jnew_0)
  (define this (new GameKeyFactory% [jclass "GameKeyFactory"]))
    (set-field! f_NONE this (GameKey.jnew_2 (JR.i32 (- (get-field f_MAX (InputFactory.jm_getInstance_0)) 1)) "None"))
    (set-field! f_UP this (GameKey.jnew_2 (Canvas.jstatic_UP) (get-field f_UP (CommonPhoneStrings.jm_getInstance_0))))
    (set-field! f_DOWN this (GameKey.jnew_2 (Canvas.jstatic_DOWN) (get-field f_DOWN (CommonPhoneStrings.jm_getInstance_0))))
    (set-field! f_LEFT this (GameKey.jnew_2 (Canvas.jstatic_LEFT) (get-field f_LEFT (CommonPhoneStrings.jm_getInstance_0))))
    (set-field! f_RIGHT this (GameKey.jnew_2 (Canvas.jstatic_RIGHT) (get-field f_RIGHT (CommonPhoneStrings.jm_getInstance_0))))
    (set-field! f_KEY_POUND this (GameKey.jnew_2 (Canvas.jstatic_KEY_POUND) "POUND"))
    (set-field! f_KEY_STAR this (GameKey.jnew_2 (Canvas.jstatic_KEY_STAR) "STAR"))
    (set-field! f_KEY_NUM0 this (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM0) (get-field f_ZERO (CommonPhoneStrings.jm_getInstance_0))))
    (set-field! f_KEY_NUM1 this (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM1) (get-field f_ONE (CommonPhoneStrings.jm_getInstance_0))))
    (set-field! f_KEY_NUM2 this (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM2) (get-field f_TWO (CommonPhoneStrings.jm_getInstance_0))))
    (set-field! f_KEY_NUM3 this (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM3) (get-field f_THREE (CommonPhoneStrings.jm_getInstance_0))))
    (set-field! f_KEY_NUM4 this (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM4) (get-field f_FOUR (CommonPhoneStrings.jm_getInstance_0))))
    (set-field! f_KEY_NUM5 this (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM5) (get-field f_FIVE (CommonPhoneStrings.jm_getInstance_0))))
    (set-field! f_KEY_NUM6 this (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM6) (get-field f_SIX (CommonPhoneStrings.jm_getInstance_0))))
    (set-field! f_KEY_NUM7 this (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM7) (get-field f_SEVEN (CommonPhoneStrings.jm_getInstance_0))))
    (set-field! f_KEY_NUM8 this (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM8) (get-field f_EIGHT (CommonPhoneStrings.jm_getInstance_0))))
    (set-field! f_KEY_NUM9 this (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM9) (get-field f_NINE (CommonPhoneStrings.jm_getInstance_0))))
    (set-field! f_GAME_A this (GameKey.jnew_2 (Canvas.jstatic_GAME_A) "Game A"))
    (set-field! f_GAME_B this (GameKey.jnew_2 (Canvas.jstatic_GAME_B) "Game B"))
    (set-field! f_GAME_C this (GameKey.jnew_2 (Canvas.jstatic_GAME_C) "Game C"))
    (set-field! f_GAME_D this (GameKey.jnew_2 (Canvas.jstatic_GAME_D) "Game D"))
    (set-field! f_FIRE this (GameKey.jnew_2 (Canvas.jstatic_FIRE) (get-field f_FIRE (CommonPhoneStrings.jm_getInstance_0))))
    (set-field! f_LEVEL_DOWN this (GameKey.jnew_2 (JR.i32 (+ (Canvas.jstatic_KEY_NUM9) 1)) "Cheat Level Up"))
    (set-field! f_LEVEL_UP this (GameKey.jnew_2 (JR.i32 (+ (Canvas.jstatic_KEY_NUM9) 2)) "Cheat Level Down"))
  this)

(define (GameKeyFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (GameKeyFactory.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! GameKeyFactory.jcell_instance (GameKeyFactory.jnew_0))))
        (jreturn (GameKeyFactory.jstatic_instance)))))



