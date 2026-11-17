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
;; package org.allbinary.logic.math

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ScaleFactorFactory%
  (class JObject%
    (super-new)
    (field [f_DEFAULT_SCALE_FACTOR 0])
    (field [f_DEFAULT_SCALE_VALUE 0])))

(define ScaleFactorFactory.jcell_instance 'jnone)
(define (ScaleFactorFactory.jstatic_instance)
  (when (eq? ScaleFactorFactory.jcell_instance 'jnone) (set! ScaleFactorFactory.jcell_instance (ScaleFactorFactory.jnew_0)))
  ScaleFactorFactory.jcell_instance)

(define (ScaleFactorFactory.jnew_0)
  (define this (new ScaleFactorFactory% [jclass "ScaleFactorFactory"]))
    (set-field! f_DEFAULT_SCALE_FACTOR this 10)
    (set-field! f_DEFAULT_SCALE_VALUE this 1024)
  this)

(define (ScaleFactorFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ScaleFactorFactory.jstatic_instance)))))



