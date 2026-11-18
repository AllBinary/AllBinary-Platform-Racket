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
;; package org.allbinary.animation.special

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/Integer.rkt"
  "./SpecialAnimation.rkt")
(lazy-require ["../../../../org/allbinary/animation/IndexedAnimationBehavior.rkt" (IndexedAnimationBehavior.jnew_2)])
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/ABSystemWrapper.rkt" (ABSystemWrapper.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(provide (all-defined-out))

(define TitleAnimation%
  (class SpecialAnimation%
    (super-new)
    (field [f_systemWrapper JR.null])
    (field [f_deltaX 0.0])
    (field [f_deltaY 0.0])
    (field [f_deltaZ 0.0])
    (field [f_basicColorArray JR.null])
    (field [f_dxArray JR.null])
    (field [f_dyArray JR.null])
    (field [f_widthP 0])
    (field [f_animationInterfaceArray JR.null])
    (field [f_sizeP 0])
    (field [f_y 0])
    (field [f_lastFrameStartTime 0])
    (field [f_displayInfoSingleton JR.null])
    (field [f_CLEAR_COLOR JR.null])
    (define/override (jm_nextFrame_0)
    (let ([_currentTime JR.null][_totalTimeElapsed JR.null][_indexedAnimationBehavior JR.null])
      (let/ec jreturn
        (set! _currentTime (send (get-field f_systemWrapper this) jm_currentTimeMillis_0))
        (set! _totalTimeElapsed (JR.i64 (- _currentTime (get-field f_lastFrameStartTime this))))
        (set! _indexedAnimationBehavior (send this jm_getAnimationBehavior_0))
        (when (> _totalTimeElapsed (get-field f_frameDelayTime _indexedAnimationBehavior))
            (begin
            (send this jm_previousFrame_0)
            (set-field! f_lastFrameStartTime this _currentTime)))
        (when (eq? (JR.className (vector-ref (get-field f_animationInterfaceArray this) 0)) 0)
            (begin
            (set-field! f_loopIndex _indexedAnimationBehavior (JR.i32 (+ (get-field f_loopIndex _indexedAnimationBehavior) 1))))))))
    (define/override (jm_isComplete_0)
    (let ([_indexedAnimationBehavior JR.null])
      (let/ec jreturn
        (set! _indexedAnimationBehavior (send this jm_getAnimationBehavior_0))
        (if (or (or (= (get-field f_loopTotal _indexedAnimationBehavior) (JR.i32 (- 1))) (< (get-field f_loopIndex _indexedAnimationBehavior) (get-field f_loopTotal _indexedAnimationBehavior))) (not (= (send this jm_getFrame_0) 0)))
            (begin
            (jreturn #f))
            (begin
            (jreturn #t))))))
    (define/override (jm_setSequence_1 _sequence)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_getSequence_0)
    (let ()
      (let/ec jreturn
        (jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))
    (define/override (jm_getSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (vector-ref (get-field f_animationInterfaceArray this) 0))))))
    (define/override (jm_getFrame_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (vector-ref (get-field f_animationInterfaceArray this) 0))))))
    (define/override (jm_setFrame_1 _frame)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (get-field f_sizeP this))
                (let/ec jcontinue
            (JR.className (vector-ref (get-field f_animationInterfaceArray this) _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/override (jm_setLastFrame_0)
    (let ()
      (let/ec jreturn
        (send this jm_setFrame_1 (JR.i32 (- (send this jm_getSize_0) 1))))))
    (define/override (jm_reset_0)
    (let ([_indexedAnimationBehavior JR.null])
      (let/ec jreturn
        (send this jm_setLastFrame_0)
        (set! _indexedAnimationBehavior (send this jm_getAnimationBehavior_0))
        (send _indexedAnimationBehavior jm_reset_0))))
    (define/override (jm_previousFrame_0)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (get-field f_sizeP this))
                (let/ec jcontinue
            (JR.className (vector-ref (get-field f_animationInterfaceArray this) _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_paintFrameXY_4 _graphics _frame _x _y)
    (let ()
      (let/ec jreturn
        (send this jm_setFrame_1 _frame)
        (send this jm_paintXY_3 _graphics _x _y))))
    (define/override (jm_paintXY_3 _graphics _ax _ay)
    (let ([_x JR.null][_deltaX JR.null][_deltaY JR.null][_index JR.null])
      (let/ec jreturn
        (set! _x 0)
        (when (not (= (get-field f_widthP this) (Integer.jstatic_MIN_VALUE)))
            (begin
            (set! _x (JR.idiv (JR.i32 (- (send (get-field f_displayInfoSingleton this) jm_getLastWidth_0) (get-field f_widthP this))) 2))))
        (set! _deltaX 0)
        (set! _deltaY 0)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (get-field f_sizeP this))
                (let/ec jcontinue
            (set! _deltaX (JR.i32 (+ (vector-ref (get-field f_dxArray this) _index) _x)))
            (set! _deltaY (JR.i32 (+ (vector-ref (get-field f_dyArray this) _index) (get-field f_y this))))
            (when (not (eq? (vector-ref (get-field f_basicColorArray this) _index) (get-field f_CLEAR_COLOR this)))
                (begin
                (JR.className (get-field f_basicSetColorUtil this))))
            (JR.className (vector-ref (get-field f_animationInterfaceArray this) _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
(define (TitleAnimation.jclassValue) TitleAnimation%)

(define (TitleAnimation.jnew_7 _animationInterfaceArray _basicColorArray _dxArray _dyArray _y _width _animationBehavior)
  (define this (new TitleAnimation% [jclass "TitleAnimation"]))
    (set-field! f_systemWrapper this (ABSystemWrapper.jm_getInstance_0))
    
    
    
    
    
    
    
    
    
    
    
    (set-field! f_displayInfoSingleton this (DisplayInfoSingleton.jm_getInstance_0))
    (set-field! f_CLEAR_COLOR this (get-field f_CLEAR_COLOR (BasicColorFactory.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_lastFrameStartTime this (send (get-field f_systemWrapper this) jm_currentTimeMillis_0))
        (set-field! f_animationInterfaceArray this _animationInterfaceArray)
        (set-field! f_sizeP this (vector-length (get-field f_animationInterfaceArray this)))
        (set-field! f_basicColorArray this _basicColorArray)
        (set-field! f_dxArray this _dxArray)
        (set-field! f_dyArray this _dyArray)
        (set-field! f_y this _y)
        (set-field! f_widthP this _width)
        (send this jm_reset_0)))
  this)

(define (TitleAnimation.jm_createAnimation_6 _animationInterfaceArray _basicColorArray _dxArray _dyArray _y _width)
    (let ()
      (let/ec jreturn
        (jreturn (TitleAnimation.jnew_7 _animationInterfaceArray _basicColorArray _dxArray _dyArray _y _width (IndexedAnimationBehavior.jnew_2 1 250))))))



