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
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/GraphicsFeatureFactory.rkt" (GraphicsFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./ResourceLoadingLevelFactory.rkt" (ResourceLoadingLevelFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define FeaturedResourceFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_list JR.null])
    (field [f_commonStrings JR.null])
    (field [f_ANIMATION_FEATURES JR.null])
    (field [f_IMAGE_LABEL JR.null])
    (field [f_IMAGE_GRAPHICS_ARRAY JR.null])
    (field [f_IMAGE_GRAPHICS_ROTATION JR.null])
    (field [f_SPRITE_QUARTER JR.null])
    (field [f_SPRITE_FULL JR.null])
    (field [f_IS_LOADING_LEVEL_LABEL JR.null])
    (field [f_IS_FEATURE JR.null])
    (field [f_GAME_FEATURE_CONTROLLED JR.null])
    (define/public (jm_init_1 _level)
    (let ([_size JR.null][_featureInterface JR.null][_isLoadingLevel JR.null][_isFeature JR.null][_index JR.null][_features JR.null][_graphicsFeatureFactory JR.null][_stringBuffer JR.null])
      (let/ec jreturn
        (set! _size (send (get-field f_list this) jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _featureInterface (vector-ref (get-field f_objectArray (get-field f_list this)) _index))
            (set! _isLoadingLevel (send _featureInterface jm_isLoadingLevel_1 _level))
            (set! _isFeature (send _featureInterface jm_isFeature_0))
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_GAME_FEATURE_CONTROLLED this)) jm_append_1 (send _featureInterface jm_toString_0)) jm_append_1 (get-field f_IS_LOADING_LEVEL_LABEL this)) jm_append_1 (send (ResourceLoadingLevelFactory.jm_getInstance_0) jm_getLevelString_1 _level)) jm_append_1 (get-field f_COLON_SEP (CommonSeps.jm_getInstance_0))) jm_appendboolean_1 _isLoadingLevel) jm_append_1 (get-field f_IS_FEATURE this)) jm_appendboolean_1 _isFeature) jm_toString_0) this (get-field f_INIT (get-field f_commonStrings this)))
            (when (and _isLoadingLevel _isFeature)
                (begin
                (send _featureInterface jm_init_1 _level))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set! _features (Features.jm_getInstance_0))
        (set! _graphicsFeatureFactory (GraphicsFeatureFactory.jm_getInstance_0))
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (get-field f_ANIMATION_FEATURES this))
        (send _stringBuffer jm_appendboolean_1 (send _features jm_isFeature_1 (get-field f_VECTOR_GRAPHICS _graphicsFeatureFactory)))
        (send _stringBuffer jm_append_1 (get-field f_IMAGE_LABEL this))
        (send _stringBuffer jm_appendboolean_1 (send _features jm_isFeature_1 (get-field f_IMAGE_GRAPHICS _graphicsFeatureFactory)))
        (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this (get-field f_INIT (get-field f_commonStrings this)))
        (when (send _features jm_isFeature_1 (get-field f_IMAGE_GRAPHICS _graphicsFeatureFactory))
            (begin
            (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
            (send _stringBuffer jm_append_1 (get-field f_IMAGE_GRAPHICS_ARRAY this))
            (send _stringBuffer jm_appendboolean_1 (send _features jm_isFeature_1 (get-field f_IMAGE_TO_ARRAY_GRAPHICS _graphicsFeatureFactory)))
            (send _stringBuffer jm_append_1 (get-field f_IMAGE_GRAPHICS_ROTATION this))
            (send _stringBuffer jm_appendboolean_1 (send _features jm_isFeature_1 (get-field f_IMAGE_TO_ARRAY_GRAPHICS _graphicsFeatureFactory)))
            (send _stringBuffer jm_append_1 (get-field f_SPRITE_QUARTER this))
            (send _stringBuffer jm_appendboolean_1 (send _features jm_isFeature_1 (get-field f_SPRITE_QUARTER_ROTATION_GRAPHICS _graphicsFeatureFactory)))
            (send _stringBuffer jm_append_1 (get-field f_SPRITE_FULL this))
            (send _stringBuffer jm_appendboolean_1 (send _features jm_isFeature_1 (get-field f_SPRITE_FULL_GRAPHICS _graphicsFeatureFactory)))
            (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this (get-field f_INIT (get-field f_commonStrings this))))))))
    (define/public (jm_clear_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_clear_0))))
    (define/public (jm_add_1 _featureInterface)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_START_LABEL (CommonLabels.jm_getInstance_0))) jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _featureInterface)) jm_toString_0) this (get-field f_ADD (get-field f_commonStrings this)))
        (send (get-field f_list this) jm_add_1 _featureInterface))))
    (define/public (jm_getList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_list this)))))))
(define (FeaturedResourceFactory.jclassValue) FeaturedResourceFactory%)

(define (FeaturedResourceFactory.jnew_0)
  (define this (new FeaturedResourceFactory% [jclass "FeaturedResourceFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_ANIMATION_FEATURES this "Animation Features: Vector: ")
    (set-field! f_IMAGE_LABEL this " Image: ")
    (set-field! f_IMAGE_GRAPHICS_ARRAY this "Image Array: ")
    (set-field! f_IMAGE_GRAPHICS_ROTATION this "Image Rotate: ")
    (set-field! f_SPRITE_QUARTER this " Sprite Quarter: ")
    (set-field! f_SPRITE_FULL this " Sprite Full: ")
    (set-field! f_IS_LOADING_LEVEL_LABEL this " isLoadingLevel ")
    (set-field! f_IS_FEATURE this " isFeature: ")
    (set-field! f_GAME_FEATURE_CONTROLLED this "GameFeatureControlledInterface: ")
    (let ()
      (let/ec jreturn (void)))
  this)



