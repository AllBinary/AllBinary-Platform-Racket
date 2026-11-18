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
;; package org.allbinary.game

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./GameType.rkt" (GameType.jnew_1)])
(provide (all-defined-out))

(define GameTypeFactory%
  (class JObject%
    (super-new)
    (field [f_NULL_GAME_TYPE_ARRAY JR.null])
    (field [f_NONE JR.null])
    (field [f_SINGLE_PLAYER JR.null])
    (field [f_MULTI_PLAYER JR.null])
    (field [f_BOT JR.null])))
(define (GameTypeFactory.jclassValue) GameTypeFactory%)

(define GameTypeFactory.jcell_instance 'jnone)
(define (GameTypeFactory.jstatic_instance)
  (when (eq? GameTypeFactory.jcell_instance 'jnone) (set! GameTypeFactory.jcell_instance (GameTypeFactory.jnew_0)))
  GameTypeFactory.jcell_instance)
(define (GameTypeFactory.jsetstatic_instance value) (set! GameTypeFactory.jcell_instance value))

(define (GameTypeFactory.jnew_0)
  (define this (new GameTypeFactory% [jclass "GameTypeFactory"]))
    (set-field! f_NULL_GAME_TYPE_ARRAY this (JR.newArray JR.null 0))
    (set-field! f_NONE this (GameType.jnew_1 (get-field f_NULL_STRING (StringUtil.jm_getInstance_0))))
    (set-field! f_SINGLE_PLAYER this (GameType.jnew_1 "Single Player"))
    (set-field! f_MULTI_PLAYER this (GameType.jnew_1 "Multi Player"))
    (set-field! f_BOT this (GameType.jnew_1 "Artificial Player"))
  this)

(define (GameTypeFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameTypeFactory.jstatic_instance)))))



