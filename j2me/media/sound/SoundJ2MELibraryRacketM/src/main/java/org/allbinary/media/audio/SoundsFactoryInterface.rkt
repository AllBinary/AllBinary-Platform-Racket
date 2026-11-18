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
;; package org.allbinary.media.audio

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define SoundsFactoryInterface%
  (class JObject%
    (super-new)
    (define/public (jm_init_0)
      (raise (JR.newException "AbstractMethodError" "init")))
    (define/public (jm_getSoundInterfaceArray_0)
      (raise (JR.newException "AbstractMethodError" "getSoundInterfaceArray")))
    (define/public (jm_setInitialized_1 _initialized)
      (raise (JR.newException "AbstractMethodError" "setInitialized")))
    (define/public (jm_isInitialized_0)
      (raise (JR.newException "AbstractMethodError" "isInitialized")))))
(define (SoundsFactoryInterface.jclassValue) SoundsFactoryInterface%)

(define (SoundsFactoryInterface.jnew_0)
  (define this (new SoundsFactoryInterface% [jclass "SoundsFactoryInterface"]))
  this)



