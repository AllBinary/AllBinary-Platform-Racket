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
  "./ScrollCurrentSelectionForm.rkt")
(lazy-require ["../../../../org/allbinary/J2MEUtil.rkt" (J2MEUtil.jm_isJ2ME_0 J2MEUtil.jm_isHTML_0)])
(lazy-require ["../../../../org/allbinary/animation/NullAnimationFactory.rkt" (NullAnimationFactory.jm_getFactoryInstance_0)])
(lazy-require ["../../../../org/allbinary/animation/vector/RectangleAdjustedAnimation.rkt" (RectangleAdjustedAnimation.jnew_5)])
(lazy-require ["../../../../org/allbinary/animation/vector/RectangleFilledAdjustedAnimation.rkt" (RectangleFilledAdjustedAnimation.jnew_5)])
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["./ItemPaintableFactory.rkt" (ItemPaintableFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define CommandCurrentSelectionForm%
  (class ScrollCurrentSelectionForm%
    (super-new)
    (inherit/super jm_getSelectedIndex_0)
    (field [f_selectedAnimationArray JR.null])
    (field [f_unSelectedAnimationArray JR.null])
    (define/override (jm_updateMeasurement_1 _graphics)
    (let ()
      (let/ec jreturn
        (send this jm_updateAll_2 _graphics (send this jm_getAllitems_0))
        (super jm_updateMeasurement_1 _graphics))))
    (define/public (jm_initAnimations_0)
    (let ([_nullAnimation JR.null][_index JR.null])
      (let/ec jreturn
        (set! _nullAnimation (JR.className (NullAnimationFactory.jm_getFactoryInstance_0)))
        (begin
            (set! _index (vector-length (get-field f_selectedAnimationArray this)))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (vector-set! (get-field f_selectedAnimationArray this) _index _nullAnimation)) (jloop)))))
        (begin
            (set! _index (vector-length (get-field f_unSelectedAnimationArray this)))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (vector-set! (get-field f_unSelectedAnimationArray this) _index _nullAnimation)) (jloop))))))))
    (define/public (jm_addAll_1 _items)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (vector-length _items))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (send this jm_addAt_2 _index (vector-ref _items _index))) (jloop))))))))
    (define/public (jm_addAt_2 _index _item)
    (let ([_basicColorFactory JR.null][_buttonColor JR.null][_selectedButtonColor JR.null][_width JR.null][_height JR.null][_adjustedBorder JR.null][_offset JR.null][_rectWidth JR.null][_rectHeight JR.null])
      (let/ec jreturn
        (set! _basicColorFactory (BasicColorFactory.jm_getInstance_0))
        (set! _buttonColor (get-field f_TRANSPARENT_GREY _basicColorFactory))
        (set! _selectedButtonColor (get-field f_TRANSPARENT_RED _basicColorFactory))
        (set! _width (send _item jm_getMinimumWidth_0))
        (set! _height (send _item jm_getMinimumHeight_0))
        (set! _adjustedBorder 3)
        (set! _offset (JR.i32 (- (JR.i32 (+ (get-field f_halfBorder this) _adjustedBorder)))))
        (set! _rectWidth (JR.i32 (- (JR.i32 (+ _width (get-field f_border this))) _adjustedBorder)))
        (set! _rectHeight (JR.i32 (- (JR.i32 (+ _height (get-field f_border this))) _adjustedBorder)))
        (if (or (J2MEUtil.jm_isJ2ME_0) (J2MEUtil.jm_isHTML_0))
            (begin
            (vector-set! (get-field f_selectedAnimationArray this) _index (RectangleAdjustedAnimation.jnew_5 _rectWidth _rectHeight _offset _offset _selectedButtonColor)))
            (begin
            (vector-set! (get-field f_selectedAnimationArray this) _index (RectangleFilledAdjustedAnimation.jnew_5 _rectWidth _rectHeight _offset _offset _selectedButtonColor))))
        (set! _adjustedBorder 4)
        (if (or (J2MEUtil.jm_isJ2ME_0) (J2MEUtil.jm_isHTML_0))
            (begin
            (vector-set! (get-field f_unSelectedAnimationArray this) _index (RectangleAdjustedAnimation.jnew_5 _rectWidth _rectHeight _offset _offset _buttonColor)))
            (begin
            (vector-set! (get-field f_unSelectedAnimationArray this) _index (RectangleFilledAdjustedAnimation.jnew_5 _rectWidth _rectHeight _offset _offset _buttonColor)))))))
    (define/public (jm_updateAll_2 _graphics _items)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (vector-length _items))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (JR.className (vector-ref _items _index))
            (send this jm_updateAt_2 _index (vector-ref _items _index))) (jloop))))))))
    (define/public (jm_updateAt_2 _index _item)
    (let ([_basicColorFactory JR.null][_buttonColor JR.null][_selectedButtonColor JR.null][_width JR.null][_height JR.null][_adjustedBorder JR.null][_offset JR.null][_rectWidth JR.null][_rectHeight JR.null][_rectangleAdjustedAnimation JR.null])
      (let/ec jreturn
        (set! _basicColorFactory (BasicColorFactory.jm_getInstance_0))
        (set! _buttonColor (get-field f_TRANSPARENT_GREY _basicColorFactory))
        (set! _selectedButtonColor (get-field f_TRANSPARENT_RED _basicColorFactory))
        (set! _width (send _item jm_getMinimumWidth_0))
        (set! _height (send _item jm_getMinimumHeight_0))
        (set! _adjustedBorder 3)
        (set! _offset (JR.i32 (- (JR.i32 (+ (get-field f_halfBorder this) _adjustedBorder)))))
        (set! _rectWidth (JR.i32 (- (JR.i32 (+ _width (get-field f_border this))) _adjustedBorder)))
        (set! _rectHeight (JR.i32 (- (JR.i32 (+ _height (get-field f_border this))) _adjustedBorder)))
        (if (or (J2MEUtil.jm_isJ2ME_0) (J2MEUtil.jm_isHTML_0))
            (begin
            (set! _rectangleAdjustedAnimation (vector-ref (get-field f_selectedAnimationArray this) _index))
            (send _rectangleAdjustedAnimation jm_setWidth_1 _rectWidth)
            (send _rectangleAdjustedAnimation jm_setHeight_1 _rectHeight)
            (send _rectangleAdjustedAnimation jm_setOffsetX_1 _offset)
            (send _rectangleAdjustedAnimation jm_setOffsetY_1 _offset)
            (send _rectangleAdjustedAnimation jm_setBasicColorP_1 _selectedButtonColor))
            (begin
            (set! _rectangleAdjustedAnimation (vector-ref (get-field f_selectedAnimationArray this) _index))
            (send _rectangleAdjustedAnimation jm_setWidth_1 _rectWidth)
            (send _rectangleAdjustedAnimation jm_setHeight_1 _rectHeight)
            (send _rectangleAdjustedAnimation jm_setOffsetX_1 _offset)
            (send _rectangleAdjustedAnimation jm_setOffsetY_1 _offset)
            (send _rectangleAdjustedAnimation jm_setBasicColorP_1 _selectedButtonColor)))
        (set! _adjustedBorder 4)
        (if (or (J2MEUtil.jm_isJ2ME_0) (J2MEUtil.jm_isHTML_0))
            (begin
            (set! _rectangleAdjustedAnimation (vector-ref (get-field f_unSelectedAnimationArray this) _index))
            (send _rectangleAdjustedAnimation jm_setWidth_1 _rectWidth)
            (send _rectangleAdjustedAnimation jm_setHeight_1 _rectHeight)
            (send _rectangleAdjustedAnimation jm_setOffsetX_1 _offset)
            (send _rectangleAdjustedAnimation jm_setOffsetY_1 _offset)
            (send _rectangleAdjustedAnimation jm_setBasicColorP_1 _buttonColor))
            (begin
            (set! _rectangleAdjustedAnimation (vector-ref (get-field f_unSelectedAnimationArray this) _index))
            (send _rectangleAdjustedAnimation jm_setWidth_1 _rectWidth)
            (send _rectangleAdjustedAnimation jm_setHeight_1 _rectHeight)
            (send _rectangleAdjustedAnimation jm_setOffsetX_1 _offset)
            (send _rectangleAdjustedAnimation jm_setOffsetY_1 _offset)
            (send _rectangleAdjustedAnimation jm_setBasicColorP_1 _buttonColor))))))
    (define/public (jm_getSelectedCommand_0)
    (let ([_index JR.null][_commandTextItem JR.null])
      (let/ec jreturn
        (set! _index (super jm_getSelectedIndex_0))
        (set! _commandTextItem (send this jm_get_1 _index))
        (jreturn (send _commandTextItem jm_getCommand_0)))))
    (define/override (jm_append_1 _item)
    (let ([_result JR.null])
      (let/ec jreturn
        (set! _result (super jm_append_1 _item))
        (send this jm_addAt_2 _result _item)
        (jreturn _result))))
    (define/override (jm_delete_1 _itemNum)
    (let ()
      (let/ec jreturn
        (super jm_delete_1 _itemNum))))
    (define/override (jm_deleteAll_0)
    (let ()
      (let/ec jreturn
        (send this jm_initAnimations_0)
        (super jm_deleteAll_0))))
    (define/override (jm_insert_2 _itemNum _item)
    (let ()
      (let/ec jreturn
        (super jm_insert_2 _itemNum _item))))
    (define/override (jm_set_2 _itemNum _item)
    (let ()
      (let/ec jreturn
        (super jm_set_2 _itemNum _item))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_myFontProcessor this))
        (super jm_paint_1 _graphics))))
    (define/override (jm_paintItem_5 _graphics _index _item _x _y)
    (let ()
      (let/ec jreturn
        (JR.className (vector-ref (get-field f_selectedAnimationArray this) _index))
        (jreturn (super jm_paintItem_5 _graphics _index _item _x _y)))))
    (define/override (jm_paintUnselectedItem_5 _graphics _index _item _x _y)
    (let ()
      (let/ec jreturn
        (JR.className (vector-ref (get-field f_unSelectedAnimationArray this) _index))
        (jreturn (super jm_paintUnselectedItem_5 _graphics _index _item _x _y)))))))
(define (CommandCurrentSelectionForm.jclassValue) CommandCurrentSelectionForm%)

(define (CommandCurrentSelectionForm.jnew_6 _title _items _border _moveForSmallScreen _backgroundBasicColor _foregroundBasicColor)
  (define this (new CommandCurrentSelectionForm% [jclass "CommandCurrentSelectionForm"]))
    (set-field! f_selectedAnimationArray this (JR.newArray JR.null 16))
    (set-field! f_unSelectedAnimationArray this (JR.newArray JR.null 16))
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_initAnimations_0)
        (send this jm_addAll_1 _items)))
  this)



