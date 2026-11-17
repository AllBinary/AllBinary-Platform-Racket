#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
;; package org.allbinary.time

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/System.rkt"
  "../../../java/lang/Long.rkt")
(provide (all-defined-out))

(define GameTickTimeDelayHelper%
  (class JObject%
    (super-new)
    (field [f_timeDelta 0])
    (field [f_startTime 0])
    (field [f_lastStartTime 0])
    (define/public (jm_setStartTime_0)
    (let ()
      (let/ec jreturn
        (set-field! f_startTime this (JR.currentTimeMillis))
        (jreturn (get-field f_startTime this)))))
    (define/public (jm_loop_0)
    (let ()
      (let/ec jreturn
        (if (= (get-field f_lastStartTime this) (Long.jstatic_MIN_VALUE))
            (begin
            (set-field! f_timeDelta this 0))
            (begin
            (set-field! f_timeDelta this (JR.i64 (- (JR.currentTimeMillis) (get-field f_lastStartTime this)))))))))
    (define/public (jm_getTimeFromStart_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i64 (- (get-field f_startTime this) (get-field f_lastStartTime this)))))))))

(define (GameTickTimeDelayHelper.jnew_1 _startTime)
  (define this (new GameTickTimeDelayHelper% [jclass "GameTickTimeDelayHelper"]))
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_startTime this _startTime)
        (set-field! f_lastStartTime this 0)))
  this)



