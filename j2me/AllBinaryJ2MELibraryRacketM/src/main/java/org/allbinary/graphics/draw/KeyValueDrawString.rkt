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
;; package org.allbinary.graphics.draw

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt")
(lazy-require ["../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define KeyValueDrawString%
  (class JObject%
    (super-new)
    (field [f_myFontProcessor JR.null])
    (field [f_LABEL JR.null])
    (field [f_labelX 0])
    (field [f_valueX 0])
    (field [f_value JR.null])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_labelWidth JR.null])
      (let/ec jreturn
        (set! _labelWidth (JR.i32 (- (JR.className (send _graphics jm_getFont_0)) (string-length (get-field f_LABEL this)))))
        (set-field! f_valueX this (JR.i32 (+ _labelWidth (get-field f_labelX this))))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/public (jm_paint_2 _graphics _y)
    (let ()
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (send _graphics jm_drawString_4 (get-field f_LABEL this) (get-field f_labelX this) _y 0)
        (send _graphics jm_drawString_4 (get-field f_value this) (get-field f_valueX this) _y 0))))
    (define/public (jm_update_1 _value)
    (let ()
      (let/ec jreturn
        (set-field! f_value this _value))))))
(define (KeyValueDrawString.jclassValue) KeyValueDrawString%)

(define (KeyValueDrawString.jnew_2 _label _x)
  (define this (new KeyValueDrawString% [jclass "KeyValueDrawString"]))
    (set-field! f_myFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    
    
    
    (set-field! f_value this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (set-field! f_LABEL this _label)
        (set-field! f_labelX this _x)))
  this)



