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
;; package org.allbinary.media

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "../../../java/lang/Integer.rkt"
  "./AllBinaryVibrationME.rkt")
(lazy-require ["../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(lazy-require ["../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(provide (all-defined-out))

(define AllBinaryVisualDebugVibration%
  (class AllBinaryVibrationME%
    (super-new)
    (field [f_displayInfoSingleton JR.null])
    (field [f_timeDelayHelper JR.null])
    (field [f_VIBRATING JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_anchor 0])
    (field [f_width 0])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set-field! f_width this (send _font jm_stringWidth_1 (get-field f_VIBRATING this)))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/override (jm_vibrate_3 _duration _type _volume)
    (let ()
      (let/ec jreturn
        (set-field! f_delay (get-field f_timeDelayHelper this) _duration))))
    (define/public (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (when (send (get-field f_timeDelayHelper this) jm_isTimeTNT_0)
            (begin
            (set-field! f_delay (get-field f_timeDelayHelper this) (Integer.jstatic_MAX_VALUE))
            (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
            (send _graphics jm_drawString_4 (get-field f_VIBRATING this) (JR.i32 (- (send (get-field f_displayInfoSingleton this) jm_getLastHalfWidth_0) (arithmetic-shift (get-field f_width this) (- (bitwise-and 1 31))))) 0 (get-field f_anchor this)))))))))
(define (AllBinaryVisualDebugVibration.jclassValue) AllBinaryVisualDebugVibration%)

(define (AllBinaryVisualDebugVibration.jnew_0)
  (define this (new AllBinaryVisualDebugVibration% [jclass "AllBinaryVisualDebugVibration"]))
    (set-field! f_displayInfoSingleton this (DisplayInfoSingleton.jm_getInstance_0))
    (set-field! f_timeDelayHelper this (TimeDelayHelper.jnew_1 (Integer.jstatic_MAX_VALUE)))
    (set-field! f_VIBRATING this "Vibrating")
    (set-field! f_myFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    
  this)



