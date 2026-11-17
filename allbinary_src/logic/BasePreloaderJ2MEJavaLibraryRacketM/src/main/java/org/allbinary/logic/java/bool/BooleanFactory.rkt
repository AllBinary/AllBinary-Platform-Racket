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
;; package org.allbinary.logic.java.bool

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../java/lang/Boolean.rkt")
(provide (all-defined-out))

(define BooleanFactory%
  (class JObject%
    (super-new)
    (field [f_TRUE JR.null])
    (field [f_FALSE JR.null])
    (field [f_TRUE_STRING JR.null])
    (field [f_FALSE_STRING JR.null])
    (field [f_YES JR.null])
    (field [f_NO JR.null])
    (define/public (jm_toStringb_1 _bool)
    (let ()
      (let/ec jreturn
        (if _bool
            (begin
            (jreturn (get-field f_TRUE_STRING this)))
            (begin
            (jreturn (get-field f_FALSE_STRING this)))))))))

(define BooleanFactory.jcell_instance 'jnone)
(define (BooleanFactory.jstatic_instance)
  (when (eq? BooleanFactory.jcell_instance 'jnone) (set! BooleanFactory.jcell_instance (BooleanFactory.jnew_0)))
  BooleanFactory.jcell_instance)

(define (BooleanFactory.jnew_0)
  (define this (new BooleanFactory% [jclass "BooleanFactory"]))
    (set-field! f_TRUE this #t)
    (set-field! f_FALSE this #f)
    (set-field! f_TRUE_STRING this (send (get-field f_TRUE this) jm_toString_0))
    (set-field! f_FALSE_STRING this (send (get-field f_FALSE this) jm_toString_0))
    (set-field! f_YES this "yes")
    (set-field! f_NO this "no")
  this)

(define (BooleanFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BooleanFactory.jstatic_instance)))))



