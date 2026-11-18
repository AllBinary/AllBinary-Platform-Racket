#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary.game.layer.special

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./SpecialGameInputInterface.rkt")
(provide (all-defined-out))

(define SpecialGameInput%
  (class JObject%
    (super-new)
    (define/public (jm_up_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_down_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_right_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_left_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_strafeLeft_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_strafeRight_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_fire_2 _layerManager _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_special1_2 _layerManager _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_special2_2 _layerManager _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_special3_2 _layerManager _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_special4_2 _layerManager _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_special5_2 _layerManager _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn (void))))))
(define (SpecialGameInput.jclassValue) SpecialGameInput%)

(define (SpecialGameInput.jnew_0)
  (define this (new SpecialGameInput% [jclass "SpecialGameInput"]))
  this)



