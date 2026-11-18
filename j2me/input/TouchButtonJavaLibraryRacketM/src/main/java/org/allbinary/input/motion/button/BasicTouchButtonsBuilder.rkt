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
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(lazy-require ["./CommonButtons.rkt" (CommonButtons.jm_getInstance_0)])
(lazy-require ["./TouchButtonLocationHelper.rkt" (TouchButtonLocationHelper.jnew_0)])
(lazy-require ["./BasicTouchButtonCellPositionFactory.rkt" (BasicTouchButtonCellPositionFactory.jnew_0)])
(lazy-require ["./TouchButton.rkt" (TouchButton.jm_createButton_6)])
(lazy-require ["./BasicTouchInputFactory.rkt" (BasicTouchInputFactory.jm_getInstance_0)])
(lazy-require ["./TouchButtonUpResource.rkt" (TouchButtonUpResource.jm_getInstance_0)])
(lazy-require ["./TouchButtonDownResource.rkt" (TouchButtonDownResource.jm_getInstance_0)])
(lazy-require ["./TouchButtonTurnLeftResource.rkt" (TouchButtonTurnLeftResource.jm_getInstance_0)])
(lazy-require ["./TouchButtonTurnRightResource.rkt" (TouchButtonTurnRightResource.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicTouchButtonsBuilder%
  (class BaseTouchInput%
    (super-new)
    (field [f_logUtil JR.null])
    (define/override (jm_getList_0)
    (let ([_list JR.null][_commonButtons JR.null][_touchButtonLocationHelper JR.null][_basicTouchButtonCellPositionFactory JR.null][_UP JR.null][_DOWN JR.null][_LEFT JR.null][_RIGHT JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_GET_LIST (get-field f_commonStrings this)) _e)
            (jreturn (send (BasicArrayListUtil.jm_getInstance_0) jm_getImmutableInstance_0)))])
            (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this (get-field f_CONSTRUCTOR (get-field f_commonStrings this)))
            (set! _list (BasicArrayListD.jnew_0))
            (set! _commonButtons (CommonButtons.jm_getInstance_0))
            (set! _touchButtonLocationHelper (TouchButtonLocationHelper.jnew_0))
            (set! _basicTouchButtonCellPositionFactory (BasicTouchButtonCellPositionFactory.jnew_0))
            (set! _UP (TouchButton.jm_createButton_6 (get-field f_UP (BasicTouchInputFactory.jm_getInstance_0)) (TouchButtonUpResource.jm_getInstance_0) (get-field f_NORMAL_BUTTON _commonButtons) (get-field f_SECOND_FROM_BOTTOM_LEFT _basicTouchButtonCellPositionFactory) (send _touchButtonLocationHelper jm_getColumnsRemainderHalf_0) (send _touchButtonLocationHelper jm_getRowsRemainderHalf_0)))
            (set! _DOWN (TouchButton.jm_createButton_6 (get-field f_DOWN (BasicTouchInputFactory.jm_getInstance_0)) (TouchButtonDownResource.jm_getInstance_0) (get-field f_NORMAL_BUTTON _commonButtons) (get-field f_BOTTOM_LEFT _basicTouchButtonCellPositionFactory) (send _touchButtonLocationHelper jm_getColumnsRemainderHalf_0) (send _touchButtonLocationHelper jm_getRowsRemainderHalf_0)))
            (set! _LEFT (TouchButton.jm_createButton_6 (get-field f_SPECIAL_BUTTON_FOUR (BasicTouchInputFactory.jm_getInstance_0)) (TouchButtonTurnLeftResource.jm_getInstance_0) (get-field f_NORMAL_BUTTON _commonButtons) (get-field f_BOTTOM_SECOND_FROM_RIGHT _basicTouchButtonCellPositionFactory) (send _touchButtonLocationHelper jm_getColumnsRemainderHalf_0) (send _touchButtonLocationHelper jm_getRowsRemainderHalf_0)))
            (set! _RIGHT (TouchButton.jm_createButton_6 (get-field f_SPECIAL_BUTTON_THREE (BasicTouchInputFactory.jm_getInstance_0)) (TouchButtonTurnRightResource.jm_getInstance_0) (get-field f_NORMAL_BUTTON _commonButtons) (get-field f_BOTTOM_RIGHT _basicTouchButtonCellPositionFactory) (send _touchButtonLocationHelper jm_getColumnsRemainderHalf_0) (send _touchButtonLocationHelper jm_getRowsRemainderHalf_0)))
            (send _list jm_add_1 _UP)
            (send _list jm_add_1 _LEFT)
            (send _list jm_add_1 _RIGHT)
            (send _list jm_add_1 _DOWN)
            (jreturn _list)))))))
(define (BasicTouchButtonsBuilder.jclassValue) BasicTouchButtonsBuilder%)

(define (BasicTouchButtonsBuilder.jnew_0)
  (define this (new BasicTouchButtonsBuilder% [jclass "BasicTouchButtonsBuilder"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
  this)



