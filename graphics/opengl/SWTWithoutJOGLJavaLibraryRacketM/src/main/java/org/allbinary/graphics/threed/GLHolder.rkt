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
;; package org.allbinary.graphics.threed

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define GLHolder%
  (class JObject%
    (super-new)
    (field [f_isCreated #f])
    (define/public (jm_runOnSurfaceCreated_1 _renderer)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_runOnSurfaceChanged_3 _renderer _width _height)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_run_1 _renderer)
    (let ()
      (let/ec jreturn (void))))))
(define (GLHolder.jclassValue) GLHolder%)

(define (GLHolder.jnew_0)
  (define this (new GLHolder% [jclass "GLHolder"]))
    (set-field! f_isCreated this #t)
    (let ()
      (let/ec jreturn (void)))
  this)



