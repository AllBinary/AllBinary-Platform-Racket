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
  "../../../../org/allbinary/graphics/RelativeRelationship.rkt")
(lazy-require ["../../../../org/allbinary/layer/AllBinaryLayer.rkt" (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER)])
(provide (all-defined-out))

(define RelativeLayerRelationship%
  (class RelativeRelationship%
    (super-new)
    (field [f_layer JR.null])
    (define/override (jm_getX_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (+ (send (get-field f_layer this) jm_getXP_0) (super jm_getX_0)))))))
    (define/override (jm_getY_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (+ (send (get-field f_layer this) jm_getYP_0) (super jm_getY_0)))))))
    (define/override (jm_getZ_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (+ (send (get-field f_layer this) jm_getZP_0) (super jm_getZ_0)))))))))
(define (RelativeLayerRelationship.jclassValue) RelativeLayerRelationship%)

(define (RelativeLayerRelationship.jnew_3 _layer _point _typesAllowedList)
  (define this (new RelativeLayerRelationship% [jclass "RelativeLayerRelationship"]))
    (set-field! f_layer this (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_layer this _layer)))
  this)



