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
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/paint/Paintable.rkt" (Paintable.jnew_0)])
(provide (all-defined-out))

(define TouchButtonsPaintableFactory%
  (class JObject%
    (super-new)))
(define (TouchButtonsPaintableFactory.jclassValue) TouchButtonsPaintableFactory%)

(define (TouchButtonsPaintableFactory.jnew_0)
  (define this (new TouchButtonsPaintableFactory% [jclass "TouchButtonsPaintableFactory"]))
  this)

(define (TouchButtonsPaintableFactory.jm_getInstance_1 _basicColor)
    (let ()
      (let/ec jreturn
        (jreturn (Paintable.jnew_0)))))



