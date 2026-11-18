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
;; package org.allbinary.animation.text

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define TextChangeListener%
  (class JObject%
    (super-new)
    (define/public (jm_onMeasure_0)
    (let ()
      (let/ec jreturn (void))))))
(define (TextChangeListener.jclassValue) TextChangeListener%)

(define TextChangeListener.jcell_instance 'jnone)
(define (TextChangeListener.jstatic_instance)
  (when (eq? TextChangeListener.jcell_instance 'jnone) (set! TextChangeListener.jcell_instance (TextChangeListener.jnew_0)))
  TextChangeListener.jcell_instance)
(define (TextChangeListener.jsetstatic_instance value) (set! TextChangeListener.jcell_instance value))

(define (TextChangeListener.jnew_0)
  (define this (new TextChangeListener% [jclass "TextChangeListener"]))
  this)

(define (TextChangeListener.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TextChangeListener.jstatic_instance)))))



