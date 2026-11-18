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
;; package org.allbinary.game.input.mapping

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/GameKey.rkt" (GameKey.jstatic_NULL_GAME_KEY)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define GameInputMapping%
  (class JObject%
    (super-new)
    (field [f_name JR.null])
    (field [f_gameKey JR.null])
    (define/public (jm_setGameKey_1 _gameKey)
    (let ()
      (let/ec jreturn
        (set-field! f_gameKey this _gameKey))))
    (define/public (jm_getGameKey_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameKey this)))))
    (define/public (jm_setName_1 _name)
    (let ()
      (let/ec jreturn
        (set-field! f_name this _name))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))))
(define (GameInputMapping.jclassValue) GameInputMapping%)

(define (GameInputMapping.jnew_2 _name _gameKey)
  (define this (new GameInputMapping% [jclass "GameInputMapping"]))
    (set-field! f_name this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_gameKey this (GameKey.jstatic_NULL_GAME_KEY))
    (let ()
      (let/ec jreturn
        (send this jm_setName_1 _name)
        (send this jm_setGameKey_1 _gameKey)))
  this)



