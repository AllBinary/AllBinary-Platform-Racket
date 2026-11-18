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
;; package org.allbinary.graphics

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ItemColorFactory%
  (class JObject%
    (super-new)
    (field [f_INVERT_PAINT 0])
    (field [f_PAINT 0])
    (field [f_TEXT_FIELD_NO_FOCUS 0])))
(define (ItemColorFactory.jclassValue) ItemColorFactory%)

(define ItemColorFactory.jcell_instance 'jnone)
(define (ItemColorFactory.jstatic_instance)
  (when (eq? ItemColorFactory.jcell_instance 'jnone) (set! ItemColorFactory.jcell_instance (ItemColorFactory.jnew_0)))
  ItemColorFactory.jcell_instance)
(define (ItemColorFactory.jsetstatic_instance value) (set! ItemColorFactory.jcell_instance value))

(define (ItemColorFactory.jnew_0)
  (define this (new ItemColorFactory% [jclass "ItemColorFactory"]))
    (set-field! f_INVERT_PAINT this #xFF000000)
    (set-field! f_PAINT this #xFFe07718)
    (set-field! f_TEXT_FIELD_NO_FOCUS this #x7F7F7F)
  this)

(define (ItemColorFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ItemColorFactory.jstatic_instance)))))



