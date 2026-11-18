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
;; package org.allbinary.game.ag.layer.hud.basic.notification

(require racket/class racket/lazy-require
  "../../../../../../../../allbinary_java.rkt"
  "./GameNotificationHud.rkt")
(lazy-require ["../../../../../../../../org/allbinary/game/graphics/hud/BasicHudFactory.rkt" (BasicHudFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define NoGameGameNotificationHud%
  (class GameNotificationHud%
    (super-new)))
(define (NoGameGameNotificationHud.jclassValue) NoGameGameNotificationHud%)

(define (NoGameGameNotificationHud.jnew_0)
  (define this (new NoGameGameNotificationHud% [jclass "NoGameGameNotificationHud"]))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_updateMaxWidth this 40)
        (set-field! f_updateMaxHeight this 14)))
  this)



