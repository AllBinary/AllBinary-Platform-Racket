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
  "../../../../allbinary_java.rkt"
  "./OpenGLESImageProcessor.rkt")
(provide (all-defined-out))

(define ModifierOpenGLESImageProcessor%
  (class OpenGLESImageProcessor%
    (super-new)))
(define (ModifierOpenGLESImageProcessor.jclassValue) ModifierOpenGLESImageProcessor%)

(define ModifierOpenGLESImageProcessor.jcell_instanceC 'jnone)
(define (ModifierOpenGLESImageProcessor.jstatic_instanceC)
  (when (eq? ModifierOpenGLESImageProcessor.jcell_instanceC 'jnone) (set! ModifierOpenGLESImageProcessor.jcell_instanceC (ModifierOpenGLESImageProcessor.jnew_0)))
  ModifierOpenGLESImageProcessor.jcell_instanceC)
(define (ModifierOpenGLESImageProcessor.jsetstatic_instanceC value) (set! ModifierOpenGLESImageProcessor.jcell_instanceC value))

(define (ModifierOpenGLESImageProcessor.jnew_0)
  (define this (new ModifierOpenGLESImageProcessor% [jclass "ModifierOpenGLESImageProcessor"]))
  this)

(define (ModifierOpenGLESImageProcessor.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ModifierOpenGLESImageProcessor.jstatic_instanceC)))))



