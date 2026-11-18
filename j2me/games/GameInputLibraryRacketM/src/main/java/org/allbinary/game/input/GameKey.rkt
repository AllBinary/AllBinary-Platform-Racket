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
  "./Input.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define GameKey%
  (class Input%
    (super-new)
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (send (send (StringMaker.jnew_0) jm_append_1 "GameKey ") jm_append_1 (super jm_toString_0)) jm_toString_0)))))))
(define (GameKey.jclassValue) GameKey%)

(define GameKey.jcell_NULL_GAME_KEY 'jnone)
(define (GameKey.jstatic_NULL_GAME_KEY)
  (when (eq? GameKey.jcell_NULL_GAME_KEY 'jnone) (set! GameKey.jcell_NULL_GAME_KEY (GameKey.jnew_2 (JR.i32 (- 1)) (get-field f_NULL_STRING (StringUtil.jm_getInstance_0)))))
  GameKey.jcell_NULL_GAME_KEY)
(define (GameKey.jsetstatic_NULL_GAME_KEY value) (set! GameKey.jcell_NULL_GAME_KEY value))

(define (GameKey.jnew_2 _key _name)
  (define this (new GameKey% [jclass "GameKey"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



