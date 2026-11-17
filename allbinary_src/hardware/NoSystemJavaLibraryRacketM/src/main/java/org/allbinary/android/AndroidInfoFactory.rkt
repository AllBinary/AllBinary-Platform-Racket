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
;; package org.allbinary.android

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define AndroidInfoFactory%
  (class JObject%
    (super-new)
    (field [f_version 0])
    (define/public (jm_getVersion_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_version this)))))))

(define AndroidInfoFactory.jcell_instance 'jnone)
(define (AndroidInfoFactory.jstatic_instance)
  (when (eq? AndroidInfoFactory.jcell_instance 'jnone) (set! AndroidInfoFactory.jcell_instance (AndroidInfoFactory.jnew_0)))
  AndroidInfoFactory.jcell_instance)

(define (AndroidInfoFactory.jnew_0)
  (define this (new AndroidInfoFactory% [jclass "AndroidInfoFactory"]))
    (set-field! f_version this 8)
  this)

(define (AndroidInfoFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AndroidInfoFactory.jstatic_instance)))))



