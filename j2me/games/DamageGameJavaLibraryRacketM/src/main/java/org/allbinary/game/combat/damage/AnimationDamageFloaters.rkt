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
;; package org.allbinary.game.combat.damage

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./DamageFloaters.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/displayable/CanvasStrings.rkt" (CanvasStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(provide (all-defined-out))

(define AnimationDamageFloaters%
  (class DamageFloaters%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_layerInterface JR.null])
    (field [f_animationInterfaceArray JR.null])
    (field [f_circularIndexUtil JR.null])
    (field [f_dx 0])
    (field [f_dy 0])
    (define/override (jm_add_1 _damage)
    (let ([_i JR.null])
      (let/ec jreturn
        (set! _i (send (get-field f_circularIndexUtil this) jm_getIndex_0))
        (JR.className (vector-ref (get-field f_animationInterfaceArray this) _i))
        (send (get-field f_circularIndexUtil this) jm_next_0))))
    (define/override (jm_paint_1 _graphics)
    (let ([_viewPosition JR.null][_x JR.null][_y JR.null][_animationInterface JR.null][_delta JR.null][_index JR.null][_commonStrings JR.null][_canvasStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (set! _canvasStrings (CanvasStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_PAINT _canvasStrings) _e))])
            (set! _viewPosition (send (get-field f_layerInterface this) jm_getViewPosition_0))
            (set! _x (send _viewPosition jm_getX_0))
            (set! _y (send _viewPosition jm_getY_0))
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index (vector-length (get-field f_animationInterfaceArray this)))
                    (let/ec jcontinue
                (set! _animationInterface (vector-ref (get-field f_animationInterfaceArray this) _index))
                (when (< (send _animationInterface jm_getFrame_0) (JR.i32 (- (send _animationInterface jm_getAnimationSize_0) 1)))
                    (begin
                    (set! _delta (JR.i32 (* (send _animationInterface jm_getFrame_0) 20)))
                    (send _animationInterface jm_paintXY_3 _graphics (JR.i32 (+ _x (get-field f_dx this))) (JR.i32 (+ (JR.i32 (- _y _delta)) (get-field f_dy this))))
                    (send _animationInterface jm_nextFrame_0))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop)))))))))))
(define (AnimationDamageFloaters.jclassValue) AnimationDamageFloaters%)

(define (AnimationDamageFloaters.jnew_4 _layerInterface _animationInterfaceArray _dx _dy)
  (define this (new AnimationDamageFloaters% [jclass "AnimationDamageFloaters"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    
    
    
    
    (let ([_index JR.null])
      (let/ec jreturn
        (set-field! f_animationInterfaceArray this _animationInterfaceArray)
        (begin
            (set! _index (JR.i32 (- (vector-length (get-field f_animationInterfaceArray this)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (JR.className (vector-ref (get-field f_animationInterfaceArray this) _index)))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (set-field! f_layerInterface this _layerInterface)
        (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstance_1 (vector-length (get-field f_animationInterfaceArray this))))
        (set-field! f_dx this _dx)
        (set-field! f_dy this _dy)))
  this)



