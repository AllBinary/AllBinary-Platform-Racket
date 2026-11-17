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
;; package org.allbinary.logic.communication.log

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_putOE_4)])
(provide (all-defined-out))

(define ForcedLogUtil%
  (class JObject%
    (super-new)))

(define (ForcedLogUtil.jnew_0)
  (define this (new ForcedLogUtil% [jclass "ForcedLogUtil"]))
  this)

(define (ForcedLogUtil.jm_log_2 _message _anyType)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (PreLogUtil.jm_putOE_4 (get-field f_EXCEPTION (CommonStrings.jm_getInstance_0)) _anyType "log" _e))])
            (raise (JR.newException "Exception" _message))))))



