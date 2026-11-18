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
;; package org.allbinary.graphics.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define OpenGLVUtilBase%
  (class JObject%
    (super-new)
    (define/public (jm_glTexEnvix_4 _gl _target _pname _param)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_glTexParameterix_4 _gl _target _pname _param)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_glGenerateMipmap_4 _gl _textureId _target _generateMipMap)
    (let ()
      (let/ec jreturn (void))))))
(define (OpenGLVUtilBase.jclassValue) OpenGLVUtilBase%)

(define (OpenGLVUtilBase.jnew_0)
  (define this (new OpenGLVUtilBase% [jclass "OpenGLVUtilBase"]))
  this)



