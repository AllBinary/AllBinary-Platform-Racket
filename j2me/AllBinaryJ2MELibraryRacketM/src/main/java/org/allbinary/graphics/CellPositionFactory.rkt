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
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./CellPosition.rkt" (CellPosition.jnew_4)])
(provide (all-defined-out))

(define CellPositionFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_NONE JR.null])
    (field [f_cellPositionArray JR.null])
    (field [f_columns 0])
    (field [f_rows 0])
    (define/public (jm_init_2 _columns _rows)
    (let ([_commonStrings JR.null][_stringBuffer JR.null][_row JR.null][_column JR.null])
      (let/ec jreturn
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "Init: columns: ")
        (send _stringBuffer jm_appendint_1 _columns)
        (send _stringBuffer jm_append_1 " rows: ")
        (send _stringBuffer jm_appendint_1 _rows)
        (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this (get-field f_INIT _commonStrings))
        (set-field! f_cellPositionArray this (JR.newArray JR.null _columns _rows))
        (set-field! f_columns this _columns)
        (set-field! f_rows this _rows)
        (begin
            (set! _column 0)
            (let/ec jbreak (let jloop () (when (< _column _columns)
                (let/ec jcontinue
            (begin
                (set! _row 0)
                (let/ec jbreak (let jloop () (when (< _row _rows)
                    (let/ec jcontinue
                (send this jm_createInstance_2 _column _row))
                    (set! _row (JR.i32 (+ _row 1))) (jloop))))))
                (set! _column (JR.i32 (+ _column 1))) (jloop))))))))
    (define/public (jm_getInstanceColRow_2 _i_column _i_row)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (send (send (send (send (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 "columns: ") jm_appendint_1 (send this jm_getColumns_0)) jm_append_1 " rows: ") jm_appendint_1 (send this jm_getRows_0)) jm_append_1 " col: ") jm_appendint_1 _i_column) jm_append_1 " row: ") jm_appendint_1 _i_row) jm_toString_0) this (get-field f_GET_INSTANCE _commonStrings) _e)
            (jreturn (get-field f_NONE this)))])
            (jreturn (vector-ref (vector-ref (get-field f_cellPositionArray this) _i_column) _i_row))))))
    (define/public (jm_createInstance_2 _i_column _i_row)
    (let ([_cellPositionCanBeNull JR.null])
      (let/ec jreturn
        (set! _cellPositionCanBeNull (vector-ref (vector-ref (get-field f_cellPositionArray this) _i_column) _i_row))
        (when (JR.null? _cellPositionCanBeNull)
            (begin
            (set! _cellPositionCanBeNull (CellPosition.jnew_4 _i_column _i_row (get-field f_columns this) (get-field f_rows this)))
            (vector-set! (vector-ref (get-field f_cellPositionArray this) _i_column) _i_row _cellPositionCanBeNull)))
        (jreturn _cellPositionCanBeNull))))
    (define/public (jm_getColumns_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_columns this)))))
    (define/public (jm_getRows_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_rows this)))))))
(define (CellPositionFactory.jclassValue) CellPositionFactory%)

(define CellPositionFactory.jcell_SINGLETON 'jnone)
(define (CellPositionFactory.jstatic_SINGLETON)
  (when (eq? CellPositionFactory.jcell_SINGLETON 'jnone) (set! CellPositionFactory.jcell_SINGLETON (CellPositionFactory.jnew_0)))
  CellPositionFactory.jcell_SINGLETON)
(define (CellPositionFactory.jsetstatic_SINGLETON value) (set! CellPositionFactory.jcell_SINGLETON value))

(define (CellPositionFactory.jnew_0)
  (define this (new CellPositionFactory% [jclass "CellPositionFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_NONE this (CellPosition.jnew_4 (JR.i32 (- 1)) (JR.i32 (- 1)) (JR.i32 (- 1)) (JR.i32 (- 1))))
    (set-field! f_cellPositionArray this (JR.newArray JR.null 0 0))
    
    
    (let ()
      (let/ec jreturn (void)))
  this)

(define (CellPositionFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CellPositionFactory.jstatic_SINGLETON)))))



