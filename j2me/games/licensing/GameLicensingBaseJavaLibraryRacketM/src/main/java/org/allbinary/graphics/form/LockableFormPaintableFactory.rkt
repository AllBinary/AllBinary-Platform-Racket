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
  "./ItemPaintableFactory.rkt")
(lazy-require ["./LockablePaintable.rkt" (LockablePaintable.jnew_1)])
(provide (all-defined-out))

(define LockableFormPaintableFactory%
  (class ItemPaintableFactory%
    (super-new)
    (field [f_lockedIndex 0])
    (define/override (jm_getInstanceItemPaintable_1 _paintableForm)
    (let ()
      (let/ec jreturn
        (jreturn (LockablePaintable.jnew_1 (get-field f_lockedIndex this))))))))
(define (LockableFormPaintableFactory.jclassValue) LockableFormPaintableFactory%)

(define (LockableFormPaintableFactory.jnew_1 _lockedIndex)
  (define this (new LockableFormPaintableFactory% [jclass "LockableFormPaintableFactory"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_lockedIndex this _lockedIndex)))
  this)



