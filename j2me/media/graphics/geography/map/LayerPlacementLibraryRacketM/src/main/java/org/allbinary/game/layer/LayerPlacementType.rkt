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
;; package org.allbinary.game.layer

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define LayerPlacementType%
  (class JObject%
    (super-new)
    (field [f_type 0])
    (define/public (jm_getType_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_type this)))))
    (define/public (jm_setType_1 _type)
    (let ()
      (let/ec jreturn
        (set-field! f_type this _type))))))
(define (LayerPlacementType.jclassValue) LayerPlacementType%)

(define (LayerPlacementType.jnew_1 _type)
  (define this (new LayerPlacementType% [jclass "LayerPlacementType"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_type this _type)))
  this)



