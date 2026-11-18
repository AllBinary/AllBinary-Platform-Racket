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
;; package org.allbinary.graphics

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/graph/V.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define CellPosition%
  (class V%
    (super-new)
    (field [f_id 0])
    (field [f_column 0])
    (field [f_row 0])
    (define/public (jm_getColumn_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_column this)))))
    (define/public (jm_getRow_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_row this)))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (CellPosition.jm_toStringColRow_2 (send this jm_getColumn_0) (send this jm_getRow_0))))))
    (define/override (jm_getId_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_id this)))))))
(define (CellPosition.jclassValue) CellPosition%)

(define (CellPosition.jnew_4 _column _row _columns _rows)
  (define this (new CellPosition% [jclass "CellPosition"]))
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_column this _column)
        (set-field! f_row this _row)
        (set-field! f_id this (JR.i32 (+ (JR.i32 (* _row _columns)) _column)))))
  this)

(define (CellPosition.jm_toStringCellPosition_1 _basicGeographicMapCellPosition)
    (let ()
      (let/ec jreturn
        (jreturn (CellPosition.jm_toStringColRow_2 (send _basicGeographicMapCellPosition jm_getColumn_0) (send _basicGeographicMapCellPosition jm_getRow_0))))))

(define (CellPosition.jm_toStringColRow_2 _i_column _i_row)
    (let ([_stringBuffer JR.null][_commonSeps JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (send _stringBuffer jm_append_1 (get-field f_PARENTHESIS_OPEN _commonSeps))
        (send _stringBuffer jm_appendint_1 _i_column)
        (send _stringBuffer jm_append_1 (get-field f_COMMA _commonSeps))
        (send _stringBuffer jm_appendint_1 _i_row)
        (send _stringBuffer jm_append_1 (get-field f_PARENTHESIS_CLOSE _commonSeps))
        (jreturn (send _stringBuffer jm_toString_0)))))



