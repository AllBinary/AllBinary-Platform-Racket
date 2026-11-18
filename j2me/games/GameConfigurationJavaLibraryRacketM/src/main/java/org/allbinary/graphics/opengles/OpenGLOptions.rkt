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
;; package org.allbinary.graphics.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.rkt" (GameFeatureChoiceGroups.jm_getMultipleInstance_0 GameFeatureChoiceGroups.jm_getExclusiveInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./OpenGLFeatureFactory.rkt" (OpenGLFeatureFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define OpenGLOptions%
  (class JObject%
    (super-new)
    (define/public (jm_init_0)
    (let ([_openGLFeatureFactory JR.null][_openGLMultipleList JR.null][_openGLVersionSelectorMultipleList JR.null][_openGLImageColorMultipleList JR.null])
      (let/ec jreturn
        (set! _openGLFeatureFactory (OpenGLFeatureFactory.jm_getInstance_0))
        (when (send (Features.jm_getInstance_0) jm_isFeature_1 (get-field f_OPENGL_OPTIONS _openGLFeatureFactory))
            (begin
            (set! _openGLMultipleList (BasicArrayListD.jnew_0))
            (send _openGLMultipleList jm_add_1 (get-field f_OPENGL _openGLFeatureFactory))
            (JR.className (GameFeatureChoiceGroups.jm_getMultipleInstance_0))
            (set! _openGLVersionSelectorMultipleList (BasicArrayListD.jnew_0))
            (send _openGLVersionSelectorMultipleList jm_add_1 (get-field f_OPENGL_AUTO_SELECT _openGLFeatureFactory))
            (send _openGLVersionSelectorMultipleList jm_add_1 (get-field f_OPENGL_MINIMUM _openGLFeatureFactory))
            (JR.className (GameFeatureChoiceGroups.jm_getExclusiveInstance_0))
            (set! _openGLImageColorMultipleList (BasicArrayListD.jnew_0))
            (send _openGLImageColorMultipleList jm_add_1 (get-field f_IMAGE_COLOR_DEPTH_4444 _openGLFeatureFactory))
            (send _openGLImageColorMultipleList jm_add_1 (get-field f_IMAGE_COLOR_DEPTH_8888 _openGLFeatureFactory))
            (JR.className (GameFeatureChoiceGroups.jm_getExclusiveInstance_0)))))))))
(define (OpenGLOptions.jclassValue) OpenGLOptions%)

(define (OpenGLOptions.jnew_0)
  (define this (new OpenGLOptions% [jclass "OpenGLOptions"]))
  this)



