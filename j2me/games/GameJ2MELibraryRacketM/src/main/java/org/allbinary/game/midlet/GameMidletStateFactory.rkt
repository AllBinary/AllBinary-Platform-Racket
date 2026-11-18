#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.game.midlet

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/state/GameStateFactory.rkt" (GameStateFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(provide (all-defined-out))

(define GameMidletStateFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_currentGameState JR.null])
    (define/public (jm_getCurrentGameState_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_currentGameState this)))))
    (define/public (jm_setCurrentGameState_1 _currentGameState)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_CURRENT (CommonLabels.jm_getInstance_0))) jm_append_1 " GameState: ") jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _currentGameState)) jm_toString_0) this "setCurrentGameState")
        (set-field! f_currentGameState this _currentGameState))))))
(define (GameMidletStateFactory.jclassValue) GameMidletStateFactory%)

(define GameMidletStateFactory.jcell_INSTANCE 'jnone)
(define (GameMidletStateFactory.jstatic_INSTANCE)
  (when (eq? GameMidletStateFactory.jcell_INSTANCE 'jnone) (set! GameMidletStateFactory.jcell_INSTANCE (GameMidletStateFactory.jnew_0)))
  GameMidletStateFactory.jcell_INSTANCE)
(define (GameMidletStateFactory.jsetstatic_INSTANCE value) (set! GameMidletStateFactory.jcell_INSTANCE value))

(define (GameMidletStateFactory.jnew_0)
  (define this (new GameMidletStateFactory% [jclass "GameMidletStateFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_currentGameState this (get-field f_NO_GAME_STATE (GameStateFactory.jm_getInstance_0)))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (GameMidletStateFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameMidletStateFactory.jstatic_INSTANCE)))))



