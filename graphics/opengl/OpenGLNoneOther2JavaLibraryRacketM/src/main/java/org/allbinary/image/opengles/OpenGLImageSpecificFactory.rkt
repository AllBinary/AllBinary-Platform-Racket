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
;; package org.allbinary.image.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define OpenGLImageSpecificFactory%
  (class JObject%
    (super-new)
    (field [f_updating #f])))
(define (OpenGLImageSpecificFactory.jclassValue) OpenGLImageSpecificFactory%)

(define OpenGLImageSpecificFactory.jcell_instance 'jnone)
(define (OpenGLImageSpecificFactory.jstatic_instance)
  (when (eq? OpenGLImageSpecificFactory.jcell_instance 'jnone) (set! OpenGLImageSpecificFactory.jcell_instance (OpenGLImageSpecificFactory.jnew_0)))
  OpenGLImageSpecificFactory.jcell_instance)
(define (OpenGLImageSpecificFactory.jsetstatic_instance value) (set! OpenGLImageSpecificFactory.jcell_instance value))

(define (OpenGLImageSpecificFactory.jnew_0)
  (define this (new OpenGLImageSpecificFactory% [jclass "OpenGLImageSpecificFactory"]))
    (set-field! f_updating this #f)
  this)

(define (OpenGLImageSpecificFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLImageSpecificFactory.jstatic_instance)))))



