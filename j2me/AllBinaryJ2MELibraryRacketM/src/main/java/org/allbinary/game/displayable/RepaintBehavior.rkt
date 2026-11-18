#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
;; package org.allbinary.game.displayable

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/Thread.rkt")
(lazy-require ["../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory.rkt" (OpenGLFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["./RepaintRunnable.rkt" (RepaintRunnable.jnew_1)])
(provide (all-defined-out))

(define RepaintBehavior%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_NAME JR.null])
    (define/public (jm_repaint_1 _canvas)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onChangeRepaint_1 _canvas)
    (let ([_features JR.null][_openGLFeatureFactory JR.null][_thread JR.null])
      (let/ec jreturn
        (set! _features (Features.jm_getInstance_0))
        (set! _openGLFeatureFactory (OpenGLFeatureFactory.jm_getInstance_0))
        (if (send _features jm_isFeature_1 (get-field f_OPENGL _openGLFeatureFactory))
            (begin
            (send (DisplayInfoSingleton.jm_getInstance_0) jm_process_0))
            (begin
            (set! _thread (Thread.jnew_2 (RepaintRunnable.jnew_1 _canvas) (get-field f_NAME this)))
            (send _thread jm_start_0))))))))
(define (RepaintBehavior.jclassValue) RepaintBehavior%)

(define RepaintBehavior.jcell_instance 'jnone)
(define (RepaintBehavior.jstatic_instance)
  (when (eq? RepaintBehavior.jcell_instance 'jnone) (set! RepaintBehavior.jcell_instance (RepaintBehavior.jnew_0)))
  RepaintBehavior.jcell_instance)
(define (RepaintBehavior.jsetstatic_instance value) (set! RepaintBehavior.jcell_instance value))

(define (RepaintBehavior.jnew_0)
  (define this (new RepaintBehavior% [jclass "RepaintBehavior"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_NAME this "RepaintBehavior")
  this)

(define (RepaintBehavior.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (RepaintBehavior.jstatic_instance)))))



