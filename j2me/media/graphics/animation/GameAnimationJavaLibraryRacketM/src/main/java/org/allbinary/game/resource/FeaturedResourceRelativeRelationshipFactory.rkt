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
;; package org.allbinary.game.resource

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./FeaturedResourceFactory.rkt")
(lazy-require ["../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/layer/relationship/RelativeLayerRelationship.rkt" (RelativeLayerRelationship.jnew_3)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define FeaturedResourceRelativeRelationshipFactory%
  (class FeaturedResourceFactory%
    (super-new)
    (field [f_basicArrayListUtil JR.null])
    (define/public (jm_getRelativeRelationshipList_2 _resource _layer)
    (let ([_featureReleaseList JR.null][_size JR.null][_featureInterface JR.null][_list JR.null][_index JR.null])
      (let/ec jreturn
        (set! _featureReleaseList (send this jm_getList_0))
        (set! _size (JR.className (send this jm_getList_0)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _featureInterface (vector-ref (get-field f_objectArray _featureReleaseList) _index))
            (when (send _featureInterface jm_isFeature_0)
                (begin
                (set! _list (send _featureInterface jm_getResourceRelativeRelationshipList_1 _resource))
                (when (not (eq? _list (send (get-field f_basicArrayListUtil this) jm_getImmutableInstance_0)))
                    (begin
                    (jreturn (send this jm_duplicate_2 _list _layer)))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (raise (JR.newException "Exception" (send (send (send (StringMaker.jnew_0) jm_append_1 "Not available for current feature selection or Resource: ") jm_append_1 _resource) jm_toString_0))))))
    (define/public (jm_duplicate_2 _list _layer)
    (let ([_pointFactory JR.null][_newList JR.null][_size JR.null][_relativeRelationship JR.null][_index JR.null])
      (let/ec jreturn
        (set! _pointFactory (PointFactory.jm_getInstance_0))
        (set! _newList (BasicArrayListD.jnew_0))
        (set! _size (send _list jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _relativeRelationship (vector-ref (get-field f_objectArray _list) _index))
            (send _newList jm_add_1 (RelativeLayerRelationship.jnew_3 _layer (send _pointFactory jm_createXY_2 (send _relativeRelationship jm_getX_0) (send _relativeRelationship jm_getY_0)) (send (BasicArrayListUtil.jm_getInstance_0) jm_getImmutableInstance_0))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _newList))))))
(define (FeaturedResourceRelativeRelationshipFactory.jclassValue) FeaturedResourceRelativeRelationshipFactory%)

(define FeaturedResourceRelativeRelationshipFactory.jcell_INSTANCE 'jnone)
(define (FeaturedResourceRelativeRelationshipFactory.jstatic_INSTANCE)
  (when (eq? FeaturedResourceRelativeRelationshipFactory.jcell_INSTANCE 'jnone) (set! FeaturedResourceRelativeRelationshipFactory.jcell_INSTANCE (FeaturedResourceRelativeRelationshipFactory.jnew_0)))
  FeaturedResourceRelativeRelationshipFactory.jcell_INSTANCE)
(define (FeaturedResourceRelativeRelationshipFactory.jsetstatic_INSTANCE value) (set! FeaturedResourceRelativeRelationshipFactory.jcell_INSTANCE value))

(define (FeaturedResourceRelativeRelationshipFactory.jnew_0)
  (define this (new FeaturedResourceRelativeRelationshipFactory% [jclass "FeaturedResourceRelativeRelationshipFactory"]))
    (set-field! f_basicArrayListUtil this (BasicArrayListUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (FeaturedResourceRelativeRelationshipFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (FeaturedResourceRelativeRelationshipFactory.jstatic_INSTANCE)))))



