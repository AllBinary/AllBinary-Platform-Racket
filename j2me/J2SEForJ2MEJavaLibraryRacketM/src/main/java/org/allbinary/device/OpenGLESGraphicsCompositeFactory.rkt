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
;; package org.allbinary.device

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["./OpenGLESGraphicsFactory.rkt" (OpenGLESGraphicsFactory.jnew_0)])
(provide (all-defined-out))

(define OpenGLESGraphicsCompositeFactory%
  (class JObject%
    (super-new)
    (field [f_openGLESGraphicsFactory JR.null])
    (define/public (jm_set_1 _openGLESGraphicsFactory)
    (let ()
      (let/ec jreturn
        (set-field! f_openGLESGraphicsFactory this _openGLESGraphicsFactory))))
    (define/public (jm_get_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_openGLESGraphicsFactory this)))))))
(define (OpenGLESGraphicsCompositeFactory.jclassValue) OpenGLESGraphicsCompositeFactory%)

(define OpenGLESGraphicsCompositeFactory.jcell_instance 'jnone)
(define (OpenGLESGraphicsCompositeFactory.jstatic_instance)
  (when (eq? OpenGLESGraphicsCompositeFactory.jcell_instance 'jnone) (set! OpenGLESGraphicsCompositeFactory.jcell_instance (OpenGLESGraphicsCompositeFactory.jnew_0)))
  OpenGLESGraphicsCompositeFactory.jcell_instance)
(define (OpenGLESGraphicsCompositeFactory.jsetstatic_instance value) (set! OpenGLESGraphicsCompositeFactory.jcell_instance value))

(define (OpenGLESGraphicsCompositeFactory.jnew_0)
  (define this (new OpenGLESGraphicsCompositeFactory% [jclass "OpenGLESGraphicsCompositeFactory"]))
    (set-field! f_openGLESGraphicsFactory this (OpenGLESGraphicsFactory.jnew_0))
  this)

(define (OpenGLESGraphicsCompositeFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLESGraphicsCompositeFactory.jstatic_instance)))))



