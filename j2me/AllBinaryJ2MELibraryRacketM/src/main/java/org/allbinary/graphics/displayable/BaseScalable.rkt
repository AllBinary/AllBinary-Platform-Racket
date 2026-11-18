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
  "../../../../allbinary_java.rkt"
  "./ScalableListener.rkt")
(provide (all-defined-out))

(define BaseScalable%
  (class JObject%
    (super-new)
    (define/public (jm_getRatio_1 _ratio)
    (let ()
      (let/ec jreturn
        (jreturn 1.0))))
    (define/public (jm_getLeft_1 _xOffset)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- 1))))))
    (define/public (jm_getTop_1 _yOffset)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- 1))))))
    (define/public (jm_scale_1 _ratio)
    (let ()
      (let/ec jreturn (void))))))
(define (BaseScalable.jclassValue) BaseScalable%)

(define (BaseScalable.jnew_0)
  (define this (new BaseScalable% [jclass "BaseScalable"]))
  this)



