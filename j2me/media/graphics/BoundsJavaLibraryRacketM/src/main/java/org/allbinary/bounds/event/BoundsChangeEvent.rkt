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
;; package org.allbinary.bounds.event

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/AllBinaryEventObject.rkt")
(provide (all-defined-out))

(define BoundsChangeEvent%
  (class AllBinaryEventObject%
    (super-new)
    (define/public (jm_getRectangle_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getSource_0)))))))
(define (BoundsChangeEvent.jclassValue) BoundsChangeEvent%)

(define (BoundsChangeEvent.jnew_1 _rectangle)
  (define this (new BoundsChangeEvent% [jclass "BoundsChangeEvent"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



