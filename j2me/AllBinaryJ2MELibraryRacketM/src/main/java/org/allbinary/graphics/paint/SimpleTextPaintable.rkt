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
;; package org.allbinary.graphics.paint

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "./Paintable.rkt")
(lazy-require ["../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(provide (all-defined-out))

(define SimpleTextPaintable%
  (class Paintable%
    (super-new)
    (field [f_displayInfoSingleton JR.null])
    (field [f_updateMyFontProcessor JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_text JR.null])
    (field [f_basicColor JR.null])
    (field [f_topScoresWidth 0])
    (field [f_fontHeight 0])
    (field [f_anchor 0])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set-field! f_topScoresWidth this (arithmetic-shift (send _font jm_stringWidth_1 (get-field f_text this)) (- (bitwise-and 1 31))))
        (set-field! f_fontHeight this (send _font jm_getHeight_0))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/override (jm_paint_1 _graphics)
    (let ([_width JR.null])
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (set! _width (vector-ref (send (get-field f_displayInfoSingleton this) jm_getLast_0) (get-field f_WIDTH (get-field f_displayInfoSingleton this))))
        (send _graphics jm_setColor_1 (send (send this jm_getBasicColorP_0) jm_intValue_0))
        (send _graphics jm_drawString_4 (get-field f_text this) (JR.i32 (- (arithmetic-shift _width (- (bitwise-and 1 31))) (get-field f_topScoresWidth this))) (get-field f_fontHeight this) (get-field f_anchor this)))))
    (define/override (jm_setBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn
        (set-field! f_basicColor this _basicColor))))
    (define/public (jm_getBasicColorP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_basicColor this)))))
    (define/public (jm_setText_1 _text)
    (let ()
      (let/ec jreturn
        (set-field! f_text this _text)
        (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this)))))
    (define/public (jm_getText_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_text this)))))))
(define (SimpleTextPaintable.jclassValue) SimpleTextPaintable%)

(define (SimpleTextPaintable.jnew_2 _text _basicColor)
  (define this (new SimpleTextPaintable% [jclass "SimpleTextPaintable"]))
    (set-field! f_displayInfoSingleton this (DisplayInfoSingleton.jm_getInstance_0))
    (set-field! f_updateMyFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this))
    
    
    (set-field! f_topScoresWidth this 0)
    (set-field! f_fontHeight this 0)
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    (let ()
      (let/ec jreturn
        (set-field! f_text this _text)
        (set-field! f_basicColor this _basicColor)))
  this)



