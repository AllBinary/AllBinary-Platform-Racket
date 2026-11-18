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
(lazy-require ["./InputFeature.rkt" (InputFeature.jnew_1)])
(lazy-require ["./Features.rkt" (Features.jm_getInstance_0)])
(provide (all-defined-out))

(define InputFeatureFactory%
  (class JObject%
    (super-new)
    (field [f_REMOVE_DUPLICATE_KEY_PRESSES JR.null])
    (field [f_INPUT_MAPPING JR.null])
    (field [f_MULTI_KEY_PRESS JR.null])
    (field [f_SINGLE_KEY_REPEAT_PRESS JR.null])
    (field [f_SINGLE_KEY_PRESS JR.null])
    (define/public (jm_isSingleKeyProcessing_0)
    (let ([_features JR.null])
      (let/ec jreturn
        (set! _features (Features.jm_getInstance_0))
        (if (or (send _features jm_isFeature_1 (get-field f_SINGLE_KEY_REPEAT_PRESS this)) (send _features jm_isFeature_1 (get-field f_SINGLE_KEY_PRESS this)))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))))
(define (InputFeatureFactory.jclassValue) InputFeatureFactory%)

(define InputFeatureFactory.jcell_instance 'jnone)
(define (InputFeatureFactory.jstatic_instance)
  (when (eq? InputFeatureFactory.jcell_instance 'jnone) (set! InputFeatureFactory.jcell_instance (InputFeatureFactory.jnew_0)))
  InputFeatureFactory.jcell_instance)
(define (InputFeatureFactory.jsetstatic_instance value) (set! InputFeatureFactory.jcell_instance value))

(define (InputFeatureFactory.jnew_0)
  (define this (new InputFeatureFactory% [jclass "InputFeatureFactory"]))
    (set-field! f_REMOVE_DUPLICATE_KEY_PRESSES this (InputFeature.jnew_1 "Remove Duplicate Key Presses"))
    (set-field! f_INPUT_MAPPING this (InputFeature.jnew_1 "Input Mapping"))
    (set-field! f_MULTI_KEY_PRESS this (InputFeature.jnew_1 "Multi Key Press"))
    (set-field! f_SINGLE_KEY_REPEAT_PRESS this (InputFeature.jnew_1 "Single Key Repeat Press"))
    (set-field! f_SINGLE_KEY_PRESS this (InputFeature.jnew_1 "Single Key Press"))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (InputFeatureFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (InputFeatureFactory.jstatic_instance)))))



