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
  "../../../../../org/allbinary/game/input/PlayerGameInput.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/GameKeyFactory.rkt" (GameKeyFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/GameKeyEvent.rkt" (GameKeyEvent.jstatic_NONE)])
(lazy-require ["../../../../../org/allbinary/game/input/event/GameKeyEventUtil.rkt" (GameKeyEventUtil.jm_getKey_1)])
(lazy-require ["../../../../../org/allbinary/game/layer/special/SpecialGameInputFactory.rkt" (SpecialGameInputFactory.jstatic_NO_SPECIAL_GAME_INPUT)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define CheatGameInputProcessor%
  (class PlayerGameInput%
    (super-new)
    (field [f_PROCESS_GAME JR.null])
    (field [f_gameCanvas JR.null])
    (field [f_gameKeyFactory JR.null])
    (define/override (jm_update_0)
    (let ([_gameLayerManager JR.null][_list JR.null][_size JR.null][_anyType JR.null][_key JR.null][_index JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (set! _gameLayerManager (send (get-field f_gameCanvas this) jm_getLayerManager_0))
            (set! _list (send this jm_getGameKeyEventList_0))
            (set! _size (send _list jm_size_0))
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index _size)
                    (let/ec jcontinue
                (set! _anyType (vector-ref (get-field f_objectArray _list) _index))
                (set! _key (GameKeyEventUtil.jm_getKey_1 _anyType))
                (if (= _key (JR.className (get-field f_LEVEL_DOWN (get-field f_gameKeyFactory this))))
                    (begin
                    (JR.className (CheatGameInputProcessor.jstatic_inputProcessor))
                    (jbreak (void)))
                    (when (= _key (JR.className (get-field f_LEVEL_UP (get-field f_gameKeyFactory this))))
                    (begin
                    (JR.className (CheatGameInputProcessor.jstatic_inputProcessor))
                    (jbreak (void)))))
                (if (= _key (JR.className (get-field f_LEFT (get-field f_gameKeyFactory this))))
                    (begin
                    (JR.className (CheatGameInputProcessor.jstatic_inputProcessor))
                    (jbreak (void)))
                    (if (= _key (JR.className (get-field f_RIGHT (get-field f_gameKeyFactory this))))
                    (begin
                    (JR.className (CheatGameInputProcessor.jstatic_inputProcessor))
                    (jbreak (void)))
                    (if (= _key (JR.className (get-field f_UP (get-field f_gameKeyFactory this))))
                    (begin
                    (JR.className (CheatGameInputProcessor.jstatic_inputProcessor))
                    (jbreak (void)))
                    (if (= _key (JR.className (get-field f_DOWN (get-field f_gameKeyFactory this))))
                    (begin
                    (JR.className (CheatGameInputProcessor.jstatic_inputProcessor))
                    (jbreak (void)))
                    (if (= _key (JR.className (get-field f_KEY_NUM1 (get-field f_gameKeyFactory this))))
                    (begin
                    (JR.className (CheatGameInputProcessor.jstatic_inputProcessor))
                    (jbreak (void)))
                    (when (= _key (JR.className (get-field f_KEY_NUM3 (get-field f_gameKeyFactory this))))
                    (begin
                    (JR.className (CheatGameInputProcessor.jstatic_inputProcessor))
                    (jbreak (void))))))))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop)))))
            (send _list jm_clear_0)))))))
(define (CheatGameInputProcessor.jclassValue) CheatGameInputProcessor%)

(define CheatGameInputProcessor.jcell_inputProcessor 'jnone)
(define (CheatGameInputProcessor.jstatic_inputProcessor)
  (when (eq? CheatGameInputProcessor.jcell_inputProcessor 'jnone) (set! CheatGameInputProcessor.jcell_inputProcessor (SpecialGameInputFactory.jstatic_NO_SPECIAL_GAME_INPUT)))
  CheatGameInputProcessor.jcell_inputProcessor)
(define (CheatGameInputProcessor.jsetstatic_inputProcessor value) (set! CheatGameInputProcessor.jcell_inputProcessor value))

(define (CheatGameInputProcessor.jnew_1 _gameCanvas)
  (define this (new CheatGameInputProcessor% [jclass "CheatGameInputProcessor"]))
    (set-field! f_PROCESS_GAME this "processGame")
    
    (set-field! f_gameKeyFactory this (GameKeyFactory.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_gameCanvas this _gameCanvas)))
  this)



