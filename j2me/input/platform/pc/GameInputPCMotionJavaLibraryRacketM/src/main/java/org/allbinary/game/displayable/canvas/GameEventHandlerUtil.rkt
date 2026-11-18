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
(lazy-require ["../../../../../org/allbinary/game/input/event/DownGameKeyEventHandler.rkt" (DownGameKeyEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/UpGameKeyEventHandler.rkt" (UpGameKeyEventHandler.jm_getInstance_0)])
(provide (all-defined-out))

(define GameEventHandlerUtil%
  (class JObject%
    (super-new)))
(define (GameEventHandlerUtil.jclassValue) GameEventHandlerUtil%)

(define (GameEventHandlerUtil.jnew_0)
  (define this (new GameEventHandlerUtil% [jclass "GameEventHandlerUtil"]))
  this)

(define (GameEventHandlerUtil.jm_removeAllListeners_0)
    (let ()
      (let/ec jreturn
        (send (UpGameKeyEventHandler.jm_getInstance_0) jm_removeAllListeners_0)
        (send (DownGameKeyEventHandler.jm_getInstance_0) jm_removeAllListeners_0))))



