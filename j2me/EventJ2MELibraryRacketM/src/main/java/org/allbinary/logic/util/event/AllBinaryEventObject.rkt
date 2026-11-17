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
;; package org.allbinary.logic.util.event

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define AllBinaryEventObject%
  (class JObject%
    (super-new)
    (field [f_source JR.null])
    (define/public (jm_getSource_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_source this)))))
    (define/public (jm_setSource_1 _source)
    (let ()
      (let/ec jreturn
        (set-field! f_source this _source))))))

(define AllBinaryEventObject.jcell_NULL_EVENT 'jnone)
(define (AllBinaryEventObject.jstatic_NULL_EVENT)
  (when (eq? AllBinaryEventObject.jcell_NULL_EVENT 'jnone) (set! AllBinaryEventObject.jcell_NULL_EVENT (AllBinaryEventObject.jnew_1 (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))))
  AllBinaryEventObject.jcell_NULL_EVENT)

(define (AllBinaryEventObject.jnew_1 _anyType)
  (define this (new AllBinaryEventObject% [jclass "AllBinaryEventObject"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_source this _anyType)))
  this)



