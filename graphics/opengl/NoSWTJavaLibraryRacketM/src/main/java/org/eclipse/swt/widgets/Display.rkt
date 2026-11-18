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
;; package org.eclipse.swt.widgets

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define Display%
  (class JObject%
    (super-new)
    (define/public (jm_sleep_0)
    (let ()
      (let/ec jreturn (void))))))
(define (Display.jclassValue) Display%)

(define (Display.jnew_0)
  (define this (new Display% [jclass "Display"]))
  this)



