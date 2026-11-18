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
;; package org.allbinary.image.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/io/IOException.rkt"
  "../../../../java/io/InputStream.rkt")
(provide (all-defined-out))

(define OpenGLImageUtilBase%
  (class JObject%
    (super-new)
    (define/public (jm_paint_3 _alphaBitmap _originalBitmap _index)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_paint_4 _colorBitmap _originalBitmap _alpha _basicColor)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_createImage_1 _name)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_createImageFromInputStream_1 _inputStream)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))))
(define (OpenGLImageUtilBase.jclassValue) OpenGLImageUtilBase%)

(define (OpenGLImageUtilBase.jnew_0)
  (define this (new OpenGLImageUtilBase% [jclass "OpenGLImageUtilBase"]))
  this)



