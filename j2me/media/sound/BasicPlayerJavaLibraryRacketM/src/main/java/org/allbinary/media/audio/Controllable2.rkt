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
;; package org.allbinary.media.audio

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define Controllable2%
  (class JObject%
    (super-new)
    (define/public (jm_setVolume_2 _leftVolume _rightVolume)
      (raise (JR.newException "AbstractMethodError" "setVolume")))))
(define (Controllable2.jclassValue) Controllable2%)

(define (Controllable2.jnew_0)
  (define this (new Controllable2% [jclass "Controllable2"]))
  this)



