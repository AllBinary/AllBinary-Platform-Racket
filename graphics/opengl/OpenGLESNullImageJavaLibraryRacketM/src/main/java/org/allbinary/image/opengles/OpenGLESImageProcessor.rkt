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
;; package org.allbinary.image.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define OpenGLESImageProcessor%
  (class JObject%
    (super-new)
    (define/public (jm_translate_3 _gl _translateX _translateY)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_rotate_2 _gl _angle)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_scale_3 _gl _scaleX _scaleY)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_colorMask_5 _gl _red _green _blue _alpha)
    (let ()
      (let/ec jreturn (void))))))
(define (OpenGLESImageProcessor.jclassValue) OpenGLESImageProcessor%)

(define OpenGLESImageProcessor.jcell_instance 'jnone)
(define (OpenGLESImageProcessor.jstatic_instance)
  (when (eq? OpenGLESImageProcessor.jcell_instance 'jnone) (set! OpenGLESImageProcessor.jcell_instance (OpenGLESImageProcessor.jnew_0)))
  OpenGLESImageProcessor.jcell_instance)
(define (OpenGLESImageProcessor.jsetstatic_instance value) (set! OpenGLESImageProcessor.jcell_instance value))

(define (OpenGLESImageProcessor.jnew_0)
  (define this (new OpenGLESImageProcessor% [jclass "OpenGLESImageProcessor"]))
  this)

(define (OpenGLESImageProcessor.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLESImageProcessor.jstatic_instance)))))



