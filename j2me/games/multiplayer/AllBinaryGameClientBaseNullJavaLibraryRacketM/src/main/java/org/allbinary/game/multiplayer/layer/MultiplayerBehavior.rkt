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
;; package org.allbinary.game.multiplayer.layer

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define MultiplayerBehavior%
  (class JObject%
    (super-new)
    (define/public (jm_startTick_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_endTick_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getApproximateElapsed_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))))
(define (MultiplayerBehavior.jclassValue) MultiplayerBehavior%)

(define MultiplayerBehavior.jcell_NULL_MULTIPLAYER_BEHAVIOR 'jnone)
(define (MultiplayerBehavior.jstatic_NULL_MULTIPLAYER_BEHAVIOR)
  (when (eq? MultiplayerBehavior.jcell_NULL_MULTIPLAYER_BEHAVIOR 'jnone) (set! MultiplayerBehavior.jcell_NULL_MULTIPLAYER_BEHAVIOR (MultiplayerBehavior.jnew_1 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))))
  MultiplayerBehavior.jcell_NULL_MULTIPLAYER_BEHAVIOR)
(define (MultiplayerBehavior.jsetstatic_NULL_MULTIPLAYER_BEHAVIOR value) (set! MultiplayerBehavior.jcell_NULL_MULTIPLAYER_BEHAVIOR value))

(define (MultiplayerBehavior.jnew_1 _username)
  (define this (new MultiplayerBehavior% [jclass "MultiplayerBehavior"]))
    (let ()
      (let/ec jreturn (void)))
  this)



