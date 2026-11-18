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
;; package org.allbinary.direction

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(provide (all-defined-out))

(define Direction%
  (class JObject%
    (super-new)
    (field [f_name JR.null])
    (field [f_otherName JR.null])
    (field [f_value 0])
    (field [f_frameFactor 0])
    (define/public (jm_getValue_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_value this)))))
    (define/public (jm_getFrameFactor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_frameFactor this)))))
    (define/public (jm_getOtherName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_otherName this)))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "Direction: ")
        (send _stringBuffer jm_append_1 (send this jm_getName_0))
        (send _stringBuffer jm_append_1 " Or: ")
        (send _stringBuffer jm_append_1 (send this jm_getOtherName_0))
        (send _stringBuffer jm_append_1 " Value: ")
        (send _stringBuffer jm_appendint_1 (get-field f_value this))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (Direction.jclassValue) Direction%)

(define Direction.jcell_directionArray 'jnone)
(define (Direction.jstatic_directionArray)
  (when (eq? Direction.jcell_directionArray 'jnone) (set! Direction.jcell_directionArray (JR.newArray JR.null 13)))
  Direction.jcell_directionArray)
(define (Direction.jsetstatic_directionArray value) (set! Direction.jcell_directionArray value))

(define (Direction.jnew_4 _name _otherName _value _frameFactor)
  (define this (new Direction% [jclass "Direction"]))
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_name this _name)
        (set-field! f_otherName this _otherName)
        (set-field! f_value this _value)
        (set-field! f_frameFactor this _frameFactor)
        (vector-set! (Direction.jstatic_directionArray) _value this)))
  this)

(define (Direction.jm_getInstance_1 _direction)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (Direction.jstatic_directionArray) _direction)))))



