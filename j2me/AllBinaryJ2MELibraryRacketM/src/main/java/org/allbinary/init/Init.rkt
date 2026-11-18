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
;; package org.allbinary.init

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./InitInterface.rkt")
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define Init%
  (class JObject%
    (super-new)
    (field [f_commonStrings JR.null])
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn (void))))))
(define (Init.jclassValue) Init%)

(define (Init.jnew_0)
  (define this (new Init% [jclass "Init"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
  this)



