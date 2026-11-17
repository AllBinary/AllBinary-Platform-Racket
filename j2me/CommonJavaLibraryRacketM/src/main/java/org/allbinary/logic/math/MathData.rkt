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
;; package org.allbinary.logic.math

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/string/CommonPhoneStrings.rkt" (CommonPhoneStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define MathData%
  (class JObject%
    (super-new)
    (field [f_EQUALS JR.null])
    (field [f_PLUS JR.null])
    (field [f_GREATER_THAN JR.null])
    (field [f_MINUS JR.null])
    (field [f_DIVIDE JR.null])
    (field [f_MULTIPLY JR.null])))

(define MathData.jcell_instance 'jnone)
(define (MathData.jstatic_instance)
  (when (eq? MathData.jcell_instance 'jnone) (set! MathData.jcell_instance (MathData.jnew_0)))
  MathData.jcell_instance)

(define (MathData.jnew_0)
  (define this (new MathData% [jclass "MathData"]))
    
    (set-field! f_PLUS this "+")
    (set-field! f_GREATER_THAN this ">")
    
    
    
    (let ([_commonSeps JR.null])
      (let/ec jreturn
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (set-field! f_EQUALS this (get-field f_EQUALS _commonSeps))
        (set-field! f_MINUS this (get-field f_DASH _commonSeps))
        (set-field! f_DIVIDE this (get-field f_FORWARD_SLASH _commonSeps))
        (set-field! f_MULTIPLY this (get-field f_STAR (CommonPhoneStrings.jm_getInstance_0)))))
  this)

(define (MathData.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MathData.jstatic_instance)))))



