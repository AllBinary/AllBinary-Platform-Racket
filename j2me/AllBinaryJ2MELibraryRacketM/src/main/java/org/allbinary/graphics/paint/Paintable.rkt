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
  "../../../../allbinary_java.rkt"
  "./PaintableInterface.rkt")
(provide (all-defined-out))

(define Paintable%
  (class JObject%
    (super-new)
    (define/public (jm_setBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn (void))))))
(define (Paintable.jclassValue) Paintable%)

(define (Paintable.jnew_0)
  (define this (new Paintable% [jclass "Paintable"]))
  this)



