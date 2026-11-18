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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "../../../../../org/allbinary/graphics/paint/InitUpdatePaintable.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorSetUtil.rkt" (BasicColorSetUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/font/FontDebugFactory.rkt" (FontDebugFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define StartIntermissionPaintable%
  (class InitUpdatePaintable%
    (super-new)
    (field [f_fontDebugFactory JR.null])
    (field [f_basicSetColorUtil JR.null])
    (field [f_gameCanvas JR.null])
    (field [f_stringArray JR.null])
    (field [f_fontSize 0])
    (field [f_font JR.null])
    (field [f_lastWidth JR.null])
    (field [f_updateMyFontProcessor JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_basicColor JR.null])
    (field [f_color 0])
    (field [f_lineYOffsetArray JR.null])
    (field [f_hasChanged #f])
    (field [f_anchor 0])
    (field [f_fontHeightP 0])
    (field [f_BEGIN_LEVEL JR.null])
    (field [f_EMPTY_STRING JR.null])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set-field! f_fontHeightP this (send _font jm_getHeight_0))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/override (jm_paint_1 _graphics)
    (let ([_existingFont JR.null][_displayInfo JR.null][_beginWidth JR.null][_index JR.null])
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (set! _existingFont (send _graphics jm_getFont_0))
        (send (get-field f_fontDebugFactory this) jm_setFont_2 (get-field f_font this) _graphics)
        (set! _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (send (get-field f_basicSetColorUtil this) jm_setBasicColorP3_3 _graphics (get-field f_basicColor this) (get-field f_color this))
        (set! _beginWidth 0)
        (begin
            (set! _index (JR.i32 (- (vector-length (get-field f_lineYOffsetArray this)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (when (get-field f_hasChanged this)
                (begin
                (vector-set! (get-field f_lastWidth this) _index (arithmetic-shift (JR.className (send _graphics jm_getFont_0)) (- (bitwise-and 1 31))))))
            (set! _beginWidth (vector-ref (get-field f_lastWidth this) _index))
            (send _graphics jm_drawString_4 (vector-ref (get-field f_stringArray this) _index) (JR.i32 (- (send _displayInfo jm_getLastHalfWidth_0) _beginWidth)) (JR.i32 (- (send _displayInfo jm_getLastHalfHeight_0) (vector-ref (get-field f_lineYOffsetArray this) _index))) (get-field f_anchor this)))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (set-field! f_hasChanged this #f)
        (send (get-field f_fontDebugFactory this) jm_setFont_2 _existingFont _graphics))))
    (define/override (jm_update_0)
    (let ([_level JR.null][_index JR.null])
      (let/ec jreturn
        (set! _level (JR.className (JR.className (send (get-field f_gameCanvas this) jm_getLayerManager_0))))
        (vector-set! (get-field f_stringArray this) 0 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_BEGIN_LEVEL this)) jm_appendint_1 _level) jm_toString_0))
        (begin
            (set! _index (JR.i32 (- (vector-length (get-field f_stringArray this)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 1)
                (let/ec jcontinue
            (vector-set! (get-field f_stringArray this) _index (get-field f_EMPTY_STRING this)))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))
    (define/override (jm_setBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn
        (set-field! f_basicColor this _basicColor))))
    (define/public (jm_getBasicColorP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_basicColor this)))))))
(define (StartIntermissionPaintable.jclassValue) StartIntermissionPaintable%)

(define (StartIntermissionPaintable.jnew_4 _gameCanvas _stringArray _basicColor _font)
  (define this (new StartIntermissionPaintable% [jclass "StartIntermissionPaintable"]))
    (set-field! f_fontDebugFactory this (FontDebugFactory.jm_getInstance_0))
    (set-field! f_basicSetColorUtil this (BasicColorSetUtil.jm_getInstance_0))
    
    
    
    
    
    (set-field! f_updateMyFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this))
    (set-field! f_basicColor this (get-field f_BLACK (BasicColorFactory.jm_getInstance_0)))
    
    (set-field! f_lineYOffsetArray this (get-field f_NULL_INT_ARRAY (NullUtil.jm_getInstance_0)))
    (set-field! f_hasChanged this #t)
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    
    (set-field! f_BEGIN_LEVEL this "Begin Level ")
    (set-field! f_EMPTY_STRING this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (set-field! f_gameCanvas this _gameCanvas)
        (set-field! f_stringArray this _stringArray)
        (set-field! f_lastWidth this (JR.newArray 0 (vector-length (get-field f_stringArray this))))
        (send this jm_setBasicColorP_1 _basicColor)
        (set-field! f_color this (send _basicColor jm_intValue_0))
        (set-field! f_fontSize this (send _font jm_getSize_0))
        (set-field! f_font this _font)))
  this)



