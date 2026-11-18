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
;; package org.allbinary.game.ag.layer.hud.basic.level

(require racket/class racket/lazy-require
  "../../../../../../../../allbinary_java.rkt"
  "../../../../../../../../org/allbinary/game/graphics/hud/BasicHud.rkt"
  "../../../../../../../../org/allbinary/graphics/paint/PaintableInterface.rkt")
(lazy-require ["../../../../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../../../org/allbinary/logic/math/PrimitiveLongUtil.rkt" (PrimitiveLongUtil.jm_createPowerOfTen_1)])
(provide (all-defined-out))

(define LevelHudWidget%
  (class BasicHud%
    (super-new)
    (inherit/super jm_paintDX_8)
    (field [f_level 0])
    (field [f_maxlevel 0])
    (field [f_levelString JR.null])
    (field [f_levelNumberCharArray JR.null])
    (field [f_levelNumberTotalDigits 0])
    (field [f_offset 0])
    (field [f_primitiveLongUtil JR.null])
    (define/override (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set-field! f_updateMaxWidth this (JR.i32 (* (send _font jm_getSize_0) 4)))
        (set-field! f_offset this (JR.i32 (+ (send _font jm_charsWidth_3 (get-field f_levelString this) 0 (vector-length (get-field f_levelString this))) (send _font jm_getSize_0))))
        (super jm_updateMeasurement_1 _graphics))))
    (define/public (jm_update_0)
    (let ()
      (let/ec jreturn
        (set-field! f_levelNumberCharArray this (send (get-field f_primitiveLongUtil this) jm_getCharArray_1 (get-field f_level this)))
        (set-field! f_levelNumberTotalDigits this (send (get-field f_primitiveLongUtil this) jm_getCurrentTotalDigits_0)))))
    (define/public (jm_setLevel_1 _level)
    (let ()
      (let/ec jreturn
        (set-field! f_level this _level)
        (send this jm_update_0))))
    (define/public (jm_nextLevel_0)
    (let ()
      (let/ec jreturn
        (set-field! f_level this (JR.i32 (+ (get-field f_level this) 1)))
        (send this jm_update_0))))
    (define/public (jm_previousLevel_0)
    (let ()
      (let/ec jreturn
        (set-field! f_level this (JR.i32 (- (get-field f_level this) 1)))
        (when (< (get-field f_level this) 0)
            (begin
            (set-field! f_level this 0)))
        (send this jm_update_0))))
    (define/public (jm_isComplete_0)
    (let ()
      (let/ec jreturn
        (if (<= (get-field f_level this) (get-field f_maxlevel this))
            (begin
            (jreturn #f))
            (begin
            (jreturn #t))))))
    (define/public (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (super jm_paintDX_8 _graphics (get-field f_levelString this) 0 (vector-length (get-field f_levelString this)) (get-field f_levelNumberCharArray this) 0 (get-field f_levelNumberTotalDigits this) (get-field f_offset this)))))
    (define/public (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn (void))))))
(define (LevelHudWidget.jclassValue) LevelHudWidget%)

(define (LevelHudWidget.jnew_3 _maxlevel _location _direction)
  (define this (new LevelHudWidget% [jclass "LevelHudWidget"]))
    
    
    
    (set-field! f_levelNumberCharArray this (get-field f_NULL_CHAR_ARRAY (NullUtil.jm_getInstance_0)))
    
    
    
    (let ([_LEVEL JR.null])
      (let/ec jreturn
        (void)
        (set-field! f_primitiveLongUtil this (PrimitiveLongUtil.jm_createPowerOfTen_1 1000))
        (set! _LEVEL "Lv ")
        (set-field! f_levelString this (JR.toCharArray _LEVEL))
        (set-field! f_maxlevel this _maxlevel)
        (set-field! f_level this _maxlevel)
        (send this jm_update_0)
        (set-field! f_updateMaxHeight this 14)))
  this)

(define (LevelHudWidget.jm_createHud_3 _maxlevel _location _direction)
    (let ()
      (let/ec jreturn
        (jreturn (LevelHudWidget.jnew_3 _maxlevel _location _direction)))))



