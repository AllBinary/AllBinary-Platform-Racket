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
;; package org.allbinary.graphics.form

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "./ScrollSelectionForm.rkt")
(lazy-require ["../../../../org/allbinary/canvas/Processor.rkt" (Processor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(lazy-require ["./ItemIndexDx.rkt" (ItemIndexDx.jm_getInstance_0)])
(lazy-require ["./FormTypeFactory.rkt" (FormTypeFactory.jm_getInstance_0)])
(lazy-require ["./VerticalFormProcessor.rkt" (VerticalFormProcessor.jnew_1)])
(lazy-require ["./VerticalItemIndexDx.rkt" (VerticalItemIndexDx.jnew_1)])
(lazy-require ["./HorizontalFormProcessor.rkt" (HorizontalFormProcessor.jnew_1)])
(lazy-require ["./HorizontalItemIndexDx.rkt" (HorizontalItemIndexDx.jnew_1)])
(lazy-require ["./TempHorizontalFormProcessor.rkt" (TempHorizontalFormProcessor.jnew_1)])
(lazy-require ["./TempHorizontalItemIndexDx.rkt" (TempHorizontalItemIndexDx.jnew_1)])
(provide (all-defined-out))

(define ScrollCurrentSelectionForm%
  (class ScrollSelectionForm%
    (super-new)
    (field [f_moveForSmallScreen #f])
    (field [f_updateMyFontProcessor JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_processor JR.null])
    (field [f_preItemIndexDx JR.null])
    (field [f_dx 0])
    (field [f_dy 0])
    (field [f_maxWidth 0])
    (define/override (jm_init_2 _rectangle _formType)
    (let ([_formTypeFactory JR.null])
      (let/ec jreturn
        (super jm_init_2 _rectangle _formType)
        (set! _formTypeFactory (FormTypeFactory.jm_getInstance_0))
        (if (eq? _formType (get-field f_TEMP_HORIZONTAL_FORM _formTypeFactory))
            (begin
            (set-field! f_processor this (TempHorizontalFormProcessor.jnew_1 this))
            (set-field! f_preItemIndexDx this (TempHorizontalItemIndexDx.jnew_1 this)))
            (if (eq? _formType (get-field f_HORIZONTAL_FORM _formTypeFactory))
            (begin
            (set-field! f_processor this (HorizontalFormProcessor.jnew_1 this))
            (set-field! f_preItemIndexDx this (HorizontalItemIndexDx.jnew_1 this)))
            (if (eq? _formType (get-field f_VERTICAL_CENTER_FORM _formTypeFactory))
            (begin
            (set-field! f_processor this (VerticalFormProcessor.jnew_1 this))
            (set-field! f_preItemIndexDx this (VerticalItemIndexDx.jnew_1 this)))
            (if (eq? _formType (get-field f_NULL_FORM_TYPE _formTypeFactory))
            (begin
            (void))
            (begin
            (JR.className (get-field f_logUtil this)))))))
        (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this)))))
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ()
      (let/ec jreturn
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/public (jm_processTempHorizontalForm_0)
    (let ()
      (let/ec jreturn
        (set-field! f_dx this (JR.i32 (+ (JR.i32 (- (get-field f_x this) 30)) (arithmetic-shift (send (get-field f_rectangle this) jm_getWidth_0) (- (bitwise-and 1 31))))))
        (set-field! f_dy this (get-field f_y this)))))
    (define/public (jm_processHorizontalForm_0)
    (let ([_size JR.null][_totalWidth JR.null][_item JR.null][_index JR.null][_maxTitleHeight JR.null])
      (let/ec jreturn
        (set! _size (send this jm_size_0))
        (set! _totalWidth 0)
        (set! _item JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _item (send this jm_get_1 _index))
            (set! _totalWidth (JR.i32 (+ _totalWidth (JR.i32 (+ (send _item jm_getMinimumWidth_0) (get-field f_border this)))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set-field! f_dx this (JR.i32 (- (JR.i32 (+ (get-field f_x this) (arithmetic-shift (send (get-field f_rectangle this) jm_getWidth_0) (- (bitwise-and 1 31))))) (arithmetic-shift _totalWidth (- (bitwise-and 1 31))))))
        (set-field! f_dy this (JR.i32 (+ (get-field f_y this) (arithmetic-shift (send (get-field f_rectangle this) jm_getHeight_0) (- (bitwise-and 1 31))))))
        (when (get-field f_moveForSmallScreen this)
            (begin
            (set! _maxTitleHeight 175)
            (when (< (get-field f_dy this) _maxTitleHeight)
                (begin
                (set-field! f_dy this _maxTitleHeight))))))))
    (define/public (jm_processVerticalForm_0)
    (let ([_totalHeight JR.null][_size JR.null][_item2 JR.null][_index JR.null][_maxTitleHeight JR.null])
      (let/ec jreturn
        (set! _totalHeight 0)
        (set! _size (send this jm_size_0))
        (set! _item2 JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _item2 (send this jm_get_1 _index))
            (when (< (get-field f_maxWidth this) (send _item2 jm_getMinimumWidth_0))
                (begin
                (set-field! f_maxWidth this (send _item2 jm_getMinimumWidth_0))))
            (set! _totalHeight (JR.i32 (+ _totalHeight (JR.i32 (+ (send _item2 jm_getMinimumHeight_0) (get-field f_border this)))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set-field! f_dx this (JR.idiv (JR.i32 (- (send (get-field f_rectangle this) jm_getWidth_0) (get-field f_maxWidth this))) 2))
        (if (> (send this jm_size_0) 0)
            (begin
            (set-field! f_dy this (JR.i32 (+ (get-field f_y this) (JR.idiv (JR.i32 (- (send (get-field f_rectangle this) jm_getHeight_0) _totalHeight)) 2))))
            (when (get-field f_moveForSmallScreen this)
                (begin
                (set! _maxTitleHeight 175)
                (when (< (get-field f_dy this) _maxTitleHeight)
                    (begin
                    (set-field! f_dy this _maxTitleHeight))))))
            (begin
            (set-field! f_dy this (get-field f_y this)))))))
    (define/public (jm_getXTempHorizontalForm_4 _index _item _dx _dy)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getDiffX_1 _item)))))
    (define/public (jm_getXHorizontalForm_4 _index _item _dx _dy)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_getXVerticalForm_4 _index _item _dx _dy)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (+ (send this jm_getDiffX_1 _item) (get-field f_halfBorder this)))))))
    (define/override (jm_getDiffX_1 _item)
    (let ()
      (let/ec jreturn
        (jreturn (arithmetic-shift (JR.i32 (- (get-field f_maxWidth this) (send _item jm_getMinimumWidth_0))) (- (bitwise-and 1 31)))))))
    (define/override (jm_getDx_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_dx this)))))
    (define/override (jm_getDy_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_dy this)))))
    (define/override (jm_paint_1 _graphics)
    (let ([_delta JR.null][_deltaX JR.null][_deltaY JR.null][_size JR.null][_formTypeFactory JR.null][_item JR.null][_diffX JR.null][_index JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (send (get-field f_processor this) jm_process_0)
            (set! _delta 0)
            (set! _deltaX (send this jm_getDx_0))
            (set! _deltaY (send this jm_getDy_0))
            (set! _size (send this jm_size_0))
            (set! _formTypeFactory (FormTypeFactory.jm_getInstance_0))
            (set! _item JR.null)
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index _size)
                    (let/ec jcontinue
                (set! _item (send this jm_get_1 _index))
                (set! _diffX (send (get-field f_preItemIndexDx this) jm_getDx_4 _index _item (get-field f_dx this) (get-field f_dy this)))
                (if (= _index (send this jm_getSelectedIndex_0))
                    (begin
                    (set! _delta (send this jm_paintItem_5 _graphics _index _item (JR.i32 (+ _deltaX _diffX)) _deltaY))
                    (JR.className (get-field f_paintable this)))
                    (begin
                    (set! _delta (send this jm_paintUnselectedItem_5 _graphics _index _item (JR.i32 (+ _deltaX _diffX)) _deltaY))
                    (JR.className (get-field f_paintable this))))
                (if (eq? (get-field f_formType this) (get-field f_TEMP_HORIZONTAL_FORM _formTypeFactory))
                    (begin
                    (void))
                    (if (eq? (get-field f_formType this) (get-field f_HORIZONTAL_FORM _formTypeFactory))
                    (begin
                    (set! _deltaX _delta))
                    (if (eq? (get-field f_formType this) (get-field f_VERTICAL_CENTER_FORM _formTypeFactory))
                    (begin
                    (set! _deltaY _delta))
                    (begin
                    (raise (JR.newException "Exception" (get-field f_UNK _formTypeFactory))))))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop)))))))))))
(define (ScrollCurrentSelectionForm.jclassValue) ScrollCurrentSelectionForm%)

(define (ScrollCurrentSelectionForm.jnew_8 _title _items _formPaintableFactory _border _adjustedExtraBorder _moveForSmallScreen _backgroundBasicColor _foregroundBasicColor)
  (define this (new ScrollCurrentSelectionForm% [jclass "ScrollCurrentSelectionForm"]))
    
    (set-field! f_updateMyFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this))
    (set-field! f_processor this (Processor.jm_getInstance_0))
    (set-field! f_preItemIndexDx this (ItemIndexDx.jm_getInstance_0))
    
    
    (set-field! f_maxWidth this 0)
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_moveForSmallScreen this _moveForSmallScreen)))
  this)



