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
;; package org.allbinary.graphics.displayable

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ScalableListener%
  (class JObject%
    (super-new)
    (define/public (jm_getRatio_1 _ratio)
      (raise (JR.newException "AbstractMethodError" "getRatio")))
    (define/public (jm_getLeft_1 _xOffset)
      (raise (JR.newException "AbstractMethodError" "getLeft")))
    (define/public (jm_getTop_1 _yOffset)
      (raise (JR.newException "AbstractMethodError" "getTop")))
    (define/public (jm_scale_1 _ratio)
      (raise (JR.newException "AbstractMethodError" "scale")))))
(define (ScalableListener.jclassValue) ScalableListener%)

(define (ScalableListener.jnew_0)
  (define this (new ScalableListener% [jclass "ScalableListener"]))
  this)



