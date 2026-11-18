#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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

(define OpenGLESImageTranslate%
  (class JObject%
    (super-new)
    (define/public (jm_translate_4 _gl _openGLESImage _x _y)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_translate2_2 _gl _openGLESImage)
    (let ()
      (let/ec jreturn (void))))))
(define (OpenGLESImageTranslate.jclassValue) OpenGLESImageTranslate%)

(define OpenGLESImageTranslate.jcell_instance 'jnone)
(define (OpenGLESImageTranslate.jstatic_instance)
  (when (eq? OpenGLESImageTranslate.jcell_instance 'jnone) (set! OpenGLESImageTranslate.jcell_instance (OpenGLESImageTranslate.jnew_0)))
  OpenGLESImageTranslate.jcell_instance)
(define (OpenGLESImageTranslate.jsetstatic_instance value) (set! OpenGLESImageTranslate.jcell_instance value))

(define (OpenGLESImageTranslate.jnew_0)
  (define this (new OpenGLESImageTranslate% [jclass "OpenGLESImageTranslate"]))
  this)

(define (OpenGLESImageTranslate.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLESImageTranslate.jstatic_instance)))))



