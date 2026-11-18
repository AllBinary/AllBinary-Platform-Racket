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
;; package org.allbinary.game.layer.resources

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/GraphicsFeatureFactory.rkt" (GraphicsFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/CanvasStrings.rkt" (CanvasStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil.rkt" (OpenGLFeatureUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define GameGraphicsResourceUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_SPRITE JR.null])
    (field [f_QUARTER JR.null])
    (field [f_name JR.null])
    (define/public (jm_getString_0)
    (let ([_graphicsFeatureFactory JR.null][_graphicsFeature JR.null][_features JR.null])
      (let/ec jreturn
        (set! _graphicsFeatureFactory (GraphicsFeatureFactory.jm_getInstance_0))
        (set! _graphicsFeature (get-field f_NONE _graphicsFeatureFactory))
        (set! _features (Features.jm_getInstance_0))
        (if (send _features jm_isFeature_1 (get-field f_IMAGE_TO_ARRAY_GRAPHICS _graphicsFeatureFactory))
            (begin
            (set! _graphicsFeature (get-field f_IMAGE_TO_ARRAY_GRAPHICS _graphicsFeatureFactory)))
            (if (send _features jm_isFeature_1 (get-field f_SPRITE_FULL_GRAPHICS _graphicsFeatureFactory))
            (begin
            (set! _graphicsFeature (get-field f_SPRITE_FULL_GRAPHICS _graphicsFeatureFactory)))
            (if (send _features jm_isFeature_1 (get-field f_SPRITE_QUARTER_ROTATION_GRAPHICS _graphicsFeatureFactory))
            (begin
            (set! _graphicsFeature (get-field f_SPRITE_QUARTER_ROTATION_GRAPHICS _graphicsFeatureFactory)))
            (when (send _features jm_isFeature_1 (get-field f_IMAGE_ROTATION_ON_THE_FLY _graphicsFeatureFactory))
            (begin
            (set! _graphicsFeature (get-field f_IMAGE_ROTATION_ON_THE_FLY _graphicsFeatureFactory)))))))
        (jreturn (send this jm_getStringForFeature_1 _graphicsFeature)))))
    (define/public (jm_getStringForFeature_1 _graphicsFeature)
    (let ([_stringBuffer JR.null][_graphicsFeatureFactory JR.null][_features JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _graphicsFeatureFactory (GraphicsFeatureFactory.jm_getInstance_0))
        (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
        (set! _features (Features.jm_getInstance_0))
        (if (send _features jm_isFeature_1 (get-field f_VECTOR_GRAPHICS _graphicsFeatureFactory))
            (begin
            (void))
            (if (send _features jm_isFeature_1 (get-field f_IMAGE_GRAPHICS _graphicsFeatureFactory))
            (begin
            (if (or (eq? _graphicsFeature (get-field f_IMAGE_TO_ARRAY_GRAPHICS _graphicsFeatureFactory)) (eq? _graphicsFeature (get-field f_IMAGE_ROTATION_ON_THE_FLY _graphicsFeatureFactory)))
                (begin
                (void))
                (if (eq? _graphicsFeature (get-field f_SPRITE_FULL_GRAPHICS _graphicsFeatureFactory))
                (begin
                (send _stringBuffer jm_append_1 (get-field f_SPRITE this)))
                (if (eq? _graphicsFeature (get-field f_SPRITE_QUARTER_ROTATION_GRAPHICS _graphicsFeatureFactory))
                (begin
                (send _stringBuffer jm_append_1 (get-field f_QUARTER this))
                (send _stringBuffer jm_append_1 (get-field f_SPRITE this)))
                (begin
                (raise (JR.newException "Exception" "None/Unknown Sub Image Resource Type Specified")))))))
            (if (send (OpenGLFeatureUtil.jm_getInstance_0) jm_isAnyThreed_0)
            (begin
            (send _stringBuffer jm_append_1 (get-field f_OBJ_MODEL (CanvasStrings.jm_getInstance_0))))
            (begin
            (raise (JR.newException "Exception" "None/Unknown Main Image Resource Type Specified"))))))
        (jreturn (send _stringBuffer jm_toString_0)))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))))
(define (GameGraphicsResourceUtil.jclassValue) GameGraphicsResourceUtil%)

(define GameGraphicsResourceUtil.jcell_instance 'jnone)
(define (GameGraphicsResourceUtil.jstatic_instance)
  (when (eq? GameGraphicsResourceUtil.jcell_instance 'jnone) (set! GameGraphicsResourceUtil.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  GameGraphicsResourceUtil.jcell_instance)
(define (GameGraphicsResourceUtil.jsetstatic_instance value) (set! GameGraphicsResourceUtil.jcell_instance value))

(define (GameGraphicsResourceUtil.jnew_0)
  (define this (new GameGraphicsResourceUtil% [jclass "GameGraphicsResourceUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_SPRITE this "_sprite")
    (set-field! f_QUARTER this "_quarter")
    (set-field! f_name this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_CONSTRUCTOR _commonStrings) _e))])
            (set-field! f_name this (send this jm_getString_0)))))
  this)

(define (GameGraphicsResourceUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (GameGraphicsResourceUtil.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! GameGraphicsResourceUtil.jcell_instance (GameGraphicsResourceUtil.jnew_0))))
        (jreturn (GameGraphicsResourceUtil.jstatic_instance)))))



