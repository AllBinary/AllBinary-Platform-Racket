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
;; package org.allbinary.graphics

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(lazy-require ["./PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define RelativeRelationship%
  (class JObject%
    (super-new)
    (field [f_typesAllowedList JR.null])
    (field [f_x 0])
    (field [f_y 0])
    (field [f_z 0])
    (define/public (jm_getX_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_x this)))))
    (define/public (jm_getY_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_y this)))))
    (define/public (jm_getZ_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_z this)))))
    (define/public (jm_getTypesAllowedList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_typesAllowedList this)))))
    (define/public (jm_setTypesAllowedList_1 _typesAllowedList)
    (let ()
      (let/ec jreturn
        (set-field! f_typesAllowedList this _typesAllowedList))))))
(define (RelativeRelationship.jclassValue) RelativeRelationship%)

(define RelativeRelationship.jcell_NULL_RELATIVE_RELATIONSHIP 'jnone)
(define (RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP)
  (when (eq? RelativeRelationship.jcell_NULL_RELATIVE_RELATIONSHIP 'jnone) (set! RelativeRelationship.jcell_NULL_RELATIVE_RELATIONSHIP (RelativeRelationship.jnew_2 (get-field f_ZERO_ZERO (PointFactory.jm_getInstance_0)) (send (BasicArrayListUtil.jm_getInstance_0) jm_getImmutableInstance_0))))
  RelativeRelationship.jcell_NULL_RELATIVE_RELATIONSHIP)
(define (RelativeRelationship.jsetstatic_NULL_RELATIVE_RELATIONSHIP value) (set! RelativeRelationship.jcell_NULL_RELATIVE_RELATIONSHIP value))

(define (RelativeRelationship.jnew_2 _point _typesAllowedList)
  (define this (new RelativeRelationship% [jclass "RelativeRelationship"]))
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_x this (send _point jm_getX_0))
        (set-field! f_y this (send _point jm_getY_0))
        (set-field! f_z this (send _point jm_getZ_0))
        (set-field! f_typesAllowedList this _typesAllowedList)))
  this)



