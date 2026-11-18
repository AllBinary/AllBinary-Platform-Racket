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
;; package org.allbinary.game.ag.layer.hud.basic

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../org/allbinary/game/graphics/hud/BasicHud.rkt"
  "../../../../../../../org/allbinary/graphics/paint/PaintableInterface.rkt")
(lazy-require ["../../../../../../../org/allbinary/game/graphics/hud/BasicHudFactory.rkt" (BasicHudFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_defaultCharWidth_1)])
(lazy-require ["../../../../../../../org/allbinary/logic/math/PrimitiveLongSingleton.rkt" (PrimitiveLongSingleton.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/logic/math/PrimitiveLongUtil.rkt" (PrimitiveLongUtil.jm_createPowerOfTen_1)])
(provide (all-defined-out))

(define NumberStringHud%
  (class BasicHud%
    (super-new)
    (inherit/super jm_paintDX_8)
    (field [f_primitiveLongUtil JR.null])
    (field [f_prependString JR.null])
    (field [f_PREPEND_STRING JR.null])
    (field [f_value 0])
    (field [f_max 0])
    (field [f_offset 0])
    (field [f_valueString JR.null])
    (field [f_valueTotalDigits 0])
    (define/override (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set-field! f_offset this (JR.i32 (+ (send _font jm_stringWidth_1 (get-field f_prependString this)) (MyFontProcessor.jm_defaultCharWidth_1 _font))))
        (super jm_updateMeasurement_1 _graphics))))
    (define/public (jm_get_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_value this)))))
    (define/public (jm_add_1 _value)
    (let ()
      (let/ec jreturn
        (send this jm_set_1 (JR.i32 (+ (get-field f_value this) _value))))))
    (define/public (jm_set_1 _value)
    (let ()
      (let/ec jreturn
        (set-field! f_value this _value)
        (when (> (get-field f_value this) (get-field f_max this))
            (begin
            (set-field! f_value this 0)))
        (set-field! f_valueString this (send (get-field f_primitiveLongUtil this) jm_getCharArray_1 (get-field f_value this)))
        (set-field! f_valueTotalDigits this (send (get-field f_primitiveLongUtil this) jm_getCurrentTotalDigits_0)))))
    (define/public (jm_reduce_1 _value)
    (let ()
      (let/ec jreturn
        (send this jm_set_1 (JR.i32 (- (get-field f_value this) _value))))))
    (define/public (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (super jm_paintDX_8 _graphics (get-field f_PREPEND_STRING this) 0 (vector-length (get-field f_PREPEND_STRING this)) (get-field f_valueString this) 0 (get-field f_valueTotalDigits this) (get-field f_offset this)))))
    (define/public (jm_paintXY_3 _graphics _x _y)
    (let ([_charArray JR.null][_len JR.null][_charArray2 JR.null][_len2 JR.null])
      (let/ec jreturn
        (JR.className (get-field f_myFontProcessor this))
        (set! _charArray (get-field f_PREPEND_STRING this))
        (set! _len (vector-length (get-field f_PREPEND_STRING this)))
        (set! _charArray2 (get-field f_valueString this))
        (set! _len2 (get-field f_valueTotalDigits this))
        (JR.className (get-field f_basicSetColorUtil this))
        (send _graphics jm_drawChars_6 _charArray 0 _len _x _y 0)
        (send _graphics jm_drawChars_6 _charArray2 0 _len2 (JR.i32 (- _x (get-field f_offset this))) _y 0))))
    (define/public (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn (void))))))
(define (NumberStringHud.jclassValue) NumberStringHud%)

(define (NumberStringHud.jnew_6 _prependString _max _location _direction _bufferZone _basicColor)
  (define this (new NumberStringHud% [jclass "NumberStringHud"]))
    
    
    
    
    
    
    
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_prependString this _prependString)
        (set-field! f_PREPEND_STRING this (JR.toCharArray _prependString))
        (set-field! f_valueString this (vector-ref (get-field f_NUMBER_CHAR_ARRAYS (PrimitiveLongSingleton.jm_getInstance_0)) 0))
        (set-field! f_primitiveLongUtil this (PrimitiveLongUtil.jm_createPowerOfTen_1 (JR.i32 (+ _max 1))))
        (set-field! f_max this _max)
        (set-field! f_value this 0)
        (when (= _direction 0)
            (begin
            (raise (JR.newException "RuntimeException" (get-field f_DIRECTION_EXCEPTION (BasicHudFactory.jm_getInstance_0))))))))
  this)



