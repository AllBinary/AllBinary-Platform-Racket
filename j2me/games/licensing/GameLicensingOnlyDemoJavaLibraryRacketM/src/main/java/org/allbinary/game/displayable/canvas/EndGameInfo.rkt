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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define EndGameInfo%
  (class JObject%
    (super-new)
    (field [f_NORMAL_GAME_OVER_WIN JR.null])
    (field [f_TEASER_DEMO_GAME_END_LAST_LEVEL JR.null])
    (field [f_TEASER_DEMO_GAME_END JR.null])
    (field [f_gameOverStr JR.null])
    (field [f_winStr JR.null])
    (define/public (jm_update_2 _gameInfo _myCanvas)
    (let ()
      (let/ec jreturn
        (if (send _gameInfo jm_isLastLevel_0)
            (begin
            (send this jm_setWinStr_1 (get-field f_TEASER_DEMO_GAME_END_LAST_LEVEL this))
            (send this jm_setGameOverStr_1 (get-field f_TEASER_DEMO_GAME_END_LAST_LEVEL this)))
            (begin
            (send this jm_setWinStr_1 (get-field f_NORMAL_GAME_OVER_WIN this))
            (send this jm_setGameOverStr_1 (get-field f_TEASER_DEMO_GAME_END this)))))))
    (define/public (jm_getGameOverStr_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameOverStr this)))))
    (define/public (jm_setGameOverStr_1 _gameOverStr)
    (let ()
      (let/ec jreturn
        (set-field! f_gameOverStr this _gameOverStr))))
    (define/public (jm_getWinStr_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_winStr this)))))
    (define/public (jm_setWinStr_1 _winStr)
    (let ()
      (let/ec jreturn
        (set-field! f_winStr this _winStr))))))
(define (EndGameInfo.jclassValue) EndGameInfo%)

(define (EndGameInfo.jnew_0)
  (define this (new EndGameInfo% [jclass "EndGameInfo"]))
    (set-field! f_NORMAL_GAME_OVER_WIN this "You Won")
    (set-field! f_TEASER_DEMO_GAME_END_LAST_LEVEL this "End of Demo.")
    (set-field! f_TEASER_DEMO_GAME_END this "Demo Game Over.")
    (set-field! f_gameOverStr this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_winStr this (get-field f_gameOverStr this))
  this)



