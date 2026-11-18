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
;; package org.allbinary.graphics.form.item.validation

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "./TextFieldItemValidator.rkt")
(provide (all-defined-out))

(define UsernameValidator%
  (class TextFieldItemValidator%
    (super-new)))
(define (UsernameValidator.jclassValue) UsernameValidator%)

(define (UsernameValidator.jnew_4 _textFieldItem _min _max _allowOnEmpty)
  (define this (new UsernameValidator% [jclass "UsernameValidator"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



