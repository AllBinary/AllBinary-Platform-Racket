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
;; package org.allbinary.bounds

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./LayerBounds.rkt")
(provide (all-defined-out))

(define TopULayerBounds%
  (class LayerBounds%
    (super-new)
    (define/override (jm_visit_1 _boundsVisitorInterface)
    (let ()
      (let/ec jreturn
        (when (> (send _boundsVisitorInterface jm_getX_0) (send (get-field f_rectangle this) jm_getMaxX_0))
            (begin
            (send _boundsVisitorInterface jm_maxX_0)))
        (when (< (send _boundsVisitorInterface jm_getX_0) (JR.className (send (get-field f_rectangle this) jm_getPoint_0)))
            (begin
            (send _boundsVisitorInterface jm_minX_0)))
        (when (< (send _boundsVisitorInterface jm_getY_0) (JR.className (send (get-field f_rectangle this) jm_getPoint_0)))
            (begin
            (send _boundsVisitorInterface jm_minY_0))))))))
(define (TopULayerBounds.jclassValue) TopULayerBounds%)

(define (TopULayerBounds.jnew_1 _rectangle)
  (define this (new TopULayerBounds% [jclass "TopULayerBounds"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



