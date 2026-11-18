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
;; package org.allbinary.input

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

;TouchJ2MENone
(define TouchJ2ME%
  (class JObject%
    (super-new)
    (define/public (jm_pointerDragged_2 _x _y)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_pointerPressed_2 _x _y)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_pointerReleased_2 _x _y)
    (let ()
      (let/ec jreturn (void))))))
(define (TouchJ2ME.jclassValue) TouchJ2ME%)

(define (TouchJ2ME.jnew_0)
  (define this (new TouchJ2ME% [jclass "TouchJ2ME"]))
    (let ()
      (let/ec jreturn (void)))
  this)



