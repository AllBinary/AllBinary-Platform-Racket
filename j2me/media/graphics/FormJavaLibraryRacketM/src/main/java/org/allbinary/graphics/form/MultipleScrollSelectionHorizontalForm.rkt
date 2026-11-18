#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.form

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "./ScrollSelectionForm.rkt")
(lazy-require ["../../../../org/allbinary/J2MEUtil.rkt" (J2MEUtil.jm_isJ2ME_0 J2MEUtil.jm_isHTML_0)])
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(lazy-require ["../../../../org/allbinary/graphics/paint/NullPaintable.rkt" (NullPaintable.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["./ItemPaintableFactory.rkt" (ItemPaintableFactory.jm_getInstance_0)])
(lazy-require ["./ItemIndexPaintable.rkt" (ItemIndexPaintable.jm_getInstance_0)])
(lazy-require ["./MultipleScrollSelectionFormRectPaintable.rkt" (MultipleScrollSelectionFormRectPaintable.jnew_1)])
(lazy-require ["./FormTypeFactory.rkt" (FormTypeFactory.jm_getInstance_0)])
(lazy-require ["./MultipleScrollSelectionFormVerticalPaintable.rkt" (MultipleScrollSelectionFormVerticalPaintable.jnew_1)])
(lazy-require ["./MultipleScrollSelectionFormHorizontalPaintable.rkt" (MultipleScrollSelectionFormHorizontalPaintable.jnew_1)])
(provide (all-defined-out))

(define MultipleScrollSelectionHorizontalForm%
  (class ScrollSelectionForm%
    (super-new)
    (field [f_rectPaintable JR.null])
    (field [f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable JR.null])
    (field [f_backgroundColor 0])
    (field [f_myFontProcessor JR.null])
    (field [f_logged #f])
    (field [f_fontHeight 0])
    (define/public (jm_fillRect_1 _graphics)
    (let ()
      (let/ec jreturn
        (send _graphics jm_setColor_1 (get-field f_backgroundColor this))
        (send _graphics jm_fillRect_4 (get-field f_x this) (get-field f_y this) (send (get-field f_rectangle this) jm_getWidth_0) (send (get-field f_rectangle this) jm_getHeight_0)))))
    (define/override (jm_init_2 _rectangle _formType)
    (let ([_formTypeFactory JR.null])
      (let/ec jreturn
        (super jm_init_2 _rectangle _formType)
        (set! _formTypeFactory (FormTypeFactory.jm_getInstance_0))
        (if (eq? _formType (get-field f_HORIZONTAL_FORM _formTypeFactory))
            (begin
            (set-field! f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable this (MultipleScrollSelectionFormHorizontalPaintable.jnew_1 this)))
            (if (eq? _formType (get-field f_VERTICAL_CENTER_FORM _formTypeFactory))
            (begin
            (set-field! f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable this (MultipleScrollSelectionFormVerticalPaintable.jnew_1 this)))
            (if (eq? _formType (get-field f_NULL_FORM_TYPE _formTypeFactory))
            (begin
            (void))
            (begin
            (raise (JR.newException "Exception" (get-field f_UNK _formTypeFactory))))))))))
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set-field! f_fontHeight this (send _font jm_getHeight_0))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/public (jm_paintHorizontal_5 _graphics _index _item _dx _dy)
    (let ([_dx2 JR.null])
      (let/ec jreturn
        (set! _dx2 (JR.i32 (+ (send this jm_paintItem_5 _graphics _index _item _dx _dy) (get-field f_border this))))
        (JR.className (get-field f_paintable this))
        (set! _dx _dx2)
        (jreturn _dx))))
    (define/public (jm_paintVertical_5 _graphics _index _item _dx _dy)
    (let ()
      (let/ec jreturn
        (send this jm_paintItem_5 _graphics _index _item _dx _dy)
        (JR.className (get-field f_paintable this))
        (jreturn _dx))))
    (define/override (jm_getStartIndex_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getSelectedIndex_0)))))
    (define/override (jm_paint_1 _graphics)
    (let ([_start JR.null][_size JR.null][_dx JR.null][_dy JR.null][_item JR.null][_index JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (PreLogUtil.jm_put_3 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_PAINT (get-field f_canvasStrings this))))])
            (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
            (set! _start (send this jm_getStartIndex_0))
            (set! _size (send this jm_size_0))
            (set! _dx (get-field f_x this))
            (set! _dy (get-field f_y this))
            (send (get-field f_rectPaintable this) jm_paint_1 _graphics)
            (send _graphics jm_drawString_4 (send this jm_getTitle_0) (get-field f_x this) (JR.i32 (- (get-field f_y this) (get-field f_fontHeight this))) 0)
            (set! _item JR.null)
            (begin
                (set! _index _start)
                (let/ec jbreak (let jloop () (when (< _index _size)
                    (let/ec jcontinue
                (set! _item (send this jm_get_1 _index))
                (when (>= _dx (send (get-field f_rectangle this) jm_getMaxX_0))
                    (begin
                    (if (get-field f_logged this)
                        (begin
                        (void))
                        (begin
                        (set-field! f_logged this #t)
                        (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "painting beyond maxx: ") jm_appendint_1 (send (get-field f_rectangle this) jm_getMaxX_0)) jm_toString_0) this (get-field f_PAINT (get-field f_canvasStrings this)))))))
                (set! _dx (send (get-field f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable this) jm_paint_5 _graphics _index _item _dx _dy)))
                    (set! _index (JR.i32 (+ _index 1))) (jloop)))))))))))
(define (MultipleScrollSelectionHorizontalForm.jclassValue) MultipleScrollSelectionHorizontalForm%)

(define (MultipleScrollSelectionHorizontalForm.jnew_6 _title _items _formPaintableFactory _border _backgroundBasicColor _foregroundBasicColor)
  (define this (new MultipleScrollSelectionHorizontalForm% [jclass "MultipleScrollSelectionHorizontalForm"]))
    (set-field! f_rectPaintable this (NullPaintable.jm_getInstance_0))
    (set-field! f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable this (ItemIndexPaintable.jm_getInstance_0))
    (set-field! f_backgroundColor this (JR.className (get-field f_TRANSPARENT_GREY (BasicColorFactory.jm_getInstance_0))))
    (set-field! f_myFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    (set-field! f_logged this #f)
    (set-field! f_fontHeight this 0)
    (let ()
      (let/ec jreturn
        (void)
        (if (or (J2MEUtil.jm_isJ2ME_0) (J2MEUtil.jm_isHTML_0))
            (begin
            (void))
            (begin
            (set-field! f_rectPaintable this (MultipleScrollSelectionFormRectPaintable.jnew_1 this))))))
  this)

(define (MultipleScrollSelectionHorizontalForm.jm_createForm_7 _title _items _rectangle _formType _border _backgroundBasicColor _foregroundBasicColor)
    (let ([_scrollSelectionForm JR.null])
      (let/ec jreturn
        (set! _scrollSelectionForm (MultipleScrollSelectionHorizontalForm.jnew_6 _title _items (ItemPaintableFactory.jm_getInstance_0) _border _backgroundBasicColor _foregroundBasicColor))
        (send _scrollSelectionForm jm_init_2 _rectangle _formType)
        (jreturn _scrollSelectionForm))))



