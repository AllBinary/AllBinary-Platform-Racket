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
  "./TimeDelayHelper.rkt")
(provide (all-defined-out))

(define NoTimeDelayHelper%
  (class TimeDelayHelper%
    (super-new)
    (define/override (jm_isTimeTNT_0)
    (let ()
      (let/ec jreturn
        (jreturn #t))))
    (define/override (jm_isTimeSinceTNT_1 _delay)
    (let ()
      (let/ec jreturn
        (jreturn #t))))
    (define/override (jm_isTime_1 _currentTime)
    (let ()
      (let/ec jreturn
        (jreturn #t))))
    (define/override (jm_isTimeSince_2 _delay _currentTime)
    (let ()
      (let/ec jreturn
        (jreturn #t))))))

(define NoTimeDelayHelper.jcell_SINGLETON 'jnone)
(define (NoTimeDelayHelper.jstatic_SINGLETON)
  (when (eq? NoTimeDelayHelper.jcell_SINGLETON 'jnone) (set! NoTimeDelayHelper.jcell_SINGLETON (NoTimeDelayHelper.jnew_0)))
  NoTimeDelayHelper.jcell_SINGLETON)

(define (NoTimeDelayHelper.jnew_0)
  (define this (new NoTimeDelayHelper% [jclass "NoTimeDelayHelper"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



