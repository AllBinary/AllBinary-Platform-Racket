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
;; package org.allbinary.animation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/game/resource/FeaturedResourceFactory.rkt")
(lazy-require ["../../../org/allbinary/game/configuration/GameConfigurationCentral.rkt" (GameConfigurationCentral.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/graphics/Rectangle.rkt" (Rectangle.jnew_3)])
(lazy-require ["../../../org/allbinary/graphics/RectangleFactory.rkt" (RectangleFactory.jstatic_SINGLETON)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./NullAnimationFactory.rkt" (NullAnimationFactory.jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY)])
(provide (all-defined-out))

(define FeaturedAnimationInterfaceFactoryInterfaceFactory%
  (class FeaturedResourceFactory%
    (super-new)
    (define/public (jm_getRectangle_1 _resource)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getRectangleXY_3 _resource 0 0)))))
    (define/public (jm_getRectangleXY_3 _resource _x _y)
    (let ([_pointFactory JR.null][_list JR.null][_scale JR.null][_size JR.null][_featureInterface JR.null][_rectangle JR.null][_index JR.null])
      (let/ec jreturn
        (set! _pointFactory (PointFactory.jm_getInstance_0))
        (set! _list (send this jm_getList_0))
        (set! _scale (JR.className (JR.className (get-field f_SCALE (GameConfigurationCentral.jm_getInstance_0)))))
        (set! _size (JR.className (send this jm_getList_0)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _featureInterface (vector-ref (get-field f_objectArray _list) _index))
            (when (send _featureInterface jm_isFeature_0)
                (begin
                (set! _rectangle (send _featureInterface jm_getRectangle_1 _resource))
                (when (not (eq? _rectangle (RectangleFactory.jstatic_SINGLETON)))
                    (begin
                    (jreturn (Rectangle.jnew_3 (send _pointFactory jm_createXY_2 _x _y) (arithmetic-shift (JR.i32 (* (send _rectangle jm_getWidth_0) _scale)) (- (bitwise-and 1 31))) (arithmetic-shift (JR.i32 (* (send _rectangle jm_getHeight_0) _scale)) (- (bitwise-and 1 31))))))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (raise (JR.newException "Exception" (send (send (send (StringMaker.jnew_0) jm_append_1 "No rectangle available for current feature selection or Resource: ") jm_append_1 _resource) jm_toString_0))))))
    (define/public (jm_getProcedural_1 _resource)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getBasicAnimationInterfaceFactoryInstance_1 _resource)))))
    (define/public (jm_get_1 _resource)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getBasicAnimationInterfaceFactoryInstance_1 _resource)))))
    (define/public (jm_getBasicAnimationInterfaceFactoryInstance_1 _resource)
    (let ([_list JR.null][_resourceTypeAvailableList JR.null][_size JR.null][_featureInterface JR.null][_animationInterfaceFactoryInterface JR.null][_index JR.null][_stringBuffer JR.null][_result JR.null][_NO_ANIMATION_AVAILABLE_FROM JR.null][_FOR_FACTORIES JR.null][_FOR_RESOURCE JR.null][_HAS_KEY JR.null][_RESOURCES_LABEL JR.null][_size2 JR.null])
      (let/ec jreturn
        (set! _list (send this jm_getList_0))
        (set! _resourceTypeAvailableList (BasicArrayListD.jnew_0))
        (set! _size (JR.className (send this jm_getList_0)))
        (set! _featureInterface JR.null)
        (set! _animationInterfaceFactoryInterface JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _featureInterface (vector-ref (get-field f_objectArray _list) _index))
            (when (send _featureInterface jm_isFeature_0)
                (begin
                (send _resourceTypeAvailableList jm_add_1 _featureInterface)
                (set! _animationInterfaceFactoryInterface (send _featureInterface jm_getBasicAnimationInterfaceFactoryInstance_1 _resource))
                (when (not (eq? _animationInterfaceFactoryInterface (NullAnimationFactory.jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY)))
                    (begin
                    (jreturn _animationInterfaceFactoryInterface))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (if (> (send _resourceTypeAvailableList jm_size_0) 0)
            (begin
            (set! _NO_ANIMATION_AVAILABLE_FROM "No animation available from: ")
            (set! _FOR_FACTORIES " factories: ")
            (set! _FOR_RESOURCE " for Resource: ")
            (set! _HAS_KEY " has: ")
            (set! _RESOURCES_LABEL " resources ")
            (set! _stringBuffer (StringMaker.jnew_0))
            (send _stringBuffer jm_append_1 _NO_ANIMATION_AVAILABLE_FROM)
            (send _stringBuffer jm_appendint_1 (send _resourceTypeAvailableList jm_size_0))
            (send _stringBuffer jm_append_1 (get-field f_FORWARD_SLASH (CommonSeps.jm_getInstance_0)))
            (send _stringBuffer jm_appendint_1 _size)
            (send _stringBuffer jm_append_1 _FOR_FACTORIES)
            (set! _size2 (send _resourceTypeAvailableList jm_size_0))
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index _size2)
                    (let/ec jcontinue
                (send _stringBuffer jm_append_1 (JR.toString (send _resourceTypeAvailableList jm_get_1 _index)))
                (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP (CommonSeps.jm_getInstance_0))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop)))))
            (send _stringBuffer jm_append_1 _FOR_RESOURCE)
            (send _stringBuffer jm_append_1 _resource)
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index _size)
                    (let/ec jcontinue
                (send _stringBuffer jm_append_1 (get-field f_NEW_LINE (CommonSeps.jm_getInstance_0)))
                (set! _featureInterface (vector-ref (get-field f_objectArray _list) _index))
                (when (send _featureInterface jm_isFeature_0)
                    (begin
                    (send _stringBuffer jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _featureInterface))
                    (send _stringBuffer jm_append_1 _HAS_KEY)
                    (send _stringBuffer jm_appendint_1 (JR.className (send _featureInterface jm_getHashtable_0)))
                    (send _stringBuffer jm_append_1 _RESOURCES_LABEL))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop)))))
            (raise (JR.newException "Exception" (send _stringBuffer jm_toString_0))))
            (begin
            (set! _stringBuffer (StringMaker.jnew_0))
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index _size)
                    (let/ec jcontinue
                (set! _featureInterface (vector-ref (get-field f_objectArray _list) _index))
                (send _stringBuffer jm_append_1 (send _featureInterface jm_toString_0))
                (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop)))))
            (set! _result (send _stringBuffer jm_toString_0))
            (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
            (raise (JR.newException "Exception" (send (send (send (send (send _stringBuffer jm_append_1 "No feature resource type available for Resource: ") jm_append_1 _resource) jm_append_1 " Resource Factories Available: ") jm_append_1 _result) jm_toString_0))))))))))
