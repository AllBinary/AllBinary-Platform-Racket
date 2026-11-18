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
;; package org.allbinary.logic.communication.log.config.type

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define LogConfigType%
  (class JObject%
    (super-new)
    (field [f_name JR.null])
    (field [f_description JR.null])
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))
    (define/public (jm_getDescription_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_description this)))))
    (define/public (jm_setName_1 _value)
    (let ()
      (let/ec jreturn
        (set-field! f_name this _value))))
    (define/public (jm_setDescription_1 _value)
    (let ()
      (let/ec jreturn
        (set-field! f_description this _value))))))
(define (LogConfigType.jclassValue) LogConfigType%)

(define (LogConfigType.jnew_2 _name _description)
  (define this (new LogConfigType% [jclass "LogConfigType"]))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_name this _name)
        (set-field! f_description this _description)))
  this)



