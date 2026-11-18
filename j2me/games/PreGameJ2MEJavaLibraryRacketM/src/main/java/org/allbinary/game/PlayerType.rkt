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
;; package org.allbinary.game

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define PlayerType%
  (class JObject%
    (super-new)
    (field [f_id 0])
    (field [f_name JR.null])
    (define/public (jm_getId_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_id this)))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getName_0)))))))
(define (PlayerType.jclassValue) PlayerType%)

(define (PlayerType.jnew_2 _name _value)
  (define this (new PlayerType% [jclass "PlayerType"]))
    
    (set-field! f_name this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (set-field! f_name this _name)
        (set-field! f_id this _value)))
  this)



