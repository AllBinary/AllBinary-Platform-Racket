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
;; package org.allbinary.android.view

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/Runnable.rkt")
(provide (all-defined-out))

(define AllBinaryRenderer%
  (class JObject%
    (super-new)
    (define/public (jm_setRunnable_1 _runnable)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_clearRunnable_0)
    (let ()
      (let/ec jreturn (void))))))
(define (AllBinaryRenderer.jclassValue) AllBinaryRenderer%)

(define AllBinaryRenderer.jcell_instance 'jnone)
(define (AllBinaryRenderer.jstatic_instance)
  (when (eq? AllBinaryRenderer.jcell_instance 'jnone) (set! AllBinaryRenderer.jcell_instance (AllBinaryRenderer.jnew_0)))
  AllBinaryRenderer.jcell_instance)
(define (AllBinaryRenderer.jsetstatic_instance value) (set! AllBinaryRenderer.jcell_instance value))

(define (AllBinaryRenderer.jnew_0)
  (define this (new AllBinaryRenderer% [jclass "AllBinaryRenderer"]))
  this)

(define (AllBinaryRenderer.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AllBinaryRenderer.jstatic_instance)))))



