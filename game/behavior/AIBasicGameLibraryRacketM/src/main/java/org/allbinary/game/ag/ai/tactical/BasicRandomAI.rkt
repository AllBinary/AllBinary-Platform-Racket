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
;; package org.allbinary.game.ag.ai.tactical

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/game/ai/BasicAI.rkt"
  "../../../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_UP Canvas.jstatic_DOWN Canvas.jstatic_LEFT Canvas.jstatic_RIGHT Canvas.jstatic_KEY_NUM1 Canvas.jstatic_KEY_NUM7 Canvas.jstatic_KEY_NUM9)])
(lazy-require ["../../../../../../org/allbinary/game/rand/MyRandomFactory.rkt" (MyRandomFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory.rkt" (GameTickTimeDelayHelperFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicRandomAI%
  (class BasicAI%
    (super-new)
    (field [f_i_random 0])
    (field [f_inputProbability JR.null])
    (field [f_visitor JR.null])
    (field [f_keyArray JR.null])
    (field [f_myRandomFactory JR.null])
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ([_repeat JR.null][_repeatLikelyhoodIntegerArray JR.null][_likelyhoodIntegerArray JR.null][_size JR.null][_likelyhoodIntegerKeyArray JR.null][_key JR.null][_index JR.null])
      (let/ec jreturn
        (when (JR.className (send (get-field f_inputProbability this) jm_getTimeDelayHelper_0))
            (begin
            (set-field! f_i_random this (send (get-field f_myRandomFactory this) jm_getAbsoluteNextInt_1 (send (get-field f_inputProbability this) jm_getMax_0)))
            (set! _repeat #f)
            (set! _repeatLikelyhoodIntegerArray (send (get-field f_inputProbability this) jm_getRepeatLikelyhoodIntegerArray_0))
            (when (and (not (= (send this jm_getLastKey_0) (JR.i32 (- 1)))) (>= (JR.className (vector-ref _repeatLikelyhoodIntegerArray (send this jm_getLastKey_0))) (get-field f_i_random this)))
                (begin
                (set! _repeat #t)))
            (when (not _repeat)
                (begin
                (set! _likelyhoodIntegerArray (send (get-field f_inputProbability this) jm_getLikelyhoodIntegerArray_0))
                (set-field! f_i_random this (send (get-field f_myRandomFactory this) jm_getAbsoluteNextInt_1 (send (get-field f_inputProbability this) jm_getMax_0)))
                (set! _size (vector-length (get-field f_keyArray this)))
                (set! _likelyhoodIntegerKeyArray JR.null)
                (begin
                    (set! _index 0)
                    (let/ec jbreak (let jloop () (when (< _index _size)
                        (let/ec jcontinue
                    (set! _key (vector-ref (get-field f_keyArray this) _index))
                    (set! _likelyhoodIntegerKeyArray (vector-ref _likelyhoodIntegerArray _key))
                    (when (and (>= (vector-length _likelyhoodIntegerArray) _key) (not (JR.null? (vector-ref _likelyhoodIntegerKeyArray 0))))
                        (begin
                        (when (and (>= (get-field f_i_random this) (JR.className (vector-ref _likelyhoodIntegerKeyArray 0))) (< (get-field f_i_random this) (JR.className (vector-ref _likelyhoodIntegerKeyArray 1))))
                            (begin
                            (send this jm_setLastKey_1 _key)
                            (jbreak (void)))))))
                        (set! _index (JR.i32 (+ _index 1))) (jloop)))))))
            (send (get-field f_visitor this) jm_visit_1 this))))))))
(define (BasicRandomAI.jclassValue) BasicRandomAI%)

(define (BasicRandomAI.jnew_4 _ownerLayerInterface _gameInput _inputProbability _visitor)
  (define this (new BasicRandomAI% [jclass "BasicRandomAI"]))
    (set-field! f_i_random this 0)
    
    
    (set-field! f_keyArray this (vector (Canvas.jstatic_UP) (Canvas.jstatic_DOWN) (Canvas.jstatic_LEFT) (Canvas.jstatic_RIGHT) (Canvas.jstatic_KEY_NUM1) (Canvas.jstatic_KEY_NUM7) (Canvas.jstatic_KEY_NUM9)))
    (set-field! f_myRandomFactory this (MyRandomFactory.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_inputProbability this _inputProbability)
        (set-field! f_visitor this _visitor)))
  this)



