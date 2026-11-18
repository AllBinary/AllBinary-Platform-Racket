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
;; package org.allbinary.emulator.device

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define TrueTypeFontUtilBase%
  (class JObject%
    (super-new)
    (define/public (jm_getAsTextureSize_1 _textureSize)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- 1))))))
    (define/public (jm_getCellSize_1 _cellSize)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- 1))))))))
(define (TrueTypeFontUtilBase.jclassValue) TrueTypeFontUtilBase%)

(define (TrueTypeFontUtilBase.jnew_1 _scale)
  (define this (new TrueTypeFontUtilBase% [jclass "TrueTypeFontUtilBase"]))
    (let ()
      (let/ec jreturn (void)))
  this)



