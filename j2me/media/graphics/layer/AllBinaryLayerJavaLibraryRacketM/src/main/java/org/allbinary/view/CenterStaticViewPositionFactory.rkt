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
;; package org.allbinary.view

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["./StaticViewPosition.rkt" (StaticViewPosition.jnew_3)])
(provide (all-defined-out))

(define CenterStaticViewPositionFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_1 _z)
    (let ([_displayInfoSingleton JR.null])
      (let/ec jreturn
        (set! _displayInfoSingleton (DisplayInfoSingleton.jm_getInstance_0))
        (jreturn (StaticViewPosition.jnew_3 (arithmetic-shift (send _displayInfoSingleton jm_getLastWidth_0) (- (bitwise-and 1 31))) (arithmetic-shift (send _displayInfoSingleton jm_getLastHeight_0) (- (bitwise-and 1 31))) _z)))))))
(define (CenterStaticViewPositionFactory.jclassValue) CenterStaticViewPositionFactory%)

(define (CenterStaticViewPositionFactory.jnew_0)
  (define this (new CenterStaticViewPositionFactory% [jclass "CenterStaticViewPositionFactory"]))
    (let ()
      (let/ec jreturn (void)))
  this)



