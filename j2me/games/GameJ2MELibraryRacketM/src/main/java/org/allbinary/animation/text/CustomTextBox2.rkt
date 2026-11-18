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
;; package org.allbinary.animation.text

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/form/item/CustomTextBox.rkt")
(provide (all-defined-out))

(define CustomTextBox2%
  (class CustomTextBox%
    (super-new)))
(define (CustomTextBox2.jclassValue) CustomTextBox2%)

(define (CustomTextBox2.jnew_8 _cmdListener _label _text _maxSize _constraints _font _backgroundBasicColor _foregroundBasicColor)
  (define this (new CustomTextBox2% [jclass "CustomTextBox2"]))
    (let ()
      (let/ec jreturn
        (void)
        (JR.className (send this jm_getTextFieldItem_0))))
  this)



