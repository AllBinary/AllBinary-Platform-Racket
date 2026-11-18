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

(define OpenGLESImageProperties%
  (class JObject%
    (super-new)
    (field [f_textureID 0])
    (field [f_scaleX 0.0])
    (field [f_scaleY 0.0])
    (field [f_scaleX2 0.0])
    (field [f_scaleY2 0.0])
    (field [f_angle 0])
    (field [f_redf 0.0])
    (field [f_greenf 0.0])
    (field [f_bluef 0.0])
    (field [f_alphaf 0.0])))
(define (OpenGLESImageProperties.jclassValue) OpenGLESImageProperties%)

(define (OpenGLESImageProperties.jnew_0)
  (define this (new OpenGLESImageProperties% [jclass "OpenGLESImageProperties"]))
    (set-field! f_textureID this (JR.i32 (- 1)))
    (set-field! f_scaleX this 1.0)
    (set-field! f_scaleY this 1.0)
    (set-field! f_scaleX2 this 1.0)
    (set-field! f_scaleY2 this 1.0)
    
    (set-field! f_redf this 1.0)
    (set-field! f_greenf this 1.0)
    (set-field! f_bluef this 1.0)
    (set-field! f_alphaf this 1.0)
  this)



