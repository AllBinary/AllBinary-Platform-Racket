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
;; package org.allbinary.graphics.color

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["./BasicColorUtil.rkt" (BasicColorUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicColor%
  (class JObject%
    (super-new)
    (field [f_name JR.null])
    (field [f_value 0])
    (field [f_redComponent 0.0])
    (field [f_greenComponent 0.0])
    (field [f_blueComponent 0.0])
    (field [f_alphaComponent 0.0])
    (field [f_red 0])
    (field [f_green 0])
    (field [f_blue 0])
    (field [f_alpha 0])
    (define/public (jm_intValue_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_value this)))))
    (define/public (jm_toInt_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_value this)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "BasicColor: ")
        (send _stringBuffer jm_append_1 "Alpha: ")
        (send _stringBuffer jm_appendshort_1 (get-field f_alpha this))
        (send _stringBuffer jm_append_1 " Red: ")
        (send _stringBuffer jm_appendshort_1 (get-field f_red this))
        (send _stringBuffer jm_append_1 " Green: ")
        (send _stringBuffer jm_appendshort_1 (get-field f_green this))
        (send _stringBuffer jm_append_1 " Blue: ")
        (send _stringBuffer jm_appendshort_1 (get-field f_blue this))
        (send _stringBuffer jm_append_1 " Value: ")
        (send _stringBuffer jm_appendint_1 (get-field f_value this))
        (jreturn (send _stringBuffer jm_toString_0)))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))
    (define/public (jm_getRedComponent_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_redComponent this)))))
    (define/public (jm_getGreenComponent_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_greenComponent this)))))
    (define/public (jm_getBlueComponent_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_blueComponent this)))))
    (define/public (jm_getAlphaComponent_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_alphaComponent this)))))))
(define (BasicColor.jclassValue) BasicColor%)

(define (BasicColor.jnew_3 _alphaValue _value _name)
  (define this (new BasicColor% [jclass "BasicColor"]))
    
    
    
    
    
    
    
    
    
    
    (let ([_tempValue JR.null][_basicColorUtil JR.null][_alphaInt JR.null][_redInt JR.null][_greenInt JR.null][_blueInt JR.null])
      (let/ec jreturn
        (set-field! f_name this _name)
        (set! _tempValue 0)
        (set! _basicColorUtil (BasicColorUtil.jm_getInstance_0))
        (if (get-field f_isAlpha _basicColorUtil)
            (begin
            (if (get-field f_ffOpaque _basicColorUtil)
                (begin
                (set! _tempValue (bitwise-ior _alphaValue _value)))
                (begin
                (set! _tempValue (bitwise-ior #x00000000 _value)))))
            (begin
            (set! _tempValue _value)))
        (set! _alphaInt (bitwise-and (arithmetic-shift _tempValue (- (bitwise-and 24 31))) 255))
        (set-field! f_alpha this (JR.i16 _alphaInt))
        (set-field! f_alphaComponent this (/ (JR.toDouble _alphaInt) 255.0))
        (set! _redInt (bitwise-and (arithmetic-shift _tempValue (- (bitwise-and 16 31))) 255))
        (set-field! f_red this (JR.i16 _redInt))
        (set-field! f_redComponent this (/ (JR.toDouble _redInt) 255.0))
        (set! _greenInt (bitwise-and (arithmetic-shift _tempValue (- (bitwise-and 8 31))) 255))
        (set-field! f_green this (JR.i16 _greenInt))
        (set-field! f_greenComponent this (/ (JR.toDouble _greenInt) 255.0))
        (set! _blueInt (bitwise-and _tempValue 255))
        (set-field! f_blue this (JR.i16 _blueInt))
        (set-field! f_blueComponent this (/ (JR.toDouble _blueInt) 255.0))
        (set-field! f_value this _tempValue)))
  this)



