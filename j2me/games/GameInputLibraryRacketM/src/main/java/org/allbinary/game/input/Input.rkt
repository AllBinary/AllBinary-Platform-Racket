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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define Input%
  (class JObject%
    (super-new)
    (field [f_id 0])
    (field [f_name JR.null])
    (define/public (jm_getId_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_id this)))))
    (define/public (jm_setId_1 _key)
    (let ()
      (let/ec jreturn
        (set-field! f_id this _key))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))
    (define/public (jm_setName_1 _keyName)
    (let ()
      (let/ec jreturn
        (set-field! f_name this _keyName))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "Name: ")
        (send _stringBuffer jm_append_1 (send this jm_getName_0))
        (send _stringBuffer jm_append_1 " Id: ")
        (send _stringBuffer jm_appendint_1 (send this jm_getId_0))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (Input.jclassValue) Input%)

(define (Input.jnew_2 _id _name)
  (define this (new Input% [jclass "Input"]))
    
    (set-field! f_name this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (send this jm_setId_1 _id)
        (send this jm_setName_1 _name)))
  this)



