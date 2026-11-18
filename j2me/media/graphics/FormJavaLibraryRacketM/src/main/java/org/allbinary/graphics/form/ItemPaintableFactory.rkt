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
;; package org.allbinary.graphics.form

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./ItemPaintable.rkt")
(provide (all-defined-out))

(define ItemPaintableFactory%
  (class ItemPaintable%
    (super-new)
    (define/public (jm_getInstanceItemPaintable_1 _paintableForm)
    (let ()
      (let/ec jreturn
        (jreturn (ItemPaintableFactory.jstatic_instance)))))))
(define (ItemPaintableFactory.jclassValue) ItemPaintableFactory%)

(define ItemPaintableFactory.jcell_instance 'jnone)
(define (ItemPaintableFactory.jstatic_instance)
  (when (eq? ItemPaintableFactory.jcell_instance 'jnone) (set! ItemPaintableFactory.jcell_instance (ItemPaintableFactory.jnew_0)))
  ItemPaintableFactory.jcell_instance)
(define (ItemPaintableFactory.jsetstatic_instance value) (set! ItemPaintableFactory.jcell_instance value))

(define (ItemPaintableFactory.jnew_0)
  (define this (new ItemPaintableFactory% [jclass "ItemPaintableFactory"]))
  this)

(define (ItemPaintableFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ItemPaintableFactory.jstatic_instance)))))



