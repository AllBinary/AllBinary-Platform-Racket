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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./BasicMenuInputProcessor.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/NullCanvas.rkt" (NullCanvas.jstatic_NULL_CANVAS)])
(lazy-require ["../../../../../org/allbinary/game/commands/GameCommandsFactory.rkt" (GameCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/GameInputStrings.rkt" (GameInputStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define DemoCanvasBasicStartInputProcessor%
  (class BasicMenuInputProcessor%
    (super-new)
    (define/override (jm_processInputList_0)
    (let ([_list JR.null][_size JR.null][_gameKeyEvent JR.null][_index JR.null])
      (let/ec jreturn
        (set! _list (send this jm_getGameKeyEventList_0))
        (set! _size (send _list jm_size_0))
        (set! _gameKeyEvent JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _gameKeyEvent (vector-ref (get-field f_objectArray _list) _index))
            (JR.className (get-field f_logUtil this)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (JR.className (JR.className (send this jm_getCanvas_0)))
        (jreturn _size))))))
(define (DemoCanvasBasicStartInputProcessor.jclassValue) DemoCanvasBasicStartInputProcessor%)

(define (DemoCanvasBasicStartInputProcessor.jnew_2 _gameKeyEventList _gameCanvas)
  (define this (new DemoCanvasBasicStartInputProcessor% [jclass "DemoCanvasBasicStartInputProcessor"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



