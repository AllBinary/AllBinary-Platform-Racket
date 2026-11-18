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
;; package org.allbinary.animation.text

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/animation/IndexedAnimation.rkt"
  "../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt")
(lazy-require ["../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(lazy-require ["../../../../org/allbinary/graphics/threed/SWTJOGLProcessor.rkt" (SWTJOGLProcessor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./TextChangeListener.rkt" (TextChangeListener.jm_getInstance_0)])
(provide (all-defined-out))

(define TextAnimation%
  (class IndexedAnimation%
    (super-new)
    (field [f_updateMyFontProcessor JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_textArrayP JR.null])
    (field [f_anchor 0])
    (field [f_fontHeight 0])
    (field [f_offsetY 0])
    (field [f_textChangeListener JR.null])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null][_adjustedFontHeight JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set-field! f_fontHeight this (send _font jm_getHeight_0))
        (set! _adjustedFontHeight (JR.d2i (- (* (JR.toDouble (get-field f_fontHeight this)) 2.00))))
        (set-field! f_offsetY this (if (send (SWTJOGLProcessor.jm_getInstance_0) jm_isJOGL_0) _adjustedFontHeight 0))
        (send (get-field f_textChangeListener this) jm_onMeasure_0)
        (set-field! f_textChangeListener this (TextChangeListener.jm_getInstance_0))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/override (jm_nextFrame_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (send this jm_paintXYNoUpdate_3 _graphics _x _y))))
    (define/public (jm_paintXYNoUpdate_3 _graphics _x _y)
    (let ([_size JR.null][_index JR.null])
      (let/ec jreturn
        (JR.className (get-field f_basicSetColorUtil this))
        (set! _size (vector-length (get-field f_textArrayP this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (send _graphics jm_drawString_4 (vector-ref (get-field f_textArrayP this) _index) _x (JR.i32 (+ (JR.i32 (+ _y (get-field f_offsetY this))) (JR.i32 (* _index (get-field f_fontHeight this))))) (get-field f_anchor this)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_setTextWithOnMeasure_2 _text _textChangeListener)
    (let ()
      (let/ec jreturn
        (send this jm_setText_1 _text)
        (set-field! f_textChangeListener this _textChangeListener))))
    (define/public (jm_setText_1 _text)
    (let ([_list JR.null][_index JR.null][_startIndex JR.null][_endIndex JR.null][_textArray JR.null][_size JR.null])
      (let/ec jreturn
        (set! _list (BasicArrayListD.jnew_0))
        (when (> (string-length _text) 0)
            (begin
            (set! _index 0)
            (set! _startIndex 0)
            (set! _endIndex 0)
            (let/ec jbreak (let jloop () (when (>= _index 0)
                    (let/ec jcontinue
                (set! _startIndex _index)
                (set! _index (JR.indexOf _text 10 _startIndex))
                (set! _endIndex _index)
                (when (< _index 0)
                    (begin
                    (set! _endIndex (string-length _text))))
                (send _list jm_add_1 (JR.substring _text _startIndex _endIndex))
                (when (< _index 0)
                    (begin
                    (jbreak (void))))
                (set! _index (JR.i32 (+ _index 1)))) (jloop))))))
        (if (> (send _list jm_size_0) 0)
            (begin
            (set! _textArray (JR.newArray JR.null (send _list jm_size_0)))
            (set! _size (send _list jm_size_0))
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index _size)
                    (let/ec jcontinue
                (vector-set! _textArray _index (send _list jm_get_1 _index)))
                    (set! _index (JR.i32 (+ _index 1))) (jloop)))))
            (set-field! f_textArrayP this _textArray))
            (begin
            (set-field! f_textArrayP this (get-field f_ONE_EMPTY_STRING_ARRAY (StringUtil.jm_getInstance_0)))))
        (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this)))))
    (define/public (jm_getTextArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_textArrayP this)))))
    (define/public (jm_getFontHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_fontHeight this)))))))
(define (TextAnimation.jclassValue) TextAnimation%)

(define (TextAnimation.jnew_2 _text _animationBehavior)
  (define this (new TextAnimation% [jclass "TextAnimation"]))
    (set-field! f_updateMyFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this))
    (set-field! f_textArrayP this (get-field f_ONE_EMPTY_STRING_ARRAY (StringUtil.jm_getInstance_0)))
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    (set-field! f_fontHeight this 0)
    (set-field! f_offsetY this 0)
    (set-field! f_textChangeListener this (TextChangeListener.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_setText_1 _text)))
  this)



