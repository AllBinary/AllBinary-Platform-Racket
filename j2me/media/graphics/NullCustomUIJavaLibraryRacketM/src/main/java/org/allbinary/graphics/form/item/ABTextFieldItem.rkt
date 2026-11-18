#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.form.item

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./ABTextItem.rkt")
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define ABTextFieldItem%
  (class ABTextItem%
    (super-new)
    (field [f_font JR.null])
    (define/override (jm_getLabel_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))
    (define/override (jm_setLabel_1 _label)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getString_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))
    (define/public (jm_setString_1 _string)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setFocus_1 _state)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getFontHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_font this) jm_getHeight_0)))))
    (define/public (jm_setBackgroundBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setForegroundBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn (void))))))
(define (ABTextFieldItem.jclassValue) ABTextFieldItem%)

(define (ABTextFieldItem.jnew_10 _canvas _visitor _label _value _maxSize _layout _altText _font _backgroundBasicColor _foregroundBasicColor)
  (define this (new ABTextFieldItem% [jclass "ABTextFieldItem"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_font this _font)))
  this)



