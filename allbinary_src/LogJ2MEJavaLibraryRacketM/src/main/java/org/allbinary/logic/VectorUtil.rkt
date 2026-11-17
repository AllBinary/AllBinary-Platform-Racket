#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2026 AllBinary 
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
;; package org.allbinary.logic

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/util/Vector.rkt")
(provide (all-defined-out))

(define VectorUtil%
  (class JObject%
    (super-new)
    (define/public (jm_getSize_1 _anyType)
    (let ([_vector JR.null])
      (let/ec jreturn
        (set! _vector _anyType)
        (jreturn (send _vector jm_size_0)))))
    (define/public (jm_elementAt_2 _anyType _index)
    (let ([_vector JR.null])
      (let/ec jreturn
        (set! _vector _anyType)
        (jreturn (send _vector jm_elementAt_1 _index)))))))

(define VectorUtil.jcell_instance 'jnone)
(define (VectorUtil.jstatic_instance)
  (when (eq? VectorUtil.jcell_instance 'jnone) (set! VectorUtil.jcell_instance (VectorUtil.jnew_0)))
  VectorUtil.jcell_instance)

(define (VectorUtil.jnew_0)
  (define this (new VectorUtil% [jclass "VectorUtil"]))
  this)

(define (VectorUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (VectorUtil.jstatic_instance)))))



