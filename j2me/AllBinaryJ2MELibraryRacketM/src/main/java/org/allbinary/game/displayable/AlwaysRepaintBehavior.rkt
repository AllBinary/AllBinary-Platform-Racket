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
  "../../../../java/lang/Thread.rkt"
  "./RepaintBehavior.rkt")
(lazy-require ["../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory.rkt" (OpenGLFeatureFactory.jm_getInstance_0)])
(lazy-require ["./RepaintRunnable.rkt" (RepaintRunnable.jnew_1)])
(provide (all-defined-out))

(define AlwaysRepaintBehavior%
  (class RepaintBehavior%
    (super-new)
    (define/override (jm_repaint_1 _canvas)
    (let ([_features JR.null][_openGLFeatureFactory JR.null][_thread JR.null])
      (let/ec jreturn
        (set! _features (Features.jm_getInstance_0))
        (set! _openGLFeatureFactory (OpenGLFeatureFactory.jm_getInstance_0))
        (if (send _features jm_isFeature_1 (get-field f_OPENGL _openGLFeatureFactory))
            (begin
            (send (DisplayInfoSingleton.jm_getInstance_0) jm_process_0))
            (begin
            (set! _thread (Thread.jnew_2 (RepaintRunnable.jnew_1 _canvas) (get-field f_NAME this)))
            (send _thread jm_start_0))))))
    (define/override (jm_onChangeRepaint_1 _canvas)
    (let ()
      (let/ec jreturn (void))))))
(define (AlwaysRepaintBehavior.jclassValue) AlwaysRepaintBehavior%)

(define AlwaysRepaintBehavior.jcell_instanceC 'jnone)
(define (AlwaysRepaintBehavior.jstatic_instanceC)
  (when (eq? AlwaysRepaintBehavior.jcell_instanceC 'jnone) (set! AlwaysRepaintBehavior.jcell_instanceC (AlwaysRepaintBehavior.jnew_0)))
  AlwaysRepaintBehavior.jcell_instanceC)
(define (AlwaysRepaintBehavior.jsetstatic_instanceC value) (set! AlwaysRepaintBehavior.jcell_instanceC value))

(define (AlwaysRepaintBehavior.jnew_0)
  (define this (new AlwaysRepaintBehavior% [jclass "AlwaysRepaintBehavior"]))
    (set-field! f_NAME this "AlwaysRepaintBehavior")
  this)

(define (AlwaysRepaintBehavior.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AlwaysRepaintBehavior.jstatic_instanceC)))))



