#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary.game.ag.layer.hud.basic

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../../org/allbinary/game/graphics/hud/BasicHudFactory.rkt" (BasicHudFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./NumberStringHud.rkt" (NumberStringHud.jnew_6)])
(provide (all-defined-out))

(define NumberStringHudFactory%
  (class JObject%
    (super-new)
    (field [f_NULL_NUMBER_STRING_HUD JR.null])
    (define/public (jm_createHud_0)
    (let ([_logUtil JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _logUtil (LogUtil.jm_getInstance_0))
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send _logUtil jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_CONSTRUCTOR _commonStrings) _e)
            (raise (JR.newException "RuntimeException")))])
            (jreturn (NumberStringHud.jnew_6 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) 9 (get-field f_ABSOLUTE (BasicHudFactory.jm_getInstance_0)) 1 0 (get-field f_NULL_COLOR (BasicColorFactory.jm_getInstance_0))))))))))
(define (NumberStringHudFactory.jclassValue) NumberStringHudFactory%)

(define NumberStringHudFactory.jcell_instance 'jnone)
(define (NumberStringHudFactory.jstatic_instance)
  (when (eq? NumberStringHudFactory.jcell_instance 'jnone) (set! NumberStringHudFactory.jcell_instance (NullUtil.jm_getInstance_0)))
  NumberStringHudFactory.jcell_instance)
(define (NumberStringHudFactory.jsetstatic_instance value) (set! NumberStringHudFactory.jcell_instance value))

(define (NumberStringHudFactory.jnew_0)
  (define this (new NumberStringHudFactory% [jclass "NumberStringHudFactory"]))
    (set-field! f_NULL_NUMBER_STRING_HUD this (send this jm_createHud_0))
  this)

(define (NumberStringHudFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (NumberStringHudFactory.jstatic_instance) (NullUtil.jm_getInstance_0))
            (begin
            (set! NumberStringHudFactory.jcell_instance (NumberStringHudFactory.jnew_0))))
        (jreturn (NumberStringHudFactory.jstatic_instance)))))



