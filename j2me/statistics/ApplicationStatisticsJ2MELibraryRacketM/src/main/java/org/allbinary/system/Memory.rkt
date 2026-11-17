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
;; package org.allbinary.system

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/Runtime.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(provide (all-defined-out))

;ActualPlatform
(define Memory%
  (class JObject%
    (super-new)))

(define (Memory.jnew_0)
  (define this (new Memory% [jclass "Memory"]))
  this)

(define (Memory.jm_getInfo_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "Memory: Free: ")
        (send _stringBuffer jm_appendlong_1 (JR.className (Runtime.jm_getRuntime_0)))
        (send _stringBuffer jm_append_1 " Total: ")
        (send _stringBuffer jm_appendlong_1 (JR.className (Runtime.jm_getRuntime_0)))
        (jreturn (send _stringBuffer jm_toString_0)))))



