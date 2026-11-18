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

(define ItemIndexDx%
  (class JObject%
    (super-new)
    (define/public (jm_getDx_4 _index _item _dx _dy)
    (let ()
      (let/ec jreturn
        (jreturn 0))))))
(define (ItemIndexDx.jclassValue) ItemIndexDx%)

(define ItemIndexDx.jcell_instance 'jnone)
(define (ItemIndexDx.jstatic_instance)
  (when (eq? ItemIndexDx.jcell_instance 'jnone) (set! ItemIndexDx.jcell_instance (ItemIndexDx.jnew_0)))
  ItemIndexDx.jcell_instance)
(define (ItemIndexDx.jsetstatic_instance value) (set! ItemIndexDx.jcell_instance value))

(define (ItemIndexDx.jnew_0)
  (define this (new ItemIndexDx% [jclass "ItemIndexDx"]))
  this)

(define (ItemIndexDx.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ItemIndexDx.jstatic_instance)))))



