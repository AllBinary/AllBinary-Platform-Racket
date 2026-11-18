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
;; package org.allbinary.game.ag.layer.hud.basic.time

(require racket/class racket/lazy-require
  "../../../../../../../../allbinary_java.rkt"
  "../../../../../../../../org/allbinary/game/graphics/hud/BasicHud.rkt")
(lazy-require ["../../../../../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_defaultStringWidth_2)])
(lazy-require ["../../../../../../../../org/allbinary/logic/math/PrimitiveLongSingleton.rkt" (PrimitiveLongSingleton.jm_getInstance_0)])
(provide (all-defined-out))

(define TimeHudWidget%
  (class BasicHud%
    (super-new)
    (inherit/super jm_paintDX_8)
    (field [f_TIME_STRING JR.null])
    (field [f_TIME_CHAR_ARRAY JR.null])
    (field [f_offset 0])
    (field [f_string JR.null])
    (field [f_totalDigits 0])
    (field [f_timer JR.null])
    (define/override (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set-field! f_updateMaxWidth this (JR.i32 (* (send _font jm_getSize_0) 5)))
        (set-field! f_offset this (JR.i32 (+ (send _font jm_stringWidth_1 (get-field f_TIME_STRING this)) (MyFontProcessor.jm_defaultStringWidth_2 _font 3))))
        (super jm_updateMeasurement_1 _graphics))))
    (define/public (jm_update_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_timer this) jm_update_0)
        (send this jm_set_0))))
    (define/public (jm_set_0)
    (let ()
      (let/ec jreturn
        (set-field! f_string this (send (get-field f_timer this) jm_getTimeChars_0))
        (set-field! f_totalDigits this (send (get-field f_timer this) jm_getCurrentTotalDigits_0)))))
    (define/public (jm_getTimer_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_timer this)))))
    (define/public (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (super jm_paintDX_8 _graphics (get-field f_TIME_CHAR_ARRAY this) 0 (vector-length (get-field f_TIME_CHAR_ARRAY this)) (get-field f_string this) 0 (get-field f_totalDigits this) (get-field f_offset this)))))))
(define (TimeHudWidget.jclassValue) TimeHudWidget%)

(define (TimeHudWidget.jnew_5 _location _direction _bufferZone _basicColor _timer)
  (define this (new TimeHudWidget% [jclass "TimeHudWidget"]))
    (set-field! f_TIME_STRING this "Time ")
    (set-field! f_TIME_CHAR_ARRAY this (vector (char->integer #\T) (char->integer #\i) (char->integer #\m) (char->integer #\e) 32))
    
    (set-field! f_string this (get-field f_ZERO (PrimitiveLongSingleton.jm_getInstance_0)))
    (set-field! f_totalDigits this 1)
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_timer this _timer)
        (send this jm_set_0)
        (set-field! f_updateMaxHeight this 14)))
  this)

(define (TimeHudWidget.jm_getInstance_4 _location _direction _basicColor _timer)
    (let ()
      (let/ec jreturn
        (jreturn (TimeHudWidget.jnew_5 _location _direction 2 _basicColor _timer)))))



