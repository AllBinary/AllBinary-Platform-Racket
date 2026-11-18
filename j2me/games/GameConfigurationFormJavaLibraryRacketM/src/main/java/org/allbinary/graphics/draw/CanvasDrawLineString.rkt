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
;; package org.allbinary.graphics.draw

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt")
(lazy-require ["../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(lazy-require ["./DrawStringUtil.rkt" (DrawStringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define CanvasDrawLineString%
  (class JObject%
    (super-new)
    (field [f_drawStringUtil JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_x 0])
    (field [f_y 0])
    (field [f_fontHeight 0])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set-field! f_fontHeight this (send _font jm_getHeight_0))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/public (jm_paint_3 _graphics _string _line)
    (let ()
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (send (get-field f_drawStringUtil this) jm_drawCenterString_6 _graphics _string 0 (string-length _string) (get-field f_x this) (JR.i32 (+ (get-field f_y this) (JR.i32 (* _line (get-field f_fontHeight this)))))))))))
(define (CanvasDrawLineString.jclassValue) CanvasDrawLineString%)

(define CanvasDrawLineString.jcell_NULL_CANVAS_DRAW_LINE_STRING 'jnone)
(define (CanvasDrawLineString.jstatic_NULL_CANVAS_DRAW_LINE_STRING)
  (when (eq? CanvasDrawLineString.jcell_NULL_CANVAS_DRAW_LINE_STRING 'jnone) (set! CanvasDrawLineString.jcell_NULL_CANVAS_DRAW_LINE_STRING (CanvasDrawLineString.jnew_2 0 0)))
  CanvasDrawLineString.jcell_NULL_CANVAS_DRAW_LINE_STRING)
(define (CanvasDrawLineString.jsetstatic_NULL_CANVAS_DRAW_LINE_STRING value) (set! CanvasDrawLineString.jcell_NULL_CANVAS_DRAW_LINE_STRING value))

(define (CanvasDrawLineString.jnew_2 _x _y)
  (define this (new CanvasDrawLineString% [jclass "CanvasDrawLineString"]))
    (set-field! f_drawStringUtil this (DrawStringUtil.jm_getInstance_0))
    (set-field! f_myFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    
    
    (set-field! f_fontHeight this 0)
    (let ()
      (let/ec jreturn
        (set-field! f_x this _x)
        (set-field! f_y this _y)))
  this)



