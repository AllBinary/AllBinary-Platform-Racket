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
(provide (all-defined-out))

(define PopupCommandFormInputProcessor%
  (class CommandFormInputProcessor%
    (super-new)
    (define/override (jm_processInput_1 _key)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_processInput_1 _key)))))
    (define/override (jm_processMotionInput_1 _motionGestureEvent)
    (let ()
      (let/ec jreturn
        (super jm_processMotionInput_1 _motionGestureEvent))))))
(define (PopupCommandFormInputProcessor.jclassValue) PopupCommandFormInputProcessor%)

(define (PopupCommandFormInputProcessor.jnew_5 _gameKeyEventList _playerInputId _gameCanvas _form _popupMenuInputProcessor)
  (define this (new PopupCommandFormInputProcessor% [jclass "PopupCommandFormInputProcessor"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



