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
;; package org.allbinary.game.configuration.feature

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./GraphicsFeature.rkt" (GraphicsFeature.jnew_1)])
(provide (all-defined-out))

(define GraphicsFeatureFactory%
  (class JObject%
    (super-new)
    (field [f_NONE JR.null])
    (field [f_TRANSPARENT_IMAGE_CREATION JR.null])
    (field [f_IMAGE_GRAPHICS JR.null])
    (field [f_IMAGE_ROTATION_ON_THE_FLY JR.null])
    (field [f_IMAGE_TO_ARRAY_GRAPHICS JR.null])
    (field [f_SPRITE_QUARTER_ROTATION_GRAPHICS JR.null])
    (field [f_SPRITE_FULL_GRAPHICS JR.null])
    (field [f_VECTOR_GRAPHICS JR.null])
    (field [f_VECTOR_TO_IMAGE_GRAPHICS JR.null])))
(define (GraphicsFeatureFactory.jclassValue) GraphicsFeatureFactory%)

(define GraphicsFeatureFactory.jcell_instance 'jnone)
(define (GraphicsFeatureFactory.jstatic_instance)
  (when (eq? GraphicsFeatureFactory.jcell_instance 'jnone) (set! GraphicsFeatureFactory.jcell_instance (GraphicsFeatureFactory.jnew_0)))
  GraphicsFeatureFactory.jcell_instance)
(define (GraphicsFeatureFactory.jsetstatic_instance value) (set! GraphicsFeatureFactory.jcell_instance value))

(define (GraphicsFeatureFactory.jnew_0)
  (define this (new GraphicsFeatureFactory% [jclass "GraphicsFeatureFactory"]))
    (set-field! f_NONE this (GraphicsFeature.jnew_1 (get-field f_NULL_STRING (StringUtil.jm_getInstance_0))))
    (set-field! f_TRANSPARENT_IMAGE_CREATION this (GraphicsFeature.jnew_1 "Transparent Image Creation"))
    (set-field! f_IMAGE_GRAPHICS this (GraphicsFeature.jnew_1 "Image Graphics"))
    (set-field! f_IMAGE_ROTATION_ON_THE_FLY this (GraphicsFeature.jnew_1 "Image Rotated On The Fly"))
    (set-field! f_IMAGE_TO_ARRAY_GRAPHICS this (GraphicsFeature.jnew_1 "Image To Array Graphics"))
    (set-field! f_SPRITE_QUARTER_ROTATION_GRAPHICS this (GraphicsFeature.jnew_1 "Sprite Quarter Rotation Graphics"))
    (set-field! f_SPRITE_FULL_GRAPHICS this (GraphicsFeature.jnew_1 "Sprite Full Rotation Graphics"))
    (set-field! f_VECTOR_GRAPHICS this (GraphicsFeature.jnew_1 "BasicArrayList Graphics"))
    (set-field! f_VECTOR_TO_IMAGE_GRAPHICS this (GraphicsFeature.jnew_1 "BasicArrayList To Image Graphics"))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (GraphicsFeatureFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GraphicsFeatureFactory.jstatic_instance)))))



