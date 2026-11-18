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
;; package org.allbinary.graphics.form

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ItemIndexPaintable%
  (class JObject%
    (super-new)
    (define/public (jm_paint_5 _graphics _index _item _dx _dy)
    (let ()
      (let/ec jreturn
        (jreturn 0))))))
(define (ItemIndexPaintable.jclassValue) ItemIndexPaintable%)

(define ItemIndexPaintable.jcell_instance 'jnone)
(define (ItemIndexPaintable.jstatic_instance)
  (when (eq? ItemIndexPaintable.jcell_instance 'jnone) (set! ItemIndexPaintable.jcell_instance (ItemIndexPaintable.jnew_0)))
  ItemIndexPaintable.jcell_instance)
(define (ItemIndexPaintable.jsetstatic_instance value) (set! ItemIndexPaintable.jcell_instance value))

(define (ItemIndexPaintable.jnew_0)
  (define this (new ItemIndexPaintable% [jclass "ItemIndexPaintable"]))
  this)

(define (ItemIndexPaintable.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ItemIndexPaintable.jstatic_instance)))))



