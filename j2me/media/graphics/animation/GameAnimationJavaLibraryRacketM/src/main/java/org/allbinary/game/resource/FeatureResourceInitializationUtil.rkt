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
(lazy-require ["../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.rkt" (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./FeaturedResourceRelativeRelationshipFactory.rkt" (FeaturedResourceRelativeRelationshipFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define FeatureResourceInitializationUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (define/public (jm_init_1 _level)
    (let ([_commonStrings JR.null][_featuredResourceFactory JR.null])
      (let/ec jreturn
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_START _commonStrings) this (get-field f_INIT _commonStrings))
        (set! _featuredResourceFactory (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0))
        (send _featuredResourceFactory jm_init_1 _level)
        (send (FeaturedResourceRelativeRelationshipFactory.jm_getInstance_0) jm_init_1 _level))))))
(define (FeatureResourceInitializationUtil.jclassValue) FeatureResourceInitializationUtil%)

(define FeatureResourceInitializationUtil.jcell_instance 'jnone)
(define (FeatureResourceInitializationUtil.jstatic_instance)
  (when (eq? FeatureResourceInitializationUtil.jcell_instance 'jnone) (set! FeatureResourceInitializationUtil.jcell_instance (FeatureResourceInitializationUtil.jnew_0)))
  FeatureResourceInitializationUtil.jcell_instance)
(define (FeatureResourceInitializationUtil.jsetstatic_instance value) (set! FeatureResourceInitializationUtil.jcell_instance value))

(define (FeatureResourceInitializationUtil.jnew_0)
  (define this (new FeatureResourceInitializationUtil% [jclass "FeatureResourceInitializationUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
  this)

(define (FeatureResourceInitializationUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (FeatureResourceInitializationUtil.jstatic_instance)))))



