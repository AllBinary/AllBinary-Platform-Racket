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
;; package org.allbinary.graphics.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define OpenGLFeatureUtil%
  (class JObject%
    (super-new)
    (define/public (jm_isAnyThreed_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))))
(define (OpenGLFeatureUtil.jclassValue) OpenGLFeatureUtil%)

(define OpenGLFeatureUtil.jcell_instance 'jnone)
(define (OpenGLFeatureUtil.jstatic_instance)
  (when (eq? OpenGLFeatureUtil.jcell_instance 'jnone) (set! OpenGLFeatureUtil.jcell_instance (OpenGLFeatureUtil.jnew_0)))
  OpenGLFeatureUtil.jcell_instance)
(define (OpenGLFeatureUtil.jsetstatic_instance value) (set! OpenGLFeatureUtil.jcell_instance value))

(define (OpenGLFeatureUtil.jnew_0)
  (define this (new OpenGLFeatureUtil% [jclass "OpenGLFeatureUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (OpenGLFeatureUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLFeatureUtil.jstatic_instance)))))



