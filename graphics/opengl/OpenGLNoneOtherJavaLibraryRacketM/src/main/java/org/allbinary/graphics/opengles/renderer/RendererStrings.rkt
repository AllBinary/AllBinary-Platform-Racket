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
;; package org.allbinary.graphics.opengles.renderer

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define RendererStrings%
  (class JObject%
    (super-new)
    (field [f_ON_SURFACE_CREATED JR.null])
    (field [f_ON_SURFACE_CHANGED JR.null])
    (field [f_ON_DRAW_FRAME JR.null])
    (field [f_ON_DRAW_FRAME_THREED JR.null])
    (field [f_ON_DRAW_FRAME_2D JR.null])))
(define (RendererStrings.jclassValue) RendererStrings%)

(define RendererStrings.jcell_instance 'jnone)
(define (RendererStrings.jstatic_instance)
  (when (eq? RendererStrings.jcell_instance 'jnone) (set! RendererStrings.jcell_instance (RendererStrings.jnew_0)))
  RendererStrings.jcell_instance)
(define (RendererStrings.jsetstatic_instance value) (set! RendererStrings.jcell_instance value))

(define (RendererStrings.jnew_0)
  (define this (new RendererStrings% [jclass "RendererStrings"]))
    (set-field! f_ON_SURFACE_CREATED this "onSurfaceCreated")
    (set-field! f_ON_SURFACE_CHANGED this "onSurfaceChanged")
    (set-field! f_ON_DRAW_FRAME this "onDrawFrame")
    (set-field! f_ON_DRAW_FRAME_THREED this "onDrawFrameThreed")
    (set-field! f_ON_DRAW_FRAME_2D this "onDrawFrame2d")
  this)

(define (RendererStrings.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (RendererStrings.jstatic_instance)))))



