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
;; package org.allbinary.game.paint

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/paint/StatePaintable.rkt")
(lazy-require ["../../../../org/allbinary/graphics/paint/NullPaintable.rkt" (NullPaintable.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicGameDemoPaintable%
  (class StatePaintable%
    (super-new)
    (field [f_mainDemoStatePaintable JR.null])
    (field [f_ownershipPaintable JR.null])
    (field [f_helpPaintableInterface JR.null])
    (field [f_currentStatePaintable JR.null])
    (define/override (jm_setState_1 _state)
    (let ()
      (let/ec jreturn
        (if (= _state 0)
            (begin
            (send this jm_setCurrentStatePaintable_1 (send this jm_getMainDemoStatePaintable_0)))
            (if (= _state 1)
            (begin
            (send this jm_setCurrentStatePaintable_1 (get-field f_helpPaintableInterface this)))
            (begin
            (send this jm_setCurrentStatePaintable_1 (get-field f_ownershipPaintable this))))))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (send this jm_getCurrentStatePaintable_0) jm_paint_1 _graphics))))
    (define/public (jm_getHelpPaintableInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_helpPaintableInterface this)))))
    (define/public (jm_setCurrentStatePaintable_1 _currentStatePaintable)
    (let ()
      (let/ec jreturn
        (set-field! f_currentStatePaintable this _currentStatePaintable))))
    (define/public (jm_getCurrentStatePaintable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_currentStatePaintable this)))))
    (define/public (jm_getMainDemoStatePaintable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_mainDemoStatePaintable this)))))))
(define (BasicGameDemoPaintable.jclassValue) BasicGameDemoPaintable%)

(define (BasicGameDemoPaintable.jnew_3 _mainDemoStatePaintable _ownershipPaintable _helpPaintableInterface)
  (define this (new BasicGameDemoPaintable% [jclass "BasicGameDemoPaintable"]))
    
    
    
    (set-field! f_currentStatePaintable this (NullPaintable.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (set-field! f_mainDemoStatePaintable this _mainDemoStatePaintable)
        (send this jm_setCurrentStatePaintable_1 (NullPaintable.jm_getInstance_0))
        (set-field! f_ownershipPaintable this _ownershipPaintable)
        (set-field! f_helpPaintableInterface this _helpPaintableInterface)))
  this)



