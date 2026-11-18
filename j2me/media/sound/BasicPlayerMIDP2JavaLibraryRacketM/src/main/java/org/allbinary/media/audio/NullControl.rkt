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
;; package org.allbinary.media.audio

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../javax/microedition/media/Control.rkt")
(provide (all-defined-out))

(define NullControl%
  (class JObject%
    (super-new)))
(define (NullControl.jclassValue) NullControl%)

(define (NullControl.jnew_0)
  (define this (new NullControl% [jclass "NullControl"]))
  this)



