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
;; package org.allbinary.android.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/init/Init.rkt")
(provide (all-defined-out))

(define TouchButtonAndroidResources%
  (class Init%
    (super-new)
    (define/override (jm_init_0)
    (let ()
      (let/ec jreturn (void))))))
(define (TouchButtonAndroidResources.jclassValue) TouchButtonAndroidResources%)

(define (TouchButtonAndroidResources.jnew_0)
  (define this (new TouchButtonAndroidResources% [jclass "TouchButtonAndroidResources"]))
  this)



