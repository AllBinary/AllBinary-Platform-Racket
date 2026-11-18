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
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["./CommonButtons.rkt" (CommonButtons.jm_getInstance_0)])
(provide (all-defined-out))

(define TouchButtonLocationHelper%
  (class JObject%
    (super-new)
    (field [f_totalColumns 0])
    (field [f_totalRows 0])
    (field [f_columnsRemainder 0])
    (field [f_rowsRemainder 0])
    (field [f_columnsRemainderHalf 0])
    (field [f_rowsRemainderHalf 0])
    (define/public (jm_getTotalColumns_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_totalColumns this)))))
    (define/public (jm_getTotalRows_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_totalRows this)))))
    (define/public (jm_getColumnsRemainder_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_columnsRemainder this)))))
    (define/public (jm_getRowsRemainder_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_rowsRemainder this)))))
    (define/public (jm_getColumnsRemainderHalf_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_columnsRemainderHalf this)))))
    (define/public (jm_getRowsRemainderHalf_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_rowsRemainderHalf this)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "totalColumns: ")
        (send _stringBuffer jm_appendint_1 (get-field f_totalColumns this))
        (send _stringBuffer jm_append_1 " totalRows: ")
        (send _stringBuffer jm_appendint_1 (get-field f_totalRows this))
        (send _stringBuffer jm_append_1 " columnsRemainder: ")
        (send _stringBuffer jm_appendint_1 (get-field f_columnsRemainder this))
        (send _stringBuffer jm_append_1 " rowsRemainder: ")
        (send _stringBuffer jm_appendint_1 (get-field f_rowsRemainder this))
        (send _stringBuffer jm_append_1 " columnsRemainderHalf: ")
        (send _stringBuffer jm_appendint_1 (get-field f_columnsRemainderHalf this))
        (send _stringBuffer jm_append_1 " rowsRemainderHalf: ")
        (send _stringBuffer jm_appendint_1 (get-field f_rowsRemainderHalf this))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (TouchButtonLocationHelper.jclassValue) TouchButtonLocationHelper%)

(define (TouchButtonLocationHelper.jnew_0)
  (define this (new TouchButtonLocationHelper% [jclass "TouchButtonLocationHelper"]))
    
    
    
    
    
    
    (let ([_buttonSize JR.null][_displayInfo JR.null])
      (let/ec jreturn
        (set! _buttonSize (get-field f_STANDARD_BUTTON_SIZE (CommonButtons.jm_getInstance_0)))
        (set! _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (set-field! f_totalColumns this (round (/ (JR.toDouble (send _displayInfo jm_getLastWidth_0)) (JR.toDouble _buttonSize))))
        (set-field! f_totalRows this (round (/ (JR.toDouble (send _displayInfo jm_getLastHeight_0)) (JR.toDouble _buttonSize))))
        (set-field! f_columnsRemainder this (remainder (send _displayInfo jm_getLastWidth_0) _buttonSize))
        (set-field! f_columnsRemainderHalf this (arithmetic-shift (get-field f_columnsRemainder this) (- (bitwise-and 1 31))))
        (set-field! f_rowsRemainder this (remainder (send _displayInfo jm_getLastHeight_0) _buttonSize))
        (set-field! f_rowsRemainderHalf this (arithmetic-shift (get-field f_rowsRemainder this) (- (bitwise-and 1 31))))))
  this)



