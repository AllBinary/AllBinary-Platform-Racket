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
;; package org.allbinary.math

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define Angle%
  (class JObject%
    (super-new)
    (field [f_value 0])
    (define/public (jm_getValue_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_value this)))))))

(define (Angle.jnew_1 _angle)
  (define this (new Angle% [jclass "Angle"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_value this _angle)))
  this)



