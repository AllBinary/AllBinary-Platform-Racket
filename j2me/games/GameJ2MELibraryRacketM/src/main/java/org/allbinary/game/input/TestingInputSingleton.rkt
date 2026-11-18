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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/game/layer/AllBinaryGameLayer.rkt"
  "./GameInputInterface.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_UP Canvas.jstatic_DOWN Canvas.jstatic_LEFT Canvas.jstatic_RIGHT Canvas.jstatic_KEY_NUM7 Canvas.jstatic_KEY_NUM9)])
(lazy-require ["../../../../org/allbinary/game/input/event/GameKeyEvent.rkt" (GameKeyEvent.jstatic_NONE)])
(lazy-require ["../../../../org/allbinary/graphics/RectangleFactory.rkt" (RectangleFactory.jstatic_SINGLETON)])
(lazy-require ["../../../../org/allbinary/graphics/paint/NullPaintable.rkt" (NullPaintable.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/view/ViewPosition.rkt" (ViewPosition.jm_getInstanceD_0)])
(lazy-require ["./GameInputProcessor.rkt" (GameInputProcessor.jnew_0)])
(lazy-require ["./InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(lazy-require ["./GameInputProcessorUtil.rkt" (GameInputProcessorUtil.jm_init_1)])
(provide (all-defined-out))

(define TestingInputSingleton%
  (class AllBinaryGameLayer%
    (super-new)
    (field [f_inputProcessorArray JR.null])
    (field [f_testInputPaintable JR.null])
    (define/public (jm_initInputProcessors_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_initInputProcessorsForTestInput_1 _aTestInputInterface)
    (let ([_testInputInterface JR.null])
      (let/ec jreturn
        (set! _testInputInterface _aTestInputInterface)
        (set-field! f_testInputPaintable this _testInputInterface)
        (vector-set! (get-field f_inputProcessorArray this) (Canvas.jstatic_UP) (GameInputProcessor.jnew_0))
        (vector-set! (get-field f_inputProcessorArray this) (Canvas.jstatic_DOWN) (GameInputProcessor.jnew_0))
        (vector-set! (get-field f_inputProcessorArray this) (Canvas.jstatic_LEFT) (GameInputProcessor.jnew_0))
        (vector-set! (get-field f_inputProcessorArray this) (Canvas.jstatic_RIGHT) (GameInputProcessor.jnew_0))
        (vector-set! (get-field f_inputProcessorArray this) (Canvas.jstatic_KEY_NUM7) (GameInputProcessor.jnew_0))
        (vector-set! (get-field f_inputProcessorArray this) (Canvas.jstatic_KEY_NUM9) (GameInputProcessor.jnew_0))
        (GameInputProcessorUtil.jm_init_1 (get-field f_inputProcessorArray this)))))
    (define/public (jm_processInputList_2 _allbinaryLayerManager _list)
    (let ([_key JR.null][_gameKeyEvent JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _key 0)
        (set! _gameKeyEvent JR.null)
        (set! _size (send _list jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _gameKeyEvent (vector-ref (get-field f_objectArray _list) _index))
            (set! _key (send _gameKeyEvent jm_getKey_0))
            (JR.className (vector-ref (get-field f_inputProcessorArray this) _key)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/override (jm_processInput_1 _allbinaryLayerManager)
    (let ()
      (let/ec jreturn
        (send this jm_processInputList_2 _allbinaryLayerManager (send this jm_getGameKeyEventList_0))
        (JR.className (send this jm_getGameKeyEventList_0)))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_testInputPaintable this) jm_paint_1 _graphics))))
    (define/override (jm_implmentsGameInputInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn #t))))))
(define (TestingInputSingleton.jclassValue) TestingInputSingleton%)

(define TestingInputSingleton.jcell_instance 'jnone)
(define (TestingInputSingleton.jstatic_instance)
  (when (eq? TestingInputSingleton.jcell_instance 'jnone) (set! TestingInputSingleton.jcell_instance (TestingInputSingleton.jnew_0)))
  TestingInputSingleton.jcell_instance)
(define (TestingInputSingleton.jsetstatic_instance value) (set! TestingInputSingleton.jcell_instance value))

(define (TestingInputSingleton.jnew_0)
  (define this (new TestingInputSingleton% [jclass "TestingInputSingleton"]))
    (set-field! f_inputProcessorArray this (JR.newArray JR.null (get-field f_MAX (InputFactory.jm_getInstance_0))))
    (set-field! f_testInputPaintable this (NullPaintable.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)
        (GameInputProcessorUtil.jm_init_1 (get-field f_inputProcessorArray this))))
  this)

(define (TestingInputSingleton.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TestingInputSingleton.jstatic_instance)))))



