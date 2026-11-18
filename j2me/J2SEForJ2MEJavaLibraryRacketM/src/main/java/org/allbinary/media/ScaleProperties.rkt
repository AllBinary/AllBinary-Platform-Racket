#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
;; package org.allbinary.media

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(provide (all-defined-out))

(define ScaleProperties%
  (class JObject%
    (super-new)
    (field [f_scaleX 0.0])
    (field [f_scaleY 0.0])
    (field [f_scaleWidth 0])
    (field [f_scaleHeight 0])
    (field [f_shouldScale #f])
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (send (send (send (send (send (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_COLON_SEP (CommonLabels.jm_getInstance_0))) jm_appendboolean_1 (get-field f_shouldScale this)) jm_append_1 "scaleX: ") jm_appendfloat_1 (get-field f_scaleX this)) jm_append_1 "scaleY: ") jm_appendfloat_1 (get-field f_scaleY this)) jm_append_1 "scaleWidth: ") jm_appendint_1 (get-field f_scaleWidth this)) jm_append_1 "scaleHeight: ") jm_appendint_1 (get-field f_scaleHeight this)) jm_toString_0)))))))
(define (ScaleProperties.jclassValue) ScaleProperties%)

(define ScaleProperties.jcell_instance 'jnone)
(define (ScaleProperties.jstatic_instance)
  (when (eq? ScaleProperties.jcell_instance 'jnone) (set! ScaleProperties.jcell_instance (ScaleProperties.jnew_0)))
  ScaleProperties.jcell_instance)
(define (ScaleProperties.jsetstatic_instance value) (set! ScaleProperties.jcell_instance value))

(define (ScaleProperties.jnew_0)
  (define this (new ScaleProperties% [jclass "ScaleProperties"]))
    
    
    
    
    
  this)



