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
;; package org.allbinary.logic.system.security.licensing

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define LockableFeature%
  (class JObject%
    (super-new)
    (field [f_name JR.null])
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))))
(define (LockableFeature.jclassValue) LockableFeature%)

(define (LockableFeature.jnew_1 _name)
  (define this (new LockableFeature% [jclass "LockableFeature"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_name this _name)))
  this)



