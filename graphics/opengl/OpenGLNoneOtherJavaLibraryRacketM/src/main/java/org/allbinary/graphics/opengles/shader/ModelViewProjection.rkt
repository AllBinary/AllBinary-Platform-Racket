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
;; package org.allbinary.graphics.opengles.shader

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define ModelViewProjection%
  (class JObject%
    (super-new)
    (define/public (jm_get_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_FLOAT_ARRAY (NullUtil.jm_getInstance_0))))))))
(define (ModelViewProjection.jclassValue) ModelViewProjection%)

(define ModelViewProjection.jcell_instance 'jnone)
(define (ModelViewProjection.jstatic_instance)
  (when (eq? ModelViewProjection.jcell_instance 'jnone) (set! ModelViewProjection.jcell_instance (ModelViewProjection.jnew_0)))
  ModelViewProjection.jcell_instance)
(define (ModelViewProjection.jsetstatic_instance value) (set! ModelViewProjection.jcell_instance value))

(define (ModelViewProjection.jnew_0)
  (define this (new ModelViewProjection% [jclass "ModelViewProjection"]))
  this)

(define (ModelViewProjection.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ModelViewProjection.jstatic_instance)))))



