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
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./BaseTouchInput.rkt")
(lazy-require ["../../../../../org/allbinary/animation/NullAnimationFactory.rkt" (NullAnimationFactory.jm_getFactoryInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(lazy-require ["./TouchButtonLocationHelper.rkt" (TouchButtonLocationHelper.jnew_0)])
(lazy-require ["./BasicTouchButtonCellPositionFactory.rkt" (BasicTouchButtonCellPositionFactory.jnew_0)])
(lazy-require ["./CommonButtons.rkt" (CommonButtons.jm_getInstance_0)])
(lazy-require ["./TouchButton.rkt" (TouchButton.jnew_7)])
(lazy-require ["./BasicTouchInputFactory.rkt" (BasicTouchInputFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicNeededTouchButtonsBuilder%
  (class BaseTouchInput%
    (super-new)
    (field [f_logUtil JR.null])
    (define/override (jm_getList_0)
    (let ([_list JR.null][_touchButtonLocationHelper JR.null][_basicTouchButtonCellPositionFactory JR.null][_commonButtons JR.null][_animationInterface JR.null][_UP JR.null][_DOWN JR.null][_LEFT JR.null][_RIGHT JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_GET_LIST (get-field f_commonStrings this)) _e)
            (jreturn (send (BasicArrayListUtil.jm_getInstance_0) jm_getImmutableInstance_0)))])
            (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this (get-field f_CONSTRUCTOR (get-field f_commonStrings this)))
            (set! _list (BasicArrayListD.jnew_0))
            (set! _touchButtonLocationHelper (TouchButtonLocationHelper.jnew_0))
            (set! _basicTouchButtonCellPositionFactory (BasicTouchButtonCellPositionFactory.jnew_0))
            (set! _commonButtons (CommonButtons.jm_getInstance_0))
            (set! _animationInterface (JR.className (NullAnimationFactory.jm_getFactoryInstance_0)))
            (set! _UP (TouchButton.jnew_7 (get-field f_UP (BasicTouchInputFactory.jm_getInstance_0)) _animationInterface _animationInterface (get-field f_NORMAL_BUTTON _commonButtons) (get-field f_SECOND_FROM_BOTTOM_LEFT _basicTouchButtonCellPositionFactory) (send _touchButtonLocationHelper jm_getColumnsRemainderHalf_0) (send _touchButtonLocationHelper jm_getRowsRemainderHalf_0)))
            (set! _DOWN (TouchButton.jnew_7 (get-field f_DOWN (BasicTouchInputFactory.jm_getInstance_0)) _animationInterface _animationInterface (get-field f_NORMAL_BUTTON _commonButtons) (get-field f_BOTTOM_LEFT _basicTouchButtonCellPositionFactory) (send _touchButtonLocationHelper jm_getColumnsRemainderHalf_0) (send _touchButtonLocationHelper jm_getRowsRemainderHalf_0)))
            (set! _LEFT (TouchButton.jnew_7 (get-field f_LEFT (BasicTouchInputFactory.jm_getInstance_0)) _animationInterface _animationInterface (get-field f_NORMAL_BUTTON _commonButtons) (get-field f_BOTTOM_SECOND_FROM_RIGHT _basicTouchButtonCellPositionFactory) (send _touchButtonLocationHelper jm_getColumnsRemainderHalf_0) (send _touchButtonLocationHelper jm_getRowsRemainderHalf_0)))
            (set! _RIGHT (TouchButton.jnew_7 (get-field f_RIGHT (BasicTouchInputFactory.jm_getInstance_0)) _animationInterface _animationInterface (get-field f_NORMAL_BUTTON _commonButtons) (get-field f_BOTTOM_RIGHT _basicTouchButtonCellPositionFactory) (send _touchButtonLocationHelper jm_getColumnsRemainderHalf_0) (send _touchButtonLocationHelper jm_getRowsRemainderHalf_0)))
            (send _list jm_add_1 _UP)
            (send _list jm_add_1 _DOWN)
            (send _list jm_add_1 _LEFT)
            (send _list jm_add_1 _RIGHT)
            (jreturn _list)))))))
(define (BasicNeededTouchButtonsBuilder.jclassValue) BasicNeededTouchButtonsBuilder%)

(define (BasicNeededTouchButtonsBuilder.jnew_0)
  (define this (new BasicNeededTouchButtonsBuilder% [jclass "BasicNeededTouchButtonsBuilder"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
  this)



