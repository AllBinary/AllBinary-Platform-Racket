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
;; package org.allbinary.game.ag.ai

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/ai/BasicAI.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_KEY_NUM1)])
(provide (all-defined-out))

(define SpinnerAI%
  (class BasicAI%
    (super-new)
    (inherit/super jm_processKeyAI_1)
    (field [f_isEven #f])
    (field [f_direction JR.null])
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ()
      (let/ec jreturn
        (if (get-field f_isEven this)
            (begin
            (super jm_processKeyAI_1 (vector-ref (get-field f_direction this) 0))
            (set-field! f_isEven this #f))
            (begin
            (super jm_processKeyAI_1 (Canvas.jstatic_KEY_NUM1))
            (set-field! f_isEven this #t))))))))
(define (SpinnerAI.jclassValue) SpinnerAI%)

(define (SpinnerAI.jnew_3 _direction _ownerLayerInterface _gameInput)
  (define this (new SpinnerAI% [jclass "SpinnerAI"]))
    
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_direction this _direction)))
  this)



