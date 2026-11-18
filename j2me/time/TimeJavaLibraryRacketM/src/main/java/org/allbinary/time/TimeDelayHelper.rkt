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
;; package org.allbinary.time

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/System.rkt"
  "../../../java/lang/Long.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(provide (all-defined-out))

(define TimeDelayHelper%
  (class JObject%
    (super-new)
    (field [f_startTime 0])
    (field [f_elapsedTimeAtPause 0])
    (field [f_delay 0])
    (define/public (jm_isTimeTNT_0)
    (let ([_currentTime JR.null])
      (let/ec jreturn
        (set! _currentTime (JR.currentTimeMillis))
        (when (> (JR.i64 (- _currentTime (get-field f_startTime this))) (get-field f_delay this))
            (begin
            (set-field! f_startTime this _currentTime)
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_isTimeSinceTNT_1 _delay)
    (let ([_currentTime JR.null])
      (let/ec jreturn
        (set! _currentTime (JR.currentTimeMillis))
        (when (> (JR.i64 (- _currentTime (get-field f_startTime this))) _delay)
            (begin
            (set-field! f_startTime this _currentTime)
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_isTime_1 _currentTime)
    (let ()
      (let/ec jreturn
        (when (> (JR.i64 (- _currentTime (get-field f_startTime this))) (get-field f_delay this))
            (begin
            (set-field! f_startTime this _currentTime)
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_isTimeWithoutReset_1 _currentTime)
    (let ()
      (let/ec jreturn
        (when (> (JR.i64 (- _currentTime (get-field f_startTime this))) (get-field f_delay this))
            (begin
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_isTimeSince_2 _delay _currentTime)
    (let ()
      (let/ec jreturn
        (when (> (JR.i64 (- _currentTime (get-field f_startTime this))) (get-field f_delay this))
            (begin
            (set-field! f_startTime this _currentTime)
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_getElapsedTNT_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i64 (- (JR.currentTimeMillis) (get-field f_startTime this)))))))
    (define/public (jm_getElapsed_1 _currentTime)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i64 (- _currentTime (get-field f_startTime this)))))))
    (define/public (jm_isElapsed_2 _currentTime _time)
    (let ()
      (let/ec jreturn
        (if (> (send this jm_getElapsed_1 _currentTime) _time)
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_isElapsedTNT_1 _time)
    (let ()
      (let/ec jreturn
        (if (> (send this jm_getElapsedTNT_0) _time)
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_setStartTime_1 _startTime)
    (let ()
      (let/ec jreturn
        (set-field! f_startTime this _startTime))))
    (define/public (jm_getStartTime_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_startTime this)))))
    (define/public (jm_setStartTimeTNT_0)
    (let ()
      (let/ec jreturn
        (set-field! f_startTime this (JR.currentTimeMillis)))))
    (define/public (jm_pause_0)
    (let ()
      (let/ec jreturn
        (set-field! f_elapsedTimeAtPause this (send this jm_getElapsedTNT_0))
        (set-field! f_startTime this (Long.jstatic_MAX_VALUE)))))
    (define/public (jm_resume_0)
    (let ()
      (let/ec jreturn
        (when (not (= (get-field f_elapsedTimeAtPause this) (Long.jstatic_MIN_VALUE)))
            (begin
            (set-field! f_startTime this (JR.i64 (+ (JR.currentTimeMillis) (get-field f_elapsedTimeAtPause this))))
            (set-field! f_elapsedTimeAtPause this (Long.jstatic_MIN_VALUE))
            (send this jm_setStartTimeTNT_0)
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_toStringAt_1 _currentTime)
    (let ([_elapsed JR.null][_commonLabels JR.null][_elapsedAsString JR.null])
      (let/ec jreturn
        (set! _elapsed (send this jm_getElapsed_1 _currentTime))
        (if (> _elapsed 0)
            (begin
            (set! _commonLabels (CommonLabels.jm_getInstance_0))
            (set! _elapsedAsString (JR.str _elapsed))
            (jreturn (send (send (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_START _commonLabels)) jm_appendlong_1 (get-field f_startTime this)) jm_append_1 (get-field f_CURRENT _commonLabels)) jm_appendlong_1 _currentTime) jm_append_1 (get-field f_ELAPSED _commonLabels)) jm_append_1 _elapsedAsString) jm_toString_0)))
            (begin
            (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))))
    (define/override (jm_toString_0)
    (let ([_currentTime JR.null][_elapsed JR.null][_commonLabels JR.null][_elapsedAsString JR.null])
      (let/ec jreturn
        (set! _currentTime (JR.currentTimeMillis))
        (set! _elapsed (send this jm_getElapsed_1 _currentTime))
        (if (> _elapsed 0)
            (begin
            (set! _commonLabels (CommonLabels.jm_getInstance_0))
            (set! _elapsedAsString (JR.str _elapsed))
            (jreturn (send (send (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_START _commonLabels)) jm_appendlong_1 (get-field f_startTime this)) jm_append_1 (get-field f_CURRENT _commonLabels)) jm_appendlong_1 _currentTime) jm_append_1 (get-field f_ELAPSED _commonLabels)) jm_append_1 _elapsedAsString) jm_toString_0)))
            (begin
            (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))))))
(define (TimeDelayHelper.jclassValue) TimeDelayHelper%)

(define (TimeDelayHelper.jnew_1 _delay)
  (define this (new TimeDelayHelper% [jclass "TimeDelayHelper"]))
    (set-field! f_startTime this (JR.i32 (- 1)))
    (set-field! f_elapsedTimeAtPause this (Long.jstatic_MIN_VALUE))
    
    (let ()
      (let/ec jreturn
        (set-field! f_delay this _delay)
        (send this jm_setStartTimeTNT_0)))
  this)



