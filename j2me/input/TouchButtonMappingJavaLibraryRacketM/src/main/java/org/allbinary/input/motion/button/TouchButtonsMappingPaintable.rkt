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
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/graphics/paint/Paintable.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/CellPositionFactory.rkt" (CellPositionFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./TouchButtonLocationHelper.rkt" (TouchButtonLocationHelper.jnew_0)])
(lazy-require ["./CommonButtons.rkt" (CommonButtons.jm_getInstance_0)])
(lazy-require ["./TouchButton.rkt" (TouchButton.jm_createButton_6)])
(lazy-require ["./BasicTouchInputFactory.rkt" (BasicTouchInputFactory.jm_getInstance_0)])
(lazy-require ["./TouchButtonBlankResource.rkt" (TouchButtonBlankResource.jm_getInstance_0)])
(provide (all-defined-out))

(define TouchButtonsMappingPaintable%
  (class Paintable%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_foregroundColor 0])
    (field [f_paintableTable JR.null])
    (field [f_touchButtonLocationHelper JR.null])
    (define/public (jm_init_0)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this "updateRectangle" _e))])
            (set-field! f_paintableTable this (send this jm_createPaintableTable_0))))))
    (define/public (jm_createPaintableTable_0)
    (let ([_totalColumns JR.null][_totalRows JR.null][_paintableTable JR.null][_cellPositionFactory JR.null][_commonButtons JR.null][_rowIndex JR.null][_index JR.null])
      (let/ec jreturn
        (set! _totalColumns (send (get-field f_touchButtonLocationHelper this) jm_getTotalColumns_0))
        (set! _totalRows (send (get-field f_touchButtonLocationHelper this) jm_getTotalRows_0))
        (set! _paintableTable (JR.newArray JR.null _totalColumns _totalRows))
        (set! _cellPositionFactory (CellPositionFactory.jm_getInstance_0))
        (set! _commonButtons (CommonButtons.jm_getInstance_0))
        (begin
            (set! _index (JR.i32 (- _totalColumns 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (begin
                (set! _rowIndex (JR.i32 (- _totalRows 1)))
                (let/ec jbreak (let jloop () (when (>= _rowIndex 0)
                    (let/ec jcontinue
                (vector-set! (vector-ref (get-field f_paintableTable this) _index) _rowIndex (TouchButton.jm_createButton_6 (get-field f_NONE (BasicTouchInputFactory.jm_getInstance_0)) (TouchButtonBlankResource.jm_getInstance_0) (get-field f_NORMAL_BUTTON _commonButtons) (send _cellPositionFactory jm_getInstanceColRow_2 _index _rowIndex) (send (get-field f_touchButtonLocationHelper this) jm_getColumnsRemainderHalf_0) (send (get-field f_touchButtonLocationHelper this) jm_getRowsRemainderHalf_0))))
                    (set! _rowIndex (JR.i32 (- _rowIndex 1))) (jloop))))))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (jreturn _paintableTable))))
    (define/override (jm_paint_1 _graphics)
    (let ([_totalColumns JR.null][_totalRows JR.null][_rowIndex JR.null][_index JR.null])
      (let/ec jreturn
        (set! _totalColumns (send (get-field f_touchButtonLocationHelper this) jm_getTotalColumns_0))
        (set! _totalRows (send (get-field f_touchButtonLocationHelper this) jm_getTotalRows_0))
        (begin
            (set! _index (JR.i32 (- _totalColumns 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (begin
                (set! _rowIndex (JR.i32 (- _totalRows 1)))
                (let/ec jbreak (let jloop () (when (>= _rowIndex 0)
                    (let/ec jcontinue
                (JR.className (vector-ref (vector-ref (get-field f_paintableTable this) _index) _rowIndex)))
                    (set! _rowIndex (JR.i32 (- _rowIndex 1))) (jloop))))))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))))
(define (TouchButtonsMappingPaintable.jclassValue) TouchButtonsMappingPaintable%)

(define (TouchButtonsMappingPaintable.jnew_1 _basicColor)
  (define this (new TouchButtonsMappingPaintable% [jclass "TouchButtonsMappingPaintable"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    (set-field! f_paintableTable this (JR.newArray JR.null 0 0))
    (set-field! f_touchButtonLocationHelper this (TouchButtonLocationHelper.jnew_0))
    (let ()
      (let/ec jreturn
        (set-field! f_foregroundColor this (send _basicColor jm_intValue_0))
        (send this jm_init_0)))
  this)



