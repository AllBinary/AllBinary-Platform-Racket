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
;; package org.allbinary.util

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./BasicArrayListS.rkt")
(lazy-require ["../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(provide (all-defined-out))

(define ImmutableBasicArrayList%
  (class BasicArrayListS%
    (super-new)
    (field [f_name JR.null])
    (define/override (jm_add_1 _e)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_name this) this)
        (jreturn #t))))
    (define/override (jm_addAt_2 _index _element)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_name this) this))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))))
(define (ImmutableBasicArrayList.jclassValue) ImmutableBasicArrayList%)

(define (ImmutableBasicArrayList.jnew_2 _name _size)
  (define this (new ImmutableBasicArrayList% [jclass "ImmutableBasicArrayList"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_name this _name)))
  this)



