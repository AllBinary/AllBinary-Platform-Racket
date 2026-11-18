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
;; package org.allbinary.graphics

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define RendererStateFactory%
  (class JObject%
    (super-new)
    (field [f_loaded #f])
    (field [f_surfaceChanged #f])
    (define/public (jm_setLoaded_1 _loaded)
    (let ()
      (let/ec jreturn
        (set-field! f_loaded this _loaded))))
    (define/public (jm_isLoaded_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_loaded this)))))
    (define/public (jm_setSurfaceChanged_1 _initialized)
    (let ()
      (let/ec jreturn
        (set-field! f_surfaceChanged this _initialized))))
    (define/public (jm_isSurfaceChanged_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_surfaceChanged this)))))))
(define (RendererStateFactory.jclassValue) RendererStateFactory%)

(define RendererStateFactory.jcell_instance 'jnone)
(define (RendererStateFactory.jstatic_instance)
  (when (eq? RendererStateFactory.jcell_instance 'jnone) (set! RendererStateFactory.jcell_instance (RendererStateFactory.jnew_0)))
  RendererStateFactory.jcell_instance)
(define (RendererStateFactory.jsetstatic_instance value) (set! RendererStateFactory.jcell_instance value))

(define (RendererStateFactory.jnew_0)
  (define this (new RendererStateFactory% [jclass "RendererStateFactory"]))
    (set-field! f_loaded this #f)
    (set-field! f_surfaceChanged this #f)
  this)

(define (RendererStateFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (RendererStateFactory.jstatic_instance)))))



