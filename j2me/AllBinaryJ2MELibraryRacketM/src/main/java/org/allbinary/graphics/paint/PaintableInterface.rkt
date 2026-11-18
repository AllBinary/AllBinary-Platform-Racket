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
;; package org.allbinary.graphics.paint

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define PaintableInterface%
  (class JObject%
    (super-new)
    (define/public (jm_paint_1 _graphics)
      (raise (JR.newException "AbstractMethodError" "paint")))
    (define/public (jm_paintThreed_1 _graphics)
      (raise (JR.newException "AbstractMethodError" "paintThreed")))))
(define (PaintableInterface.jclassValue) PaintableInterface%)

(define (PaintableInterface.jnew_0)
  (define this (new PaintableInterface% [jclass "PaintableInterface"]))
  this)



