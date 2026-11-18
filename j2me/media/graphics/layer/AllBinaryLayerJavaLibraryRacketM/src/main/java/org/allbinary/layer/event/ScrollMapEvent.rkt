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
;; package org.allbinary.layer.event

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/AllBinaryEventObject.rkt")
(provide (all-defined-out))

(define ScrollMapEvent%
  (class AllBinaryEventObject%
    (super-new)
    (field [f_dx 0])
    (field [f_dy 0])
    (define/public (jm_setDx_1 _dx)
    (let ()
      (let/ec jreturn
        (set-field! f_dx this _dx))))
    (define/public (jm_getDx_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_dx this)))))
    (define/public (jm_setDy_1 _dy)
    (let ()
      (let/ec jreturn
        (set-field! f_dy this _dy))))
    (define/public (jm_getDy_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_dy this)))))
    (define/public (jm_setDxDy_2 _dx _dy)
    (let ()
      (let/ec jreturn
        (set-field! f_dx this _dx)
        (set-field! f_dy this _dy))))))
(define (ScrollMapEvent.jclassValue) ScrollMapEvent%)

(define (ScrollMapEvent.jnew_1 _anyType)
  (define this (new ScrollMapEvent% [jclass "ScrollMapEvent"]))
    
    
    (let ()
      (let/ec jreturn
        (void)))
  this)



