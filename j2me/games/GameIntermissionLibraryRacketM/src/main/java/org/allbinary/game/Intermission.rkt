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
  "../../../allbinary_java.rkt"
  "./IntermissionInterface.rkt")
(lazy-require ["../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(lazy-require ["./NullIntermissionEnableListener.rkt" (NullIntermissionEnableListener.jm_getInstance_0)])
(provide (all-defined-out))

(define Intermission%
  (class JObject%
    (super-new)
    (field [f_enabled #f])
    (field [f_timeElapsedHelper JR.null])
    (field [f_intermissionEnableListener JR.null])
    (define/public (jm_setListener_1 _enableListener)
    (let ()
      (let/ec jreturn
        (set-field! f_intermissionEnableListener this _enableListener))))
    (define/public (jm_getTimeDelayHelper_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_timeElapsedHelper this)))))
    (define/public (jm_setEnabled_1 _enabled)
    (let ()
      (let/ec jreturn
        (set-field! f_enabled this _enabled)
        (when (send this jm_isEnabled_0)
            (begin
            (send (send this jm_getTimeDelayHelper_0) jm_setStartTimeTNT_0)))
        (send (get-field f_intermissionEnableListener this) jm_notifyIntermission_1 _enabled))))
    (define/public (jm_isEnabled_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_enabled this)))))))
(define (Intermission.jclassValue) Intermission%)

(define (Intermission.jnew_0)
  (define this (new Intermission% [jclass "Intermission"]))
    
    (set-field! f_timeElapsedHelper this (TimeDelayHelper.jnew_1 0))
    (set-field! f_intermissionEnableListener this (NullIntermissionEnableListener.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)



