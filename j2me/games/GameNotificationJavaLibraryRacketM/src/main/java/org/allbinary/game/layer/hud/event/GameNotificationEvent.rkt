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
;; package org.allbinary.game.layer.hud.event

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject.rkt"
  "../../../../../../java/lang/Integer.rkt"
  "../../../../../../java/lang/Boolean.rkt")
(lazy-require ["../../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define GameNotificationEvent%
  (class AllBinaryEventObject%
    (super-new)
    (field [f_string JR.null])
    (field [f_seconds JR.null])
    (field [f_basicColor JR.null])
    (field [f_removeable JR.null])
    (define/public (jm_getString_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_string this)))))
    (define/public (jm_getSeconds_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_seconds this)))))
    (define/public (jm_getBasicColorP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_basicColor this)))))
    (define/public (jm_getPermanent_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_removeable this)))))
    (define/public (jm_setString_1 _string)
    (let ()
      (let/ec jreturn
        (set-field! f_string this _string))))
    (define/public (jm_setBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn
        (set-field! f_basicColor this _basicColor))))))
(define (GameNotificationEvent.jclassValue) GameNotificationEvent%)

(define (GameNotificationEvent.jnew_5 _anyType _string _seconds _basicColor _permanent)
  (define this (new GameNotificationEvent% [jclass "GameNotificationEvent"]))
    (set-field! f_string this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    
    (set-field! f_basicColor this (get-field f_BLACK (BasicColorFactory.jm_getInstance_0)))
    
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_setString_1 _string)
        (set-field! f_seconds this _seconds)
        (send this jm_setBasicColorP_1 _basicColor)
        (set-field! f_removeable this _permanent)))
  this)



