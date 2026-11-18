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
(provide (all-defined-out))

(define BasicColorUtil%
  (class JObject%
    (super-new)
    (field [f_ZERO_ARRAY JR.null])
    (field [f_ALPHA 0])
    (field [f_isAlpha #f])
    (field [f_ffOpaque #f])
    (define/public (jm_getRGB_3 _red _green _blue)
    (let ([_value JR.null])
      (let/ec jreturn
        (set! _value 0)
        (when (get-field f_isAlpha this)
            (begin
            (when (get-field f_ffOpaque this)
                (begin
                (set! _value (get-field f_ALPHA this))))))
        (set! _value (bitwise-ior (JR.i32 (arithmetic-shift _red (bitwise-and 16 31))) _value))
        (set! _value (bitwise-ior (JR.i32 (arithmetic-shift _green (bitwise-and 8 31))) _value))
        (set! _value (bitwise-ior _blue _value))
        (jreturn _value))))
    (define/public (jm_getARGB_4 _alphaValue _r _g _b)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (+ (JR.i32 (+ (JR.i32 (+ (bitwise-and (JR.i32 (arithmetic-shift _alphaValue (bitwise-and 24 31))) (get-field f_ALPHA this)) (bitwise-and (JR.i32 (arithmetic-shift _r (bitwise-and 16 31))) #x00FF0000))) (bitwise-and (JR.i32 (arithmetic-shift _g (bitwise-and 8 31))) #x0000FF00))) (bitwise-and _b #x000000FF)))))))
    (define/public (jm_get_2 _alphaValue _color)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (+ (bitwise-and (JR.i32 (arithmetic-shift _alphaValue (bitwise-and 24 31))) (get-field f_ALPHA this)) _color))))))
    (define/public (jm_invert_1 _color)
    (let ()
      (let/ec jreturn
        (jreturn (bitwise-ior (JR.i32 (- #xFFFFFF _color)) (get-field f_ALPHA this))))))))
(define (BasicColorUtil.jclassValue) BasicColorUtil%)

(define BasicColorUtil.jcell_instance 'jnone)
(define (BasicColorUtil.jstatic_instance)
  (when (eq? BasicColorUtil.jcell_instance 'jnone) (set! BasicColorUtil.jcell_instance (BasicColorUtil.jnew_0)))
  BasicColorUtil.jcell_instance)
(define (BasicColorUtil.jsetstatic_instance value) (set! BasicColorUtil.jcell_instance value))

(define (BasicColorUtil.jnew_0)
  (define this (new BasicColorUtil% [jclass "BasicColorUtil"]))
    (set-field! f_ZERO_ARRAY this (JR.newArray JR.null 0))
    (set-field! f_ALPHA this #xFF000000)
    (set-field! f_isAlpha this #t)
    (set-field! f_ffOpaque this #t)
  this)

(define (BasicColorUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BasicColorUtil.jstatic_instance)))))



