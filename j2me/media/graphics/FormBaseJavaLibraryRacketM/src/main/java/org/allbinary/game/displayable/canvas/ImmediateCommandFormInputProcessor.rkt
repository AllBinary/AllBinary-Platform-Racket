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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./CommandFormInputProcessor.rkt")
(lazy-require ["../../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(provide (all-defined-out))

(define ImmediateCommandFormInputProcessor%
  (class CommandFormInputProcessor%
    (super-new)
    (field [f_timeHelper JR.null])
    (field [f_gameCommandCanvas JR.null])
    (define/override (jm_onPressGameKeyEvent_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (super jm_onPressGameKeyEvent_1 _gameKeyEvent)
            (when (send (get-field f_timeHelper this) jm_isTimeTNT_0)
                (begin
                (send this jm_processInputList_0)
                (JR.className (get-field f_repaintBehavior (get-field f_gameCommandCanvas this)))))))))
    (define/override (jm_onDownGameKeyEvent_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (super jm_onDownGameKeyEvent_1 _gameKeyEvent)
            (when (send (get-field f_timeHelper this) jm_isTimeTNT_0)
                (begin
                (send this jm_processInputList_0)
                (JR.className (get-field f_repaintBehavior (get-field f_gameCommandCanvas this)))))))))
    (define/override (jm_onUpGameKeyEvent_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (super jm_onUpGameKeyEvent_1 _gameKeyEvent)
            (when (send (get-field f_timeHelper this) jm_isTimeTNT_0)
                (begin
                (send this jm_processInputList_0)
                (JR.className (get-field f_repaintBehavior (get-field f_gameCommandCanvas this)))))))))
    (define/override (jm_onMotionGestureEvent_1 _motionGestureEvent)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (super jm_onMotionGestureEvent_1 _motionGestureEvent)
            (when (send (get-field f_timeHelper this) jm_isTimeTNT_0)
                (begin
                (send this jm_processInputList_0)
                (JR.className (get-field f_repaintBehavior (get-field f_gameCommandCanvas this)))))))))))
(define (ImmediateCommandFormInputProcessor.jclassValue) ImmediateCommandFormInputProcessor%)

(define (ImmediateCommandFormInputProcessor.jnew_4 _gameKeyEventList _playerInputId _gameCommandCanvas _form)
  (define this (new ImmediateCommandFormInputProcessor% [jclass "ImmediateCommandFormInputProcessor"]))
    (set-field! f_timeHelper this (TimeDelayHelper.jnew_1 25))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_gameCommandCanvas this _gameCommandCanvas)))
  this)



