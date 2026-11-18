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
;; package org.allbinary.media.audio

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define TimeBaseInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getTimeBase_0)
      (raise (JR.newException "AbstractMethodError" "getTimeBase")))
    (define/public (jm_setTimeBase_1 _timeBase)
      (raise (JR.newException "AbstractMethodError" "setTimeBase")))))
(define (TimeBaseInterface.jclassValue) TimeBaseInterface%)

(define (TimeBaseInterface.jnew_0)
  (define this (new TimeBaseInterface% [jclass "TimeBaseInterface"]))
  this)



