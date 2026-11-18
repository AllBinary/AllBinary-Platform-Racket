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
  "../../../java/util/Date.rkt")
(provide (all-defined-out))

;ActualPlatform
(define TimeStampUtil%
  (class JObject%
    (super-new)
    (define/public (jm_getAsString_0)
    (let ([_calendar JR.null][_date JR.null])
      (let/ec jreturn
        (set! _calendar (Calendar.jm_getInstance_0))
        (set! _date (send _calendar jm_getTime_0))
        (jreturn (send _date jm_toString_0)))))))
(define (TimeStampUtil.jclassValue) TimeStampUtil%)

(define TimeStampUtil.jcell_instance 'jnone)
(define (TimeStampUtil.jstatic_instance)
  (when (eq? TimeStampUtil.jcell_instance 'jnone) (set! TimeStampUtil.jcell_instance (TimeStampUtil.jnew_0)))
  TimeStampUtil.jcell_instance)
(define (TimeStampUtil.jsetstatic_instance value) (set! TimeStampUtil.jcell_instance value))

(define (TimeStampUtil.jnew_0)
  (define this (new TimeStampUtil% [jclass "TimeStampUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (TimeStampUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TimeStampUtil.jstatic_instance)))))



