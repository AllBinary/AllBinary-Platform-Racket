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
(provide (all-defined-out))

(define BoundBounceAI%
  (class BasicAI%
    (super-new)
    (field [f_currentRelativeAngle 0])
    (field [f_layerBounds JR.null])
    (field [f_boundsVisitorInterface JR.null])
    (define/public (jm_paint_1 _graphics)
    (let ([_rectange JR.null])
      (let/ec jreturn
        (set! _rectange (send (get-field f_layerBounds this) jm_getRectangleP_0))
        (send _graphics jm_drawRect_4 (JR.className (send _rectange jm_getPoint_0)) (JR.className (send _rectange jm_getPoint_0)) (send _rectange jm_getWidth_0) (send _rectange jm_getHeight_0)))))
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ()
      (let/ec jreturn
        (send (get-field f_layerBounds this) jm_visit_1 (get-field f_boundsVisitorInterface this)))))))
(define (BoundBounceAI.jclassValue) BoundBounceAI%)

(define (BoundBounceAI.jnew_4 _ownerLayerInterface _gameInput _layerBounds _boundsVisitorInterface)
  (define this (new BoundBounceAI% [jclass "BoundBounceAI"]))
    (set-field! f_currentRelativeAngle this 0)
    
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_layerBounds this _layerBounds)
        (set-field! f_boundsVisitorInterface this _boundsVisitorInterface)))
  this)



