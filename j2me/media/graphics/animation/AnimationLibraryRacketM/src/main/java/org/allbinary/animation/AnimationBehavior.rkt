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
;; package org.allbinary.animation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define AnimationBehavior%
  (class JObject%
    (super-new)
    (define/public (jm_reset_0)
    (let ()
      (let/ec jreturn (void))))))
(define (AnimationBehavior.jclassValue) AnimationBehavior%)

(define AnimationBehavior.jcell_instance 'jnone)
(define (AnimationBehavior.jstatic_instance)
  (when (eq? AnimationBehavior.jcell_instance 'jnone) (set! AnimationBehavior.jcell_instance (AnimationBehavior.jnew_0)))
  AnimationBehavior.jcell_instance)
(define (AnimationBehavior.jsetstatic_instance value) (set! AnimationBehavior.jcell_instance value))

(define (AnimationBehavior.jnew_0)
  (define this (new AnimationBehavior% [jclass "AnimationBehavior"]))
  this)

(define (AnimationBehavior.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AnimationBehavior.jstatic_instance)))))



