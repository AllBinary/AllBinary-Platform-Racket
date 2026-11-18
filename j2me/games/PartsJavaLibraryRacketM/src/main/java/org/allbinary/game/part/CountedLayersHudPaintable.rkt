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
;; package org.allbinary.game.part

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "../../../../org/allbinary/graphics/paint/PaintableInterface.rkt")
(lazy-require ["../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(provide (all-defined-out))

(define CountedLayersHudPaintable%
  (class JObject%
    (super-new)
    (field [f_displayInfoSingleton JR.null])
    (field [f_partInterfaceArray JR.null])
    (field [f_countedTotalStringColor 0])
    (field [f_countedPartsBorder 0])
    (field [f_startIndex 0])
    (field [f_dropSize 0])
    (field [f_myFontProcessor JR.null])
    (field [f_height 0])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null][_XXString JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set-field! f_height this (send _font jm_getHeight_0))
        (when (> (get-field f_dropSize this) (send _font jm_getHeight_0))
            (begin
            (set-field! f_height this (get-field f_dropSize this))))
        (when (= (CountedLayersHudPaintable.jstatic_XXStringWidth) 0)
            (begin
            (set! _XXString "XX")
            (set! CountedLayersHudPaintable.jcell_XXStringWidth (send _font jm_stringWidth_1 _XXString))))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/public (jm_paint_1 _graphics)
    (let ([_lastWidth JR.null][_widthEdge JR.null][_size JR.null][_count JR.null][_y JR.null][_countedLayerInterfaceFactory JR.null][_pickedUpLayerInterfaceFactoryInterface JR.null][_layerInterface JR.null][_charArray JR.null][_index JR.null])
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (set! _lastWidth (send (get-field f_displayInfoSingleton this) jm_getLastWidth_0))
        (set! _widthEdge (JR.i32 (- _lastWidth (get-field f_dropSize this))))
        (set! _size (vector-length (get-field f_partInterfaceArray this)))
        (set! _count 0)
        (set! _y 0)
        (set! _countedLayerInterfaceFactory JR.null)
        (set! _pickedUpLayerInterfaceFactoryInterface JR.null)
        (set! _layerInterface JR.null)
        (set! _charArray JR.null)
        (begin
            (set! _index (get-field f_startIndex this))
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _countedLayerInterfaceFactory (vector-ref (get-field f_partInterfaceArray this) _index))
            (when (> (send _countedLayerInterfaceFactory jm_getTotal_0) 0)
                (begin
                (set! _pickedUpLayerInterfaceFactoryInterface (send _countedLayerInterfaceFactory jm_getCountedPickedUpLayerInterfaceFactory_0))
                (set! _layerInterface (send _pickedUpLayerInterfaceFactoryInterface jm_getIconLayer_0))
                (set! _y (JR.i32 (+ 40 (JR.i32 (* _count (get-field f_height this))))))
                (send _layerInterface jm_setPosition_3 _widthEdge _y (send _layerInterface jm_getZP_0))
                (send _layerInterface jm_paint_1 _graphics)
                (send _graphics jm_setColor_1 (get-field f_countedTotalStringColor this))
                (send _countedLayerInterfaceFactory jm_paint_1 _graphics)
                (set! _charArray (send _countedLayerInterfaceFactory jm_getTotalString_0))
                (send _graphics jm_drawChars_6 _charArray 0 (vector-length _charArray) (JR.i32 (- _widthEdge (send _countedLayerInterfaceFactory jm_getXOffset_0))) _y 0)
                (set! _count (JR.i32 (+ _count 1))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (when (> _count 0)
            (begin
            (send _graphics jm_setColor_1 (get-field f_countedPartsBorder this))
            (send _graphics jm_drawRect_4 (JR.i32 (- _lastWidth (JR.i32 (+ (CountedLayersHudPaintable.jstatic_XXStringWidth) (get-field f_dropSize this))))) 40 (JR.i32 (+ (CountedLayersHudPaintable.jstatic_XXStringWidth) (get-field f_dropSize this))) (JR.i32 (+ (JR.i32 (* _count (get-field f_height this))) 3))))))))
    (define/public (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn (void))))))
(define (CountedLayersHudPaintable.jclassValue) CountedLayersHudPaintable%)

(define CountedLayersHudPaintable.jcell_XXStringWidth 'jnone)
(define (CountedLayersHudPaintable.jstatic_XXStringWidth)
  (when (eq? CountedLayersHudPaintable.jcell_XXStringWidth 'jnone) (set! CountedLayersHudPaintable.jcell_XXStringWidth 0))
  CountedLayersHudPaintable.jcell_XXStringWidth)
(define (CountedLayersHudPaintable.jsetstatic_XXStringWidth value) (set! CountedLayersHudPaintable.jcell_XXStringWidth value))

(define (CountedLayersHudPaintable.jnew_5 _partInterfaceArray _dropSize _startIndex _countedTotalStringColor _countedPartsBorder)
  (define this (new CountedLayersHudPaintable% [jclass "CountedLayersHudPaintable"]))
    (set-field! f_displayInfoSingleton this (DisplayInfoSingleton.jm_getInstance_0))
    
    
    
    
    
    (set-field! f_myFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    
    (let ()
      (let/ec jreturn
        (set-field! f_partInterfaceArray this _partInterfaceArray)
        (set-field! f_startIndex this _startIndex)
        (set-field! f_countedTotalStringColor this _countedTotalStringColor)
        (set-field! f_countedPartsBorder this _countedPartsBorder)
        (set-field! f_dropSize this _dropSize)))
  this)



