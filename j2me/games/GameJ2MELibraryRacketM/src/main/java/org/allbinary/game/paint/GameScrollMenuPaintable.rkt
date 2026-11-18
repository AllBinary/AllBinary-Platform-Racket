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
  "../../../../org/allbinary/graphics/color/ColorChangeListener.rkt"
  "./BasicGameDemoPaintable.rkt")
(lazy-require ["../../../../org/allbinary/graphics/color/ColorChangeEventHandler.rkt" (ColorChangeEventHandler.jm_getInstance_0)])
(provide (all-defined-out))

(define GameScrollMenuPaintable%
  (class BasicGameDemoPaintable%
    (super-new)
    (define/override (jm_setState_1 _state)
    (let ()
      (let/ec jreturn
        (send this jm_setCurrentStatePaintable_1 (send this jm_getMainDemoStatePaintable_0)))))
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setColor_1 _basicColor)
    (let ([_mainGameDemoStatePaintable JR.null][_formPaintable JR.null][_scrollSelectionForm JR.null][_item JR.null][_stringComponent JR.null][_index JR.null])
      (let/ec jreturn
        (set! _mainGameDemoStatePaintable (send this jm_getMainDemoStatePaintable_0))
        (set! _formPaintable (send _mainGameDemoStatePaintable jm_getMenuPaintableInterface_0))
        (set! _scrollSelectionForm (send _formPaintable jm_getForm_0))
        (JR.className (send _mainGameDemoStatePaintable jm_getOwnershipPaintableInterface_0))
        (send _scrollSelectionForm jm_setButtonBasicColor_1 _basicColor)
        (set! _item JR.null)
        (set! _stringComponent JR.null)
        (begin
            (set! _index (JR.i32 (- (send _scrollSelectionForm jm_size_0) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _item (send _scrollSelectionForm jm_get_1 _index))
            (set! _stringComponent (send _item jm_getLabelStringComponent_0))
            (when (not (JR.null? _stringComponent))
                (begin
                (send _stringComponent jm_setForegroundBasicColor_1 _basicColor))))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))))
(define (GameScrollMenuPaintable.jclassValue) GameScrollMenuPaintable%)

(define (GameScrollMenuPaintable.jnew_4 _mainDemoStatePaintable _ownershipPaintable _helpPaintableInterface _basicColor)
  (define this (new GameScrollMenuPaintable% [jclass "GameScrollMenuPaintable"]))
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_setColor_1 _basicColor)
        (send (ColorChangeEventHandler.jm_getInstance_0) jm_addListenerInterface_1 this)))
  this)



