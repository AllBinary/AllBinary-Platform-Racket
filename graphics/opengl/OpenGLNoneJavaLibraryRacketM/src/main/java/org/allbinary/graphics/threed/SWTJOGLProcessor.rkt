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
;; package org.allbinary.graphics.threed

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/Runnable.rkt")
(provide (all-defined-out))

;OpenGLNone
(define SWTJOGLProcessor%
  (class JObject%
    (super-new)
    (define/public (jm_init_2 _display _comp)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isHolderCreated_0)
    (let ()
      (let/ec jreturn
        (jreturn #t))))
    (define/public (jm_setRenderer_1 _renderer)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isJOGL_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_createSurface_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onSurfaceCreated_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onSurfaceChangedForEvent_1 _event)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onSurfaceChanged_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onSurfaceChangedWH_2 _width _height)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_addListener_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_addListeners_1 _midlet)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_run_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_clear_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setCustom_3 _width _height _ratio)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setRatioProcessor_1 _ratioProcessor)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isPortraitRatioProcessor_0)
    (let ()
      (let/ec jreturn
        (jreturn #t))))
    (define/public (jm_charWidth_2 _font _ch)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_charsWidth_4 _font _ch _offset _length)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_stringWidth_2 _font _str)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_substringWidth_4 _font _str _offset _len)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))))
(define (SWTJOGLProcessor.jclassValue) SWTJOGLProcessor%)

(define SWTJOGLProcessor.jcell_instance 'jnone)
(define (SWTJOGLProcessor.jstatic_instance)
  (when (eq? SWTJOGLProcessor.jcell_instance 'jnone) (set! SWTJOGLProcessor.jcell_instance (SWTJOGLProcessor.jnew_0)))
  SWTJOGLProcessor.jcell_instance)
(define (SWTJOGLProcessor.jsetstatic_instance value) (set! SWTJOGLProcessor.jcell_instance value))

(define (SWTJOGLProcessor.jnew_0)
  (define this (new SWTJOGLProcessor% [jclass "SWTJOGLProcessor"]))
  this)

(define (SWTJOGLProcessor.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SWTJOGLProcessor.jstatic_instance)))))



