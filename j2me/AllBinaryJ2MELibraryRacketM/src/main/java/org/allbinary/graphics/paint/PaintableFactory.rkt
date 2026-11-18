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
(lazy-require ["./NullPaintable.rkt" (NullPaintable.jm_getInstance_0)])
(provide (all-defined-out))

(define PaintableFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullPaintable.jm_getInstance_0)))))))
(define (PaintableFactory.jclassValue) PaintableFactory%)

(define (PaintableFactory.jnew_0)
  (define this (new PaintableFactory% [jclass "PaintableFactory"]))
  this)



