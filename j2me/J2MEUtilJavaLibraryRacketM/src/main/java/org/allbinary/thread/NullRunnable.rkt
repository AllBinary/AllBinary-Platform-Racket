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
;; package org.allbinary.thread

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./ARunnable.rkt")
(provide (all-defined-out))

(define NullRunnable%
  (class ARunnable%
    (super-new)))

(define NullRunnable.jcell_instance 'jnone)
(define (NullRunnable.jstatic_instance)
  (when (eq? NullRunnable.jcell_instance 'jnone) (set! NullRunnable.jcell_instance (NullRunnable.jnew_0)))
  NullRunnable.jcell_instance)

(define (NullRunnable.jnew_0)
  (define this (new NullRunnable% [jclass "NullRunnable"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (NullRunnable.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullRunnable.jstatic_instance)))))



