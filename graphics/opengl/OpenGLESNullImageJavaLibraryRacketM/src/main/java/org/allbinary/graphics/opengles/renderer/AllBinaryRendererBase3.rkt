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
;; package org.allbinary.graphics.opengles.renderer

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define AllBinaryRendererBase3%
  (class JObject%
    (super-new)
    (field [f_list JR.null])
    (define/public (jm_update_1 _gl)
    (let ([_openGLESImage JR.null])
      (let/ec jreturn
        (let/ec jbreak (let jloop () (when (> (send (get-field f_list this) jm_size_0) 0)
                (let/ec jcontinue
            (set! _openGLESImage (send (get-field f_list this) jm_removeAt_1 0))
            (when (not (JR.null? _openGLESImage))
                (begin
                (send _openGLESImage jm_set_1 _gl)))) (jloop)))))))
    (define/public (jm_add_1 _image)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_add_1 _image))))))
(define (AllBinaryRendererBase3.jclassValue) AllBinaryRendererBase3%)

(define (AllBinaryRendererBase3.jnew_0)
  (define this (new AllBinaryRendererBase3% [jclass "AllBinaryRendererBase3"]))
    (set-field! f_list this (BasicArrayListD.jnew_0))
  this)



