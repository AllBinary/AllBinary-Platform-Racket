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
;; package org.allbinary.math

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./Angle.rkt")
(provide (all-defined-out))

(define NamedAngle%
  (class Angle%
    (super-new)
    (field [f_name JR.null])))
(define (NamedAngle.jclassValue) NamedAngle%)

(define (NamedAngle.jnew_2 _angle _name)
  (define this (new NamedAngle% [jclass "NamedAngle"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_name this _name)))
  this)



