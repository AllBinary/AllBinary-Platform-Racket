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
(provide (all-defined-out))

(define BasicLayerPlacement%
  (class JObject%
    (super-new)
    (field [f_layerType JR.null])
    (field [f_width 0])
    (field [f_height 0])
    (define/public (jm_getWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_width this)))))
    (define/public (jm_getHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_height this)))))
    (define/public (jm_getLayerType_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_layerType this)))))
    (define/public (jm_setLayerType_1 _layerType)
    (let ()
      (let/ec jreturn
        (set-field! f_layerType this _layerType))))))
(define (BasicLayerPlacement.jclassValue) BasicLayerPlacement%)

(define (BasicLayerPlacement.jnew_3 _layerType _width _height)
  (define this (new BasicLayerPlacement% [jclass "BasicLayerPlacement"]))
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_layerType this _layerType)
        (set-field! f_width this _width)
        (set-field! f_height this _height)))
  this)



