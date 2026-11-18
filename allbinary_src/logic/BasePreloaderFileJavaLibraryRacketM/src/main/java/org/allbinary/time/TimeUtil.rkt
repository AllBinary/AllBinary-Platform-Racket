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
  "../../../java/util/Calendar.rkt"
  "../../../java/lang/Integer.rkt")
(provide (all-defined-out))

(define TimeUtil%
  (class JObject%
    (super-new)
    (define/public (jm_setCalendar_5 _calendar _yearString _monthString _dayString _hourString)
    (let ([_year JR.null][_month JR.null][_day JR.null][_hour JR.null])
      (let/ec jreturn
        (set! _year (send _yearString jm_intValue_0))
        (set! _month (send _monthString jm_intValue_0))
        (set! _day (send _dayString jm_intValue_0))
        (set! _hour (send _hourString jm_intValue_0))
        (send _calendar jm_set_5 _year _month _day _hour 0))))
    (define/public (jm_setCalendarWithTime_7 _calendar _yearString _monthString _dayString _hourString _minuteString _secondString)
    (let ([_year JR.null][_month JR.null][_day JR.null][_hour JR.null][_minute JR.null][_second JR.null])
      (let/ec jreturn
        (set! _year (send _yearString jm_intValue_0))
        (set! _month (send _monthString jm_intValue_0))
        (set! _day (send _dayString jm_intValue_0))
        (set! _hour (send _hourString jm_intValue_0))
        (set! _minute (send _minuteString jm_intValue_0))
        (set! _second (send _secondString jm_intValue_0))
        (send _calendar jm_set_6 _year _month _day _hour _minute _second))))
    (define/public (jm_setExpirationCalendar_7 _calendar _yearsString _monthsString _daysString _hoursString _minutesString _secondsString)
    (let ([_year JR.null][_month JR.null][_day JR.null][_hour JR.null][_minute JR.null][_second JR.null])
      (let/ec jreturn
        (set! _year (JR.i32 (+ (send _calendar jm_get_1 (Calendar.jstatic_YEAR)) (send _yearsString jm_intValue_0))))
        (set! _month (JR.i32 (+ (send _calendar jm_get_1 (Calendar.jstatic_MONTH)) (send _monthsString jm_intValue_0))))
        (set! _day (JR.i32 (+ (send _calendar jm_get_1 (Calendar.jstatic_DAY_OF_MONTH)) (send _daysString jm_intValue_0))))
        (set! _hour (JR.i32 (+ (send _calendar jm_get_1 (Calendar.jstatic_HOUR)) (send _hoursString jm_intValue_0))))
        (set! _minute (JR.i32 (+ (send _calendar jm_get_1 (Calendar.jstatic_MINUTE)) (send _minutesString jm_intValue_0))))
        (set! _second (JR.i32 (+ (send _calendar jm_get_1 (Calendar.jstatic_SECOND)) (send _secondsString jm_intValue_0))))
        (send _calendar jm_set_6 _year _month _day _hour _minute _second))))
    (define/public (jm_getTotalTime_6 _yearString _monthString _dayString _hourString _minuteString _secondString)
    (let ([_time JR.null][_timeDelta JR.null])
      (let/ec jreturn
        (set! _time (JR.className (TimeUtil.jstatic_calendar)))
        (send this jm_setExpirationCalendar_7 (TimeUtil.jstatic_calendar) _yearString _monthString _dayString _hourString _minuteString _secondString)
        (set! _timeDelta (JR.className (TimeUtil.jstatic_calendar)))
        (jreturn (JR.i64 (- _timeDelta _time))))))))
(define (TimeUtil.jclassValue) TimeUtil%)

(define TimeUtil.jcell_instance 'jnone)
(define (TimeUtil.jstatic_instance)
  (when (eq? TimeUtil.jcell_instance 'jnone) (set! TimeUtil.jcell_instance (TimeUtil.jnew_0)))
  TimeUtil.jcell_instance)
(define (TimeUtil.jsetstatic_instance value) (set! TimeUtil.jcell_instance value))

(define TimeUtil.jcell_calendar 'jnone)
(define (TimeUtil.jstatic_calendar)
  (when (eq? TimeUtil.jcell_calendar 'jnone) (set! TimeUtil.jcell_calendar (Calendar.jm_getInstance_0)))
  TimeUtil.jcell_calendar)
(define (TimeUtil.jsetstatic_calendar value) (set! TimeUtil.jcell_calendar value))

(define (TimeUtil.jnew_0)
  (define this (new TimeUtil% [jclass "TimeUtil"]))
  this)

(define (TimeUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TimeUtil.jstatic_instance)))))



