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
;; package org.allbinary.input.motion.gesture.configuration

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/input/motion/gesture/MotionGestureToMotionGestureActionAssociation.rkt" (MotionGestureToMotionGestureActionAssociation.jnew_2)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define MotionGestureConfiguration%
  (class JObject%
    (super-new)
    (field [f_diagonalMotionGestureAllowed #f])
    (field [f_diagonalTolerance 0])
    (field [f_minimumMotionGesture 0])
    (field [f_button JR.null])
    (field [f_color JR.null])
    (field [f_executingActions #f])
    (field [f_mouseButtonMask 0])
    (field [f_activeCommands JR.null])
    (define/public (jm_addMotionGestureAction_2 _list _commandAction)
    (let ()
      (let/ec jreturn
        (send (get-field f_activeCommands this) jm_add_1 (MotionGestureToMotionGestureActionAssociation.jnew_2 _list _commandAction)))))
    (define/public (jm_clearMotionGestureAction_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_activeCommands this) jm_clear_0))))
    (define/public (jm_getAssociateCommandActionsList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_activeCommands this)))))
    (define/public (jm_isDiagonalMotionGestureAllowed_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_diagonalMotionGestureAllowed this)))))
    (define/public (jm_isExecutingActionsAllowed_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_executingActions this)))))
    (define/public (jm_setExecutingActionsAllowed_1 _executingActionAllowed)
    (let ()
      (let/ec jreturn
        (set-field! f_executingActions this _executingActionAllowed))))
    (define/public (jm_setDiagonalMotionGestureAllowed_1 _diagonalMotionGestureAllowed)
    (let ()
      (let/ec jreturn
        (set-field! f_diagonalMotionGestureAllowed this _diagonalMotionGestureAllowed))))
    (define/public (jm_getDiagonalTolerance_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_diagonalTolerance this)))))
    (define/public (jm_setDiagonalTolerance_1 _diagonalTolerance)
    (let ()
      (let/ec jreturn
        (set-field! f_diagonalTolerance this _diagonalTolerance))))
    (define/public (jm_getMinimumMotionGesture_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_minimumMotionGesture this)))))
    (define/public (jm_setMinimumMotionGesture_1 _minimumMotionGesture)
    (let ()
      (let/ec jreturn
        (set-field! f_minimumMotionGesture this _minimumMotionGesture))))
    (define/public (jm_getButton_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_button this)))))
    (define/public (jm_setButton_1 _button)
    (let ()
      (let/ec jreturn
        (set-field! f_button this _button))))
    (define/public (jm_getColor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_color this)))))
    (define/public (jm_setColor_1 _color)
    (let ()
      (let/ec jreturn
        (set-field! f_color this _color))))
    (define/public (jm_getMouseButtonMask_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_mouseButtonMask this)))))
    (define/public (jm_setMouseButtonMask_1 _mouseButtonMask)
    (let ()
      (let/ec jreturn
        (set-field! f_mouseButtonMask this _mouseButtonMask))))))
(define (MotionGestureConfiguration.jclassValue) MotionGestureConfiguration%)

(define (MotionGestureConfiguration.jnew_0)
  (define this (new MotionGestureConfiguration% [jclass "MotionGestureConfiguration"]))
    (set-field! f_diagonalMotionGestureAllowed this #t)
    (set-field! f_diagonalTolerance this 7)
    (set-field! f_minimumMotionGesture this 9)
    (set-field! f_button this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_color this (get-field f_BLUE (BasicColorFactory.jm_getInstance_0)))
    (set-field! f_executingActions this #t)
    (set-field! f_mouseButtonMask this 0)
    (set-field! f_activeCommands this (BasicArrayListD.jnew_0))
    (let ()
      (let/ec jreturn (void)))
  this)



