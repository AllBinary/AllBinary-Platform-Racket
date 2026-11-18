#lang racket/base
;; 
;; To change this license header, choose License Headers in Project Properties. 
;; To change this template file, choose Tools | Templates 
;; and open the template in the editor.  
;; Generated Code Do Not Modify
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define TouchButtonResource%
  (class JObject%
    (super-new)
    (field [f_RESOURCE JR.null])
    (field [f_HINT JR.null])))
(define (TouchButtonResource.jclassValue) TouchButtonResource%)

(define (TouchButtonResource.jnew_2 _resource _hint)
  (define this (new TouchButtonResource% [jclass "TouchButtonResource"]))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_RESOURCE this _resource)
        (set-field! f_HINT this _hint)))
  this)



