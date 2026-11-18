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
;; package org.allbinary.game.score

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/color/ColorChangeListener.rkt"
  "../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "../../../../org/allbinary/graphics/paint/Paintable.rkt")
(lazy-require ["../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(lazy-require ["./NullHighScoresSingletonFactory.rkt" (NullHighScoresSingletonFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define HighScoresPaintable%
  (class Paintable%
    (super-new)
    (field [f_displayInfoSingleton JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_basicColor JR.null])
    (field [f_highScores JR.null])
    (field [f_anchor 0])
    (field [f_charHeight 0])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set-field! f_charHeight this (send _font jm_getHeight_0))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/public (jm_onEvent_1 _eventObject)
    (let ([_colorChangeEvent JR.null])
      (let/ec jreturn
        (set! _colorChangeEvent _eventObject)
        (set-field! f_basicColor this (send _colorChangeEvent jm_getBasicColorP_0)))))
    (define/override (jm_paint_1 _graphics)
    (let ([_width JR.null][_height JR.null][_heading JR.null][_topScoresWidth JR.null][_charHeight JR.null][_columnTwoHeading JR.null][_columnTwoHeadingWidth JR.null][_index JR.null][_largestSecondColumnWidth JR.null][_list JR.null][_size JR.null][_vectorIndex JR.null][_highScore JR.null][_nextScoreWidth JR.null])
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (set! _width (send (get-field f_displayInfoSingleton this) jm_getLastWidth_0))
        (set! _height (send (get-field f_displayInfoSingleton this) jm_getLastHeight_0))
        (send _graphics jm_setColor_1 (send (send this jm_getBasicColorP_0) jm_intValue_0))
        (set! _heading (send (get-field f_highScores this) jm_getHeading_0))
        (set! _topScoresWidth (arithmetic-shift (JR.className (send _graphics jm_getFont_0)) (- (bitwise-and 1 31))))
        (set! _charHeight (get-field f_charHeight this))
        (send _graphics jm_drawString_4 _heading (JR.i32 (- (arithmetic-shift _width (- (bitwise-and 1 31))) _topScoresWidth)) _charHeight (get-field f_anchor this))
        (send _graphics jm_drawString_4 (send (get-field f_highScores this) jm_getColumnOneHeading_0) 10 (JR.i32 (* _charHeight 3)) (get-field f_anchor this))
        (set! _columnTwoHeading (send (get-field f_highScores this) jm_getColumnTwoHeading_0))
        (set! _columnTwoHeadingWidth (JR.className (send _graphics jm_getFont_0)))
        (send _graphics jm_drawString_4 _columnTwoHeading (JR.i32 (- (JR.i32 (- _width 10)) _columnTwoHeadingWidth)) (JR.i32 (* _charHeight 3)) (get-field f_anchor this))
        (set! _index 4)
        (set! _largestSecondColumnWidth _columnTwoHeadingWidth)
        (set! _list (send (get-field f_highScores this) jm_getList_0))
        (set! _size (send _list jm_size_0))
        (set! _vectorIndex 0)
        (set! _highScore JR.null)
        (let/ec jbreak (let jloop () (when (and (< _vectorIndex _size) (< (JR.i32 (* _charHeight _index)) (JR.i32 (- _height (JR.i32 (* _charHeight 2))))))
                (let/ec jcontinue
            (set! _highScore (vector-ref (get-field f_objectArray _list) _vectorIndex))
            (set! _nextScoreWidth (JR.className (send _graphics jm_getFont_0)))
            (when (> _nextScoreWidth _largestSecondColumnWidth)
                (begin
                (set! _largestSecondColumnWidth _nextScoreWidth)))
            (set! _vectorIndex (JR.i32 (+ _vectorIndex 1)))) (jloop))))
        (set! _vectorIndex 0)
        (let/ec jbreak (let jloop () (when (and (< _vectorIndex _size) (< (JR.i32 (* _charHeight _index)) (JR.i32 (- _height (JR.i32 (* _charHeight 2))))))
                (let/ec jcontinue
            (set! _highScore (vector-ref (get-field f_objectArray _list) _vectorIndex))
            (send _graphics jm_drawString_4 (send _highScore jm_getName_0) 10 (JR.i32 (* _charHeight _index)) (get-field f_anchor this))
            (send _graphics jm_drawString_4 (send _highScore jm_getScoreString_0) (JR.i32 (- (JR.i32 (- _width 10)) _largestSecondColumnWidth)) (JR.i32 (* _charHeight _index)) (get-field f_anchor this))
            (set! _index (JR.i32 (+ _index 1)))
            (set! _vectorIndex (JR.i32 (+ _vectorIndex 1)))) (jloop)))))))
    (define/override (jm_setBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn
        (set-field! f_basicColor this _basicColor))))
    (define/public (jm_getBasicColorP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_basicColor this)))))
    (define/public (jm_setHighScores_1 _highScores)
    (let ()
      (let/ec jreturn
        (set-field! f_highScores this _highScores))))))
(define (HighScoresPaintable.jclassValue) HighScoresPaintable%)

(define (HighScoresPaintable.jnew_0)
  (define this (new HighScoresPaintable% [jclass "HighScoresPaintable"]))
    (set-field! f_displayInfoSingleton this (DisplayInfoSingleton.jm_getInstance_0))
    (set-field! f_myFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    (set-field! f_basicColor this (get-field f_WHITE (BasicColorFactory.jm_getInstance_0)))
    (set-field! f_highScores this (NullHighScoresSingletonFactory.jm_getInstance_0))
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    
    (let ()
      (let/ec jreturn (void)))
  this)



