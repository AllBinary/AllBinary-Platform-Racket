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
;; package org.allbinary.canvas

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/game/configuration/feature/MainFeatureFactory.rkt" (MainFeatureFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define FullScreenUtil%
  (class JObject%
    (super-new)
    (define/public (jm_initOnRun_2 _fullScreenInterface _commandListener)
    (let ()
      (let/ec jreturn
        (when (not (JR.null? _commandListener))
            (begin
            (send this jm_init_1 _fullScreenInterface))))))
    (define/public (jm_init_1 _fullScreenInterface)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isScreenChange_1 _isFullScreen)
    (let ([_mainFeatureFactory JR.null][_features JR.null])
      (let/ec jreturn
        (set! _mainFeatureFactory (MainFeatureFactory.jm_getInstance_0))
        (set! _features (Features.jm_getInstance_0))
        (when (not (eq? (send _features jm_isFeature_1 (get-field f_FULL_SCREEN _mainFeatureFactory)) _isFullScreen))
            (begin
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_isScreenChangeCanvas_1 _fullScreenInterface)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_isScreenChange_1 #f)))))))
(define (FullScreenUtil.jclassValue) FullScreenUtil%)

(define FullScreenUtil.jcell_instance 'jnone)
(define (FullScreenUtil.jstatic_instance)
  (when (eq? FullScreenUtil.jcell_instance 'jnone) (set! FullScreenUtil.jcell_instance (FullScreenUtil.jnew_0)))
  FullScreenUtil.jcell_instance)
(define (FullScreenUtil.jsetstatic_instance value) (set! FullScreenUtil.jcell_instance value))

(define (FullScreenUtil.jnew_0)
  (define this (new FullScreenUtil% [jclass "FullScreenUtil"]))
  this)

(define (FullScreenUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (FullScreenUtil.jstatic_instance)))))



