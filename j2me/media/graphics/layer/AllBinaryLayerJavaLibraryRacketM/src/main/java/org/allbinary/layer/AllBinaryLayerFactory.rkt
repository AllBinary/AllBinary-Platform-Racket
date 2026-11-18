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
;; package org.allbinary.layer

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./AllBinaryLayerFactoryInterface.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/view/ViewPosition.rkt" (ViewPosition.jm_getInstanceD_0)])
(lazy-require ["./AllBinaryLayer.rkt" (AllBinaryLayer.jnew_3)])
(provide (all-defined-out))

(define AllBinaryLayerFactory%
  (class JObject%
    (super-new)
    (field [f_rectangle JR.null])
    (define/public (jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AllBinaryLayer.jnew_3 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (get-field f_rectangle this) (ViewPosition.jm_getInstanceD_0))))))))
(define (AllBinaryLayerFactory.jclassValue) AllBinaryLayerFactory%)

(define (AllBinaryLayerFactory.jnew_1 _rectangle)
  (define this (new AllBinaryLayerFactory% [jclass "AllBinaryLayerFactory"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_rectangle this _rectangle)))
  this)



