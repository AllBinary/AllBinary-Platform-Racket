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
;; package org.allbinary.game.paint

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "../../../../org/allbinary/graphics/paint/Paintable.rkt")
(lazy-require ["../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(provide (all-defined-out))

;J2SEForJ2ME
(define OwnershipPaintable%
  (class Paintable%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_displayInfo JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_COPYRIGHT JR.null])
    (field [f_basicColor JR.null])
    (field [f_color 0])
    (field [f_anchor 0])
    (field [f_COPYRIGHT_Y 0])
    (field [f_beginWidth 0])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set-field! f_COPYRIGHT_Y this (JR.i32 (* 2 (send _font jm_getHeight_0))))
        (set-field! f_beginWidth this (arithmetic-shift (send _font jm_stringWidth_1 (get-field f_COPYRIGHT this)) (- (bitwise-and 1 31))))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/override (jm_setBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn
        (set-field! f_basicColor this _basicColor)
        (set-field! f_color this (send _basicColor jm_intValue_0)))))
    (define/public (jm_getBasicColorP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_basicColor this)))))
    (define/override (jm_paint_1 _graphics)
    (let ([_halfWidth JR.null][_height JR.null])
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (send _graphics jm_setColor_1 (get-field f_color this))
        (set! _halfWidth (send (get-field f_displayInfo this) jm_getLastHalfWidth_0))
        (set! _height (send (get-field f_displayInfo this) jm_getLastHeight_0))
        (send _graphics jm_drawString_4 (get-field f_COPYRIGHT this) (JR.i32 (- _halfWidth (get-field f_beginWidth this))) (JR.i32 (- _height (get-field f_COPYRIGHT_Y this))) (get-field f_anchor this)))))))
(define (OwnershipPaintable.jclassValue) OwnershipPaintable%)

(define (OwnershipPaintable.jnew_0)
  (define this (new OwnershipPaintable% [jclass "OwnershipPaintable"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_displayInfo this (DisplayInfoSingleton.jm_getInstance_0))
    (set-field! f_myFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    (set-field! f_COPYRIGHT this "AllBinary Copyright (c) 2011")
    (set-field! f_basicColor this (get-field f_WHITE (BasicColorFactory.jm_getInstance_0)))
    (set-field! f_color this (send (get-field f_basicColor this) jm_intValue_0))
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    
    
    (let ()
      (let/ec jreturn (void)))
  this)

(define (OwnershipPaintable.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OwnershipPaintable.jnew_0)))))



