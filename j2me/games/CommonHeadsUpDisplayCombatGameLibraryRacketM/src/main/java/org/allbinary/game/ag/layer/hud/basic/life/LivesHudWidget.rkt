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
;; package org.allbinary.game.ag.layer.hud.basic.life

(require racket/class racket/lazy-require
  "../../../../../../../../allbinary_java.rkt"
  "../../../../../../../../org/allbinary/game/graphics/hud/BasicHud.rkt"
  "../../../../../../../../org/allbinary/graphics/paint/PaintableInterface.rkt")
(lazy-require ["../../../../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define LivesHudWidget%
  (class BasicHud%
    (super-new)
    (field [f_lifeInterface JR.null])
    (field [f_xArray JR.null])
    (field [f_animationInterface JR.null])
    (define/override (jm_updateMeasurement_1 _graphics)
    (let ([_maxLives JR.null][_index JR.null])
      (let/ec jreturn
        (super jm_updateMeasurement_1 _graphics)
        (set! _maxLives (send (send this jm_getLifeInterface_0) jm_getMaxlives_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _maxLives)
                (let/ec jcontinue
            (vector-set! (get-field f_xArray this) _index (JR.i32 (+ (send this jm_getX_0) (JR.i32 (* _index 16))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/override (jm_onDisplayChangeEvent_1 _displayChangeEvent)
    (let ()
      (let/ec jreturn
        (super jm_onDisplayChangeEvent_1 _displayChangeEvent)
        (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this)))))
    (define/override (jm_setX_1 _x)
    (let ()
      (let/ec jreturn
        (super jm_setX_1 _x)
        (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this)))))
    (define/public (jm_paint_1 _graphics)
    (let ([_index JR.null])
      (let/ec jreturn
        (JR.className (get-field f_myFontProcessor this))
        (begin
            (set! _index (send (send this jm_getLifeInterface_0) jm_get_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (send (get-field f_animationInterface this) jm_paintXY_3 _graphics (vector-ref (get-field f_xArray this) _index) (send this jm_getY_0))) (jloop))))))))
    (define/public (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getLifeInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_lifeInterface this)))))))
(define (LivesHudWidget.jclassValue) LivesHudWidget%)

(define (LivesHudWidget.jnew_4 _animationInterface _lifeInterface _location _direction)
  (define this (new LivesHudWidget% [jclass "LivesHudWidget"]))
    
    
    
    (let ([_size JR.null])
      (let/ec jreturn
        (void)
        (set-field! f_lifeInterface this _lifeInterface)
        (set! _size (send (send this jm_getLifeInterface_0) jm_getMaxlives_0))
        (set-field! f_xArray this (JR.newArray 0 _size))
        (set-field! f_animationInterface this _animationInterface)
        (set-field! f_updateMaxWidth this (JR.i32 (* (send (get-field f_lifeInterface this) jm_getMaxlives_0) 16)))
        (set-field! f_updateMaxHeight this 16)))
  this)



