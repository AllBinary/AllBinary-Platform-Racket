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
;; package org.allbinary.business.advertisement

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define GameAdStateFactoryInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getInstanceForApp_1 _softwareInformation)
      (raise (JR.newException "AbstractMethodError" "getInstanceForApp")))))
(define (GameAdStateFactoryInterface.jclassValue) GameAdStateFactoryInterface%)

(define (GameAdStateFactoryInterface.jnew_0)
  (define this (new GameAdStateFactoryInterface% [jclass "GameAdStateFactoryInterface"]))
  this)