(define (FeaturedAnimationInterfaceFactoryInterfaceFactory.jclassValue) FeaturedAnimationInterfaceFactoryInterfaceFactory%)

(define FeaturedAnimationInterfaceFactoryInterfaceFactory.jcell_INSTANCE 'jnone)
(define (FeaturedAnimationInterfaceFactoryInterfaceFactory.jstatic_INSTANCE)
  (when (eq? FeaturedAnimationInterfaceFactoryInterfaceFactory.jcell_INSTANCE 'jnone) (set! FeaturedAnimationInterfaceFactoryInterfaceFactory.jcell_INSTANCE (FeaturedAnimationInterfaceFactoryInterfaceFactory.jnew_0)))
  FeaturedAnimationInterfaceFactoryInterfaceFactory.jcell_INSTANCE)
(define (FeaturedAnimationInterfaceFactoryInterfaceFactory.jsetstatic_INSTANCE value) (set! FeaturedAnimationInterfaceFactoryInterfaceFactory.jcell_INSTANCE value))

(define (FeaturedAnimationInterfaceFactoryInterfaceFactory.jnew_0)
  (define this (new FeaturedAnimationInterfaceFactoryInterfaceFactory% [jclass "FeaturedAnimationInterfaceFactoryInterfaceFactory"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (FeaturedAnimationInterfaceFactoryInterfaceFactory.jstatic_INSTANCE)))))



