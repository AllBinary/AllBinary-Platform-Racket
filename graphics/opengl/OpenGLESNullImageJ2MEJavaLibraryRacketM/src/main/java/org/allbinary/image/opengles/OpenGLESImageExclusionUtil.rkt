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
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define OpenGLESImageExclusionUtil%
  (class JObject%
    (super-new)
    (field [f_list JR.null])
    (define/public (jm_isCustomScaling_1 _image)
    (let ()
      (let/ec jreturn
        (jreturn #f))))))
(define (OpenGLESImageExclusionUtil.jclassValue) OpenGLESImageExclusionUtil%)

(define OpenGLESImageExclusionUtil.jcell_instance 'jnone)
(define (OpenGLESImageExclusionUtil.jstatic_instance)
  (when (eq? OpenGLESImageExclusionUtil.jcell_instance 'jnone) (set! OpenGLESImageExclusionUtil.jcell_instance (OpenGLESImageExclusionUtil.jnew_0)))
  OpenGLESImageExclusionUtil.jcell_instance)
(define (OpenGLESImageExclusionUtil.jsetstatic_instance value) (set! OpenGLESImageExclusionUtil.jcell_instance value))

(define (OpenGLESImageExclusionUtil.jnew_0)
  (define this (new OpenGLESImageExclusionUtil% [jclass "OpenGLESImageExclusionUtil"]))
    (set-field! f_list this (BasicArrayListD.jnew_0))
  this)

(define (OpenGLESImageExclusionUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLESImageExclusionUtil.jstatic_instance)))))



