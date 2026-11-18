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
;; package org.allbinary.layer.relationship

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./RelativeLayerRelationship.rkt")
(lazy-require ["../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define MiddleRelativeLayerRelationship%
  (class RelativeLayerRelationship%
    (super-new)))
(define (MiddleRelativeLayerRelationship.jclassValue) MiddleRelativeLayerRelationship%)

(define (MiddleRelativeLayerRelationship.jnew_1 _layer)
  (define this (new MiddleRelativeLayerRelationship% [jclass "MiddleRelativeLayerRelationship"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



