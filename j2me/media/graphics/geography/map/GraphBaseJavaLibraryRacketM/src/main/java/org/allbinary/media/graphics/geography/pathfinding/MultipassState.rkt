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
;; package org.allbinary.media.graphics.geography.pathfinding

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define MultipassState%
  (class JObject%
    (super-new)
    (field [f_step 0])
    (field [f_iteration 0])
    (field [f_iteration2 0])))
(define (MultipassState.jclassValue) MultipassState%)

(define (MultipassState.jnew_0)
  (define this (new MultipassState% [jclass "MultipassState"]))
    
    
    
  this)



