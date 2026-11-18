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
;; package org.allbinary.graphics.paint

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./Paintable.rkt"
  "./InitUpdatePaintableInterface.rkt")
(provide (all-defined-out))

(define InitUpdatePaintable%
  (class Paintable%
    (super-new)
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_update_0)
    (let ()
      (let/ec jreturn (void))))))
(define (InitUpdatePaintable.jclassValue) InitUpdatePaintable%)

(define (InitUpdatePaintable.jnew_0)
  (define this (new InitUpdatePaintable% [jclass "InitUpdatePaintable"]))
    (let ()
      (let/ec jreturn (void)))
  this)



