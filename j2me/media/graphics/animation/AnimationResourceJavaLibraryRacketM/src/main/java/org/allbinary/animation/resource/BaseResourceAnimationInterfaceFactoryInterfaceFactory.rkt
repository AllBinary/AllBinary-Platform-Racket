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
;; package org.allbinary.animation.resource

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./FeatureResourceAnimationInterfaceFactoryInterface.rkt")
(lazy-require ["../../../../org/allbinary/animation/NullAnimationFactory.rkt" (NullAnimationFactory.jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY)])
(lazy-require ["../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory.rkt" (ResourceLoadingLevelFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/RectangleFactory.rkt" (RectangleFactory.jstatic_SINGLETON RectangleFactory.jstatic_ARRAY_OF_ARRAYS)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define BaseResourceAnimationInterfaceFactoryInterfaceFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_hashtable JR.null])
    (field [f_rectangleHashtable JR.null])
    (field [f_rectangleArrayOfArraysHashtable JR.null])
    (field [f_name JR.null])
    (field [f_initialized #f])
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))
    (define/public (jm_init_1 _level)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Available List of Animations: ") jm_append_1 (send (get-field f_hashtable this) jm_toString_0)) jm_toString_0) this (get-field f_INIT _commonStrings))
        (send this jm_setInitialized_1 #t))))
    (define/public (jm_initImageCache_2 _imageCache _level)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_add_2 _resource _animationInterfaceFactoryInterface)
    (let ()
      (let/ec jreturn
        (when (send (get-field f_hashtable this) jm_containsKey_1 _resource)
            (begin
            (raise (JR.newException "Exception" (send (send (send (StringMaker.jnew_0) jm_append_1 "Resource Already Created: ") jm_append_1 _resource) jm_toString_0)))))
        (send (get-field f_hashtable this) jm_put_2 _resource _animationInterfaceFactoryInterface))))
    (define/public (jm_getBasicAnimationInterfaceFactoryInstance_1 _resource)
    (let ([_basicAnimationInterfaceFactoryInterfaceCanBeNull JR.null])
      (let/ec jreturn
        (set! _basicAnimationInterfaceFactoryInterfaceCanBeNull (send (get-field f_hashtable this) jm_get_1 _resource))
        (when (JR.null? _basicAnimationInterfaceFactoryInterfaceCanBeNull)
            (begin
            (jreturn (NullAnimationFactory.jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY))))
        (jreturn _basicAnimationInterfaceFactoryInterfaceCanBeNull))))
    (define/public (jm_getRectangle_1 _resource)
    (let ([_rectangleCanBeNull JR.null])
      (let/ec jreturn
        (set! _rectangleCanBeNull (send (get-field f_rectangleHashtable this) jm_get_1 _resource))
        (when (JR.null? _rectangleCanBeNull)
            (begin
            (jreturn (RectangleFactory.jstatic_SINGLETON))))
        (jreturn _rectangleCanBeNull))))
    (define/public (jm_addRectangle_2 _resource _rectangle)
    (let ()
      (let/ec jreturn
        (send (get-field f_rectangleHashtable this) jm_put_2 _resource _rectangle))))
    (define/public (jm_getRectangleArrayOfArrays_1 _resource)
    (let ([_valueCanBeNull JR.null][_rectangleArrayOfArrays JR.null])
      (let/ec jreturn
        (set! _valueCanBeNull (send (get-field f_rectangleArrayOfArraysHashtable this) jm_get_1 _resource))
        (if (not (JR.null? _valueCanBeNull))
            (begin
            (set! _rectangleArrayOfArrays _valueCanBeNull)
            (jreturn _rectangleArrayOfArrays))
            (begin
            (jreturn (RectangleFactory.jstatic_ARRAY_OF_ARRAYS)))))))
    (define/public (jm_addRectangleArrayOfArrays_2 _resource _rectangleArrayOfArrays)
    (let ()
      (let/ec jreturn
        (send (get-field f_rectangleArrayOfArraysHashtable this) jm_put_2 _resource _rectangleArrayOfArrays))))
    (define/public (jm_isFeature_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_isLoadingLevel_1 _level)
    (let ([_resourceLoadingLevelFactory JR.null])
      (let/ec jreturn
        (set! _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
        (if (= _level (JR.className (get-field f_LOAD_ALL _resourceLoadingLevelFactory)))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 (JR.className this)) jm_append_1 (get-field f_SEMICOLON (CommonSeps.jm_getInstance_0))) jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0))) jm_append_1 (get-field f_name this)) jm_toString_0)))))
    (define/public (jm_getHashtable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_hashtable this)))))
    (define/public (jm_getRectangleHashtable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_rectangleHashtable this)))))
    (define/public (jm_getRectangleArrayOfArraysHashtable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_rectangleArrayOfArraysHashtable this)))))
    (define/public (jm_setInitialized_1 _initialized)
    (let ()
      (let/ec jreturn
        (set-field! f_initialized this _initialized))))
    (define/public (jm_isInitialized_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_initialized this)))))))
(define (BaseResourceAnimationInterfaceFactoryInterfaceFactory.jclassValue) BaseResourceAnimationInterfaceFactoryInterfaceFactory%)

(define (BaseResourceAnimationInterfaceFactoryInterfaceFactory.jnew_4 _name _hashtable _rectangleHashtable _rectangleArrayHashtable)
  (define this (new BaseResourceAnimationInterfaceFactoryInterfaceFactory% [jclass "BaseResourceAnimationInterfaceFactoryInterfaceFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_hashtable this _hashtable)
        (set-field! f_rectangleHashtable this _rectangleHashtable)
        (set-field! f_rectangleArrayOfArraysHashtable this _rectangleArrayHashtable)
        (set-field! f_name this _name)))
  this)



