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
  "../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "./HighScoresCanvasInputProcessor.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_RIGHT Canvas.jstatic_LEFT)])
(lazy-require ["../../../../org/allbinary/game/input/event/GameKeyEventHandler.rkt" (GameKeyEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/input/event/GameKeyEventUtil.rkt" (GameKeyEventUtil.jm_getKey_1)])
(lazy-require ["../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(provide (all-defined-out))

(define HighScoresCanvasLevelChangeInputProcessor%
  (class HighScoresCanvasInputProcessor%
    (super-new)
    (field [f_displayInfoSingleton JR.null])
    (field [f_INSTRUCTIONS JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_anchor 0])
    (field [f_fontHeight 0])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set-field! f_fontHeight this (send _font jm_getHeight_0))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/override (jm_open_0)
    (let ()
      (let/ec jreturn
        (send (GameKeyEventHandler.jm_getInstance_0) jm_addListener_1 this))))
    (define/override (jm_close_0)
    (let ()
      (let/ec jreturn
        (send (GameKeyEventHandler.jm_getInstance_0) jm_removeListener_1 this))))
    (define/override (jm_update_0)
    (let ([_list JR.null][_size JR.null][_anyType JR.null][_key JR.null][_index JR.null])
      (let/ec jreturn
        (set! _list (send this jm_getGameKeyEventList_0))
        (set! _size (send _list jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _anyType (vector-ref (get-field f_objectArray _list) _index))
            (set! _key (GameKeyEventUtil.jm_getKey_1 _anyType))
            (if (= _key (Canvas.jstatic_RIGHT))
                (begin
                (JR.className (JR.className (send this jm_getHighScoresCanvas_0))))
                (when (= _key (Canvas.jstatic_LEFT))
                (begin
                (JR.className (JR.className (send this jm_getHighScoresCanvas_0))))))
            (JR.className (send this jm_getHighScoresCanvas_0)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (send _list jm_clear_0))))
    (define/override (jm_paint_1 _graphics)
    (let ([_width JR.null][_topScoresWidth JR.null])
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (set! _width (send (get-field f_displayInfoSingleton this) jm_getLastWidth_0))
        (set! _topScoresWidth (arithmetic-shift (JR.className (send _graphics jm_getFont_0)) (- (bitwise-and 1 31))))
        (send _graphics jm_drawString_4 (get-field f_INSTRUCTIONS this) (JR.i32 (- (arithmetic-shift _width (- (bitwise-and 1 31))) _topScoresWidth)) (JR.i32 (* (get-field f_fontHeight this) 2)) (get-field f_anchor this)))))))
(define (HighScoresCanvasLevelChangeInputProcessor.jclassValue) HighScoresCanvasLevelChangeInputProcessor%)

(define (HighScoresCanvasLevelChangeInputProcessor.jnew_1 _highScoresCanvas)
  (define this (new HighScoresCanvasLevelChangeInputProcessor% [jclass "HighScoresCanvasLevelChangeInputProcessor"]))
    (set-field! f_displayInfoSingleton this (DisplayInfoSingleton.jm_getInstance_0))
    (set-field! f_INSTRUCTIONS this "(Right = Next Track, Left = Previous Track)")
    (set-field! f_myFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    (set-field! f_fontHeight this 0)
    (let ()
      (let/ec jreturn
        (void)))
  this)



