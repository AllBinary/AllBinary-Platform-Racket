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
;; package org.allbinary.game.layer

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(provide (all-defined-out))

(define GameLayerUtil%
  (class JObject%
    (super-new)))
(define (GameLayerUtil.jclassValue) GameLayerUtil%)

(define (GameLayerUtil.jnew_0)
  (define this (new GameLayerUtil% [jclass "GameLayerUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (GameLayerUtil.jm_isOnScreen_1 _layer)
    (let ([_displayInfo JR.null][_viewPosition JR.null])
      (let/ec jreturn
        (set! _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (set! _viewPosition (send _layer jm_getViewPosition_0))
        (jreturn (GameLayerUtil.jm_isInside_8 (send _viewPosition jm_getX_0) (send _viewPosition jm_getY_0) (send _viewPosition jm_getX2_0) (send _viewPosition jm_getY2_0) 0 0 (send _displayInfo jm_getLastWidth_0) (send _displayInfo jm_getLastHeight_0))))))

(define (GameLayerUtil.jm_isInside_8 _rectX1 _rectY1 _rectX2 _rectY2 _rect2X1 _rect2Y1 _rect2X2 _rect2Y2)
    (let ()
      (let/ec jreturn
        (if (and (and (and (> _rectX1 _rect2X1) (< _rectX2 _rect2X2)) (> _rectY1 _rect2Y1)) (< _rectY2 _rect2Y2))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))



