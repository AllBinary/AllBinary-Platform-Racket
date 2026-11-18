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
  "./PaintableForm.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_DOWN Canvas.jstatic_UP Canvas.jstatic_RIGHT Canvas.jstatic_LEFT)])
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/form/item/ABCustomItem.rkt" (ABCustomItem.jm_getNullInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/math/RectangleCollisionUtil.rkt" (RectangleCollisionUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./ItemPaintableFactory.rkt" (ItemPaintableFactory.jm_getInstance_0)])
(lazy-require ["./ItemIndexPaintable.rkt" (ItemIndexPaintable.jm_getInstance_0)])
(lazy-require ["./ItemIndexDx.rkt" (ItemIndexDx.jm_getInstance_0)])
(lazy-require ["./FormTypeFactory.rkt" (FormTypeFactory.jm_getInstance_0)])
(lazy-require ["./ScrollSelectionFormTempHorizontalPaintable.rkt" (ScrollSelectionFormTempHorizontalPaintable.jnew_1)])
(lazy-require ["./ScrollSelectionFormTempHorizontalDx.rkt" (ScrollSelectionFormTempHorizontalDx.jnew_1)])
(lazy-require ["./ScrollSelectionFormVerticalPaintable.rkt" (ScrollSelectionFormVerticalPaintable.jnew_1)])
(lazy-require ["./ScrollSelectionFormVericalDx.rkt" (ScrollSelectionFormVericalDx.jnew_1)])
(lazy-require ["./ScrollSelectionFormHorizontalPaintable.rkt" (ScrollSelectionFormHorizontalPaintable.jnew_1)])
(lazy-require ["./ScrollSelectionFormHorizontalDx.rkt" (ScrollSelectionFormHorizontalDx.jnew_1)])
(provide (all-defined-out))

(define ScrollSelectionForm%
  (class PaintableForm%
    (super-new)
    (field [f_rectangleCollisionUtil JR.null])
    (field [f_border 0])
    (field [f_halfBorder 0])
    (field [f_buttonBasicColor JR.null])
    (field [f_scrollSelectionFormFormTypeItemIndexPaintable JR.null])
    (field [f_formTypeItemIndexDx JR.null])
    (field [f_paintable JR.null])
    (field [f_adjustedExtraBorder 0])
    (define/override (jm_init_2 _rectangle _formType)
    (let ([_formTypeFactory JR.null])
      (let/ec jreturn
        (super jm_init_2 _rectangle _formType)
        (set! _formTypeFactory (FormTypeFactory.jm_getInstance_0))
        (if (eq? _formType (get-field f_HORIZONTAL_FORM _formTypeFactory))
            (begin
            (set-field! f_scrollSelectionFormFormTypeItemIndexPaintable this (ScrollSelectionFormHorizontalPaintable.jnew_1 this))
            (set-field! f_formTypeItemIndexDx this (ScrollSelectionFormHorizontalDx.jnew_1 this)))
            (if (eq? _formType (get-field f_VERTICAL_CENTER_FORM _formTypeFactory))
            (begin
            (set-field! f_scrollSelectionFormFormTypeItemIndexPaintable this (ScrollSelectionFormVerticalPaintable.jnew_1 this))
            (set-field! f_formTypeItemIndexDx this (ScrollSelectionFormVericalDx.jnew_1 this)))
            (if (eq? _formType (get-field f_TEMP_HORIZONTAL_FORM _formTypeFactory))
            (begin
            (set-field! f_scrollSelectionFormFormTypeItemIndexPaintable this (ScrollSelectionFormTempHorizontalPaintable.jnew_1 this))
            (set-field! f_formTypeItemIndexDx this (ScrollSelectionFormTempHorizontalDx.jnew_1 this)))
            (if (eq? _formType (get-field f_NULL_FORM_TYPE _formTypeFactory))
            (begin
            (void))
            (begin
            (raise (JR.newException "Exception" (get-field f_UNK _formTypeFactory)))))))))))
    (define/public (jm_paintItemHorizontal_5 _graphics _index _item _x _y)
    (let ([_width JR.null])
      (let/ec jreturn
        (set! _width (send _item jm_getMinimumWidth_0))
        (jreturn (JR.i32 (+ (JR.i32 (+ _x _width)) (get-field f_border this)))))))
    (define/public (jm_paintItemVertical_5 _graphics _index _item _x _y)
    (let ([_height JR.null])
      (let/ec jreturn
        (set! _height (send _item jm_getMinimumHeight_0))
        (jreturn (JR.i32 (+ (JR.i32 (+ _y _height)) (get-field f_border this)))))))
    (define/public (jm_paintItemTempHorizontal_5 _graphics _index _item _x _y)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_getSelectedIndexForPointHorizontalDx_4 _index _item _dx _dy)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- _dx (get-field f_halfBorder this)))))))
    (define/public (jm_getSelectedIndexForPointVerticalDx_4 _index _item _dx _dy)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (+ _dx (send this jm_getDiffX_1 _item)))))))
    (define/public (jm_getSelectedIndexForPointTempHorizontalDx_4 _index _item _dx _dy)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (+ _dx (send this jm_getDiffX_1 _item)))))))
    (define/override (jm_append_1 _item)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_append_1 _item)))))
    (define/public (jm_getSelectedItem_1 _point)
    (let ([_index JR.null])
      (let/ec jreturn
        (set! _index (send this jm_getSelectedIndexForPoint_1 _point))
        (if (not (= _index (JR.i32 (- 1))))
            (begin
            (jreturn (send this jm_get_1 _index)))
            (begin
            (jreturn (ABCustomItem.jm_getNullInstance_0)))))))
    (define/public (jm_getItemIndex_1 _item)
    (let ([_nextItem JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _nextItem JR.null)
        (set! _size (send this jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _nextItem (send this jm_get_1 _index))
            (when (eq? _nextItem _item)
                (begin
                (jreturn _index))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (JR.i32 (- 1))))))
    (define/public (jm_getStartIndex_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_getSelectedIndexForPoint_1 _point)
    (let ([_start JR.null][_size JR.null][_dx JR.null][_dy JR.null][_formTypeFactory JR.null][_commonLabels JR.null][_stringBuffer JR.null][_item JR.null][_width JR.null][_height JR.null][_diffX JR.null][_index JR.null])
      (let/ec jreturn
        (set! _start (send this jm_getStartIndex_0))
        (set! _size (send this jm_size_0))
        (set! _dx (send this jm_getDx_0))
        (set! _dy (send this jm_getDy_0))
        (set! _formTypeFactory (FormTypeFactory.jm_getInstance_0))
        (set! _commonLabels (CommonLabels.jm_getInstance_0))
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (get-field f_START_LABEL _commonLabels))
        (send _stringBuffer jm_appendint_1 _start)
        (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
        (send _stringBuffer jm_append_1 (get-field f_TOTAL_LABEL _commonLabels))
        (send _stringBuffer jm_appendint_1 _size)
        (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this (ScrollSelectionForm.jstatic_GET_SELECTED_INDEX))
        (set! _item JR.null)
        (set! _width 0)
        (set! _height 0)
        (set! _diffX 0)
        (begin
            (set! _index _start)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _item (send this jm_get_1 _index))
            (set! _width (send _item jm_getMinimumWidth_0))
            (set! _height (send _item jm_getMinimumHeight_0))
            (set! _diffX (send (get-field f_formTypeItemIndexDx this) jm_getDx_4 _index _item _dx _dy))
            (when (send (get-field f_rectangleCollisionUtil this) jm_isInside_6 _diffX (JR.i32 (- _dy (get-field f_halfBorder this))) (JR.i32 (+ (JR.i32 (+ _diffX _width)) (get-field f_border this))) (JR.i32 (+ (JR.i32 (+ (JR.i32 (+ _dy _height)) (get-field f_halfBorder this))) 1)) (send _point jm_getX_0) (send _point jm_getY_0))
                (begin
                (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
                (send _stringBuffer jm_append_1 (get-field f_ITEM_LABEL _commonLabels))
                (send _stringBuffer jm_append_1 (send _item jm_getLabel_0))
                (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
                (send _stringBuffer jm_append_1 (get-field f_INDEX_LABEL _commonLabels))
                (send _stringBuffer jm_appendint_1 _index)
                (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this (ScrollSelectionForm.jstatic_GET_SELECTED_INDEX))
                (jreturn _index)))
            (if (eq? (get-field f_formType this) (get-field f_HORIZONTAL_FORM _formTypeFactory))
                (begin
                (set! _dx (JR.i32 (+ (JR.i32 (+ _dx _width)) (get-field f_border this))))
                (when (> _dx (send (get-field f_rectangle this) jm_getMaxX_0))
                    (begin
                    (jbreak (void)))))
                (if (eq? (get-field f_formType this) (get-field f_VERTICAL_CENTER_FORM _formTypeFactory))
                (begin
                (set! _dy (JR.i32 (+ (JR.i32 (+ _dy _height)) (get-field f_border this))))
                (when (> _dy (send (get-field f_rectangle this) jm_getMaxY_0))
                    (begin
                    (jbreak (void)))))
                (if (eq? (get-field f_formType this) (get-field f_NULL_FORM_TYPE _formTypeFactory))
                (begin
                (void))
                (begin
                (raise (JR.newException "Exception" (get-field f_UNK _formTypeFactory))))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (JR.i32 (- 1))))))
    (define/public (jm_processInputKey_1 _gameKeyCode)
    (let ([_formTypeFactory JR.null][_index JR.null][_max JR.null])
      (let/ec jreturn
        (set! _formTypeFactory (FormTypeFactory.jm_getInstance_0))
        (when (= (send this jm_size_0) 0)
            (begin
            (jreturn (JR.i32 (- 1)))))
        (set! _index (send this jm_getSelectedIndex_0))
        (if (or (eq? (get-field f_formType this) (get-field f_HORIZONTAL_FORM _formTypeFactory)) (eq? (get-field f_formType this) (get-field f_TEMP_HORIZONTAL_FORM _formTypeFactory)))
            (begin
            (if (= _gameKeyCode (Canvas.jstatic_RIGHT))
                (begin
                (set! _index (JR.i32 (+ _index 1))))
                (when (= _gameKeyCode (Canvas.jstatic_LEFT))
                (begin
                (set! _index (JR.i32 (- _index 1)))))))
            (if (eq? (get-field f_formType this) (get-field f_VERTICAL_CENTER_FORM _formTypeFactory))
            (begin
            (if (= _gameKeyCode (Canvas.jstatic_DOWN))
                (begin
                (set! _index (JR.i32 (+ _index 1))))
                (when (= _gameKeyCode (Canvas.jstatic_UP))
                (begin
                (set! _index (JR.i32 (- _index 1)))))))
            (if (eq? (get-field f_formType this) (get-field f_NULL_FORM_TYPE _formTypeFactory))
            (begin
            (void))
            (begin
            (raise (JR.newException "Exception" (get-field f_UNK _formTypeFactory)))))))
        (set! _max (JR.i32 (- (send this jm_size_0) 1)))
        (if (< _index 0)
            (begin
            (send this jm_setSelectedIndex_1 0))
            (if (> _index _max)
            (begin
            (send this jm_setSelectedIndex_1 _max))
            (begin
            (send this jm_setSelectedIndex_1 _index))))
        (jreturn (JR.i32 (- 1))))))
    (define/public (jm_isInForm_1 _point)
    (let ()
      (let/ec jreturn
        (when (send (get-field f_rectangleCollisionUtil this) jm_isInside_6 (get-field f_x this) (JR.i32 (- (get-field f_y this) (get-field f_halfBorder this))) (JR.i32 (+ (send (get-field f_rectangle this) jm_getMaxX_0) (get-field f_border this))) (JR.i32 (+ (send (get-field f_rectangle this) jm_getMaxY_0) (get-field f_border this))) (send _point jm_getX_0) (send _point jm_getY_0))
            (begin
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _point)) jm_append_1 (ScrollSelectionForm.jstatic_INSIDE_FORM)) jm_toString_0) this (ScrollSelectionForm.jstatic_IS_IN_FORM))
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_paintItem_5 _graphics _index _item _x _y)
    (let ([_width JR.null][_height JR.null][_adjustedBorder JR.null])
      (let/ec jreturn
        (send _item jm_paintXY_3 _graphics _x _y)
        (set! _width (send _item jm_getMinimumWidth_0))
        (set! _height (send _item jm_getMinimumHeight_0))
        (send _graphics jm_setColor_1 (send (send this jm_getButtonBasicColor_0) jm_intValue_0))
        (set! _adjustedBorder 3)
        (send _graphics jm_drawRect_4 (JR.i32 (- (JR.i32 (- _x (get-field f_halfBorder this))) _adjustedBorder)) (JR.i32 (- (JR.i32 (- _y (get-field f_halfBorder this))) _adjustedBorder)) (JR.i32 (+ (JR.i32 (+ _width (get-field f_border this))) (get-field f_adjustedExtraBorder this))) (JR.i32 (+ (JR.i32 (+ _height (get-field f_border this))) (get-field f_adjustedExtraBorder this))))
        (jreturn (send (get-field f_scrollSelectionFormFormTypeItemIndexPaintable this) jm_paint_5 _graphics _index _item _x _y)))))
    (define/public (jm_paintUnselectedItem_5 _graphics _index _item _x _y)
    (let ()
      (let/ec jreturn
        (send _graphics jm_setColor_1 (send (send this jm_getButtonBasicColor_0) jm_intValue_0))
        (send _item jm_paintUnselected_3 _graphics _x _y)
        (jreturn (send (get-field f_scrollSelectionFormFormTypeItemIndexPaintable this) jm_paint_5 _graphics _index _item _x _y)))))
    (define/public (jm_getDiffX_1 _item)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_getDx_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_x this)))))
    (define/public (jm_getDy_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_y this)))))
    (define/public (jm_setButtonBasicColor_1 _buttonBasicColor)
    (let ()
      (let/ec jreturn
        (set-field! f_buttonBasicColor this _buttonBasicColor))))
    (define/public (jm_getButtonBasicColor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_buttonBasicColor this)))))))
