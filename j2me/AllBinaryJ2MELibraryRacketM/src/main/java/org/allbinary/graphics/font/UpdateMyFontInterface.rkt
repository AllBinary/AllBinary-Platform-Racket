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
;; package org.allbinary.graphics.font

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define UpdateMyFontInterface%
  (class JObject%
    (super-new)
    (define/public (jm_updateMeasurement_1 _graphics)
      (raise (JR.newException "AbstractMethodError" "updateMeasurement")))))
(define (UpdateMyFontInterface.jclassValue) UpdateMyFontInterface%)

(define (UpdateMyFontInterface.jnew_0)
  (define this (new UpdateMyFontInterface% [jclass "UpdateMyFontInterface"]))
  this)



