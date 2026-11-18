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
;; package org.allbinary.animation.text

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define TextInterface%
  (class JObject%
    (super-new)
    (define/public (jm_setTextWithOnMeasure_2 _text _textChangeListener)
      (raise (JR.newException "AbstractMethodError" "setTextWithOnMeasure")))
    (define/public (jm_getText_0)
      (raise (JR.newException "AbstractMethodError" "getText")))
    (define/public (jm_setText_1 _text)
      (raise (JR.newException "AbstractMethodError" "setText")))
    (define/public (jm_getFontHeight_0)
      (raise (JR.newException "AbstractMethodError" "getFontHeight")))
    (define/public (jm_getWidth_0)
      (raise (JR.newException "AbstractMethodError" "getWidth")))))
(define (TextInterface.jclassValue) TextInterface%)

(define (TextInterface.jnew_0)
  (define this (new TextInterface% [jclass "TextInterface"]))
  this)



