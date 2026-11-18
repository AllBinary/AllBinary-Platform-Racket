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
(lazy-require ["../../../../../org/allbinary/graphics/paint/ProcessPaintable.rkt" (ProcessPaintable.jnew_0)])
(provide (all-defined-out))

(define TouchButtonsPaintableCompositeFactory%
  (class JObject%
    (super-new)))
(define (TouchButtonsPaintableCompositeFactory.jclassValue) TouchButtonsPaintableCompositeFactory%)

(define (TouchButtonsPaintableCompositeFactory.jnew_0)
  (define this (new TouchButtonsPaintableCompositeFactory% [jclass "TouchButtonsPaintableCompositeFactory"]))
  this)

(define (TouchButtonsPaintableCompositeFactory.jm_getInstance_2 _inputMappingInterface _basicColor)
    (let ()
      (let/ec jreturn
        (jreturn (ProcessPaintable.jnew_0)))))



