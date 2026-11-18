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
;; package org.allbinary.logic.math.permutations

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define ComparableObject%
  (class JObject%
    (super-new)
    (define/public (jm_compareTo_1 _anyType)
    (let ()
      (let/ec jreturn
        (if (< (send (TsUtil.jm_getInstance_0) jm_hashCode_1 this) (send (TsUtil.jm_getInstance_0) jm_hashCode_1 _anyType))
            (begin
            (jreturn (JR.i32 (- 1))))
            (when (> (send (TsUtil.jm_getInstance_0) jm_hashCode_1 this) (send (TsUtil.jm_getInstance_0) jm_hashCode_1 _anyType))
            (begin
            (jreturn 1))))
        (jreturn 0))))))
(define (ComparableObject.jclassValue) ComparableObject%)

(define (ComparableObject.jnew_0)
  (define this (new ComparableObject% [jclass "ComparableObject"]))
  this)