(define (ScrollSelectionForm.jclassValue) ScrollSelectionForm%)

(define ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_FORM 'jnone)
(define (ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_FORM)
  (when (eq? ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_FORM 'jnone) (set! ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_FORM (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_FORM)
(define (ScrollSelectionForm.jsetstatic_NULL_SCROLL_SELECTION_FORM value) (set! ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_FORM value))

(define ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM 'jnone)
(define (ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM)
  (when (eq? ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM 'jnone) (set! ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM)
(define (ScrollSelectionForm.jsetstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM value) (set! ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM value))

(define ScrollSelectionForm.jcell_INSIDE_FORM 'jnone)
(define (ScrollSelectionForm.jstatic_INSIDE_FORM)
  (when (eq? ScrollSelectionForm.jcell_INSIDE_FORM 'jnone) (set! ScrollSelectionForm.jcell_INSIDE_FORM " inside form"))
  ScrollSelectionForm.jcell_INSIDE_FORM)
(define (ScrollSelectionForm.jsetstatic_INSIDE_FORM value) (set! ScrollSelectionForm.jcell_INSIDE_FORM value))

(define ScrollSelectionForm.jcell_IS_IN_FORM 'jnone)
(define (ScrollSelectionForm.jstatic_IS_IN_FORM)
  (when (eq? ScrollSelectionForm.jcell_IS_IN_FORM 'jnone) (set! ScrollSelectionForm.jcell_IS_IN_FORM "isInForm"))
  ScrollSelectionForm.jcell_IS_IN_FORM)
(define (ScrollSelectionForm.jsetstatic_IS_IN_FORM value) (set! ScrollSelectionForm.jcell_IS_IN_FORM value))

(define ScrollSelectionForm.jcell_GET_SELECTED_INDEX 'jnone)
(define (ScrollSelectionForm.jstatic_GET_SELECTED_INDEX)
  (when (eq? ScrollSelectionForm.jcell_GET_SELECTED_INDEX 'jnone) (set! ScrollSelectionForm.jcell_GET_SELECTED_INDEX "getSelectedIndexForPoint"))
  ScrollSelectionForm.jcell_GET_SELECTED_INDEX)
(define (ScrollSelectionForm.jsetstatic_GET_SELECTED_INDEX value) (set! ScrollSelectionForm.jcell_GET_SELECTED_INDEX value))

(define (ScrollSelectionForm.jnew_7 _title _items _formPaintableFactory _border _adjustedExtraBorder _backgroundBasicColor _foregroundBasicColor)
  (define this (new ScrollSelectionForm% [jclass "ScrollSelectionForm"]))
    (set-field! f_rectangleCollisionUtil this (RectangleCollisionUtil.jm_getInstance_0))
    
    
    
    (set-field! f_scrollSelectionFormFormTypeItemIndexPaintable this (ItemIndexPaintable.jm_getInstance_0))
    (set-field! f_formTypeItemIndexDx this (ItemIndexDx.jm_getInstance_0))
    (set-field! f_paintable this (ItemPaintableFactory.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_adjustedExtraBorder this _adjustedExtraBorder)
        (set-field! f_buttonBasicColor this _foregroundBasicColor)
        (set-field! f_border this _border)
        (set-field! f_halfBorder this (arithmetic-shift _border (- (bitwise-and 1 31))))
        (set-field! f_paintable this (send _formPaintableFactory jm_getInstanceItemPaintable_1 this))))
  this)

(define (ScrollSelectionForm.jm_createForm_6 _title _items _formPaintableFactory _border _backgroundBasicColor _foregroundBasicColor)
    (let ([_commonStrings JR.null][_logUtil JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (set! _logUtil (LogUtil.jm_getInstance_0))
            (send _logUtil jm_put_4 (get-field f_EXCEPTION _commonStrings) _logUtil (get-field f_EXCEPTION _commonStrings) _e)
            (jreturn (PaintableForm.jm_getNullPaintableForm_0)))])
            (if (eq? _formPaintableFactory (ItemPaintableFactory.jm_getInstance_0))
                (begin
                (jreturn (ScrollSelectionForm.jnew_7 _title _items _formPaintableFactory _border (JR.i32 (- 3)) _backgroundBasicColor _foregroundBasicColor)))
                (begin
                (set! _commonStrings (CommonStrings.jm_getInstance_0))
                (set! _logUtil (LogUtil.jm_getInstance_0))
                (send _logUtil jm_putF_3 (get-field f_EXCEPTION _commonStrings) _logUtil (get-field f_EXCEPTION _commonStrings))
                (jreturn (PaintableForm.jm_getNullPaintableForm_0))))))))

(define (ScrollSelectionForm.jm_getNullScrollSelectionForm_0)
    (let ()
      (let/ec jreturn
        (when (eq? (ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_FORM) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_FORM (ScrollSelectionForm.jm_createForm_6 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (JR.newArray JR.null 0) (ItemPaintableFactory.jm_getInstance_0) 0 (get-field f_BLACK (BasicColorFactory.jm_getInstance_0)) (get-field f_WHITE (BasicColorFactory.jm_getInstance_0))))))
        (jreturn (ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_FORM)))))

(define (ScrollSelectionForm.jm_getNullScrollSelectionFormHorizontal_0)
    (let ()
      (let/ec jreturn
        (when (eq? (ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM (ScrollSelectionForm.jm_createForm_6 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (JR.newArray JR.null 0) (ItemPaintableFactory.jm_getInstance_0) 0 (get-field f_BLACK (BasicColorFactory.jm_getInstance_0)) (get-field f_WHITE (BasicColorFactory.jm_getInstance_0))))))
        (jreturn (ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM)))))



