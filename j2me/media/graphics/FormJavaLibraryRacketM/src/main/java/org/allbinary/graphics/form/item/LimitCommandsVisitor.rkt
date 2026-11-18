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
;; package org.allbinary.graphics.form.item

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/logic/util/visitor/Visitor.rkt")
(lazy-require ["../../../../../org/allbinary/game/commands/GameCommandsFactory.rkt" (GameCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/form/ScreenInfo.rkt" (ScreenInfo.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/java/bool/BooleanFactory.rkt" (BooleanFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define LimitCommandsVisitor%
  (class Visitor%
    (super-new)
    (field [f_isNotSmallDisplay #f])
    (define/override (jm_visit_1 _anyType)
    (let ([_command JR.null][_booleanFactory JR.null])
      (let/ec jreturn
        (set! _command _anyType)
        (set! _booleanFactory (BooleanFactory.jm_getInstance_0))
        (if (or (or (or (get-field f_isNotSmallDisplay this) (= (send _command jm_getPriority_0) 1)) (eq? _command (get-field f_EXIT_COMMAND (GameCommandsFactory.jm_getInstance_0)))) (eq? _command (get-field f_EXIT_WITHOUT_PROGRESS_COMMAND (GameCommandsFactory.jm_getInstance_0))))
            (begin
            (jreturn (get-field f_TRUE _booleanFactory)))
            (begin
            (jreturn (get-field f_FALSE _booleanFactory)))))))))
(define (LimitCommandsVisitor.jclassValue) LimitCommandsVisitor%)

(define (LimitCommandsVisitor.jnew_0)
  (define this (new LimitCommandsVisitor% [jclass "LimitCommandsVisitor"]))
    
    (let ([_displayInfo JR.null])
      (let/ec jreturn
        (set! _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (set-field! f_isNotSmallDisplay this (or (and (send _displayInfo jm_isPortrait_0) (> (send _displayInfo jm_getLastHeight_0) (get-field f_SMALL_WIDTH (ScreenInfo.jm_getInstance_0)))) (and (not (send _displayInfo jm_isPortrait_0)) (> (send _displayInfo jm_getLastHeight_0) (get-field f_SMALL_HEIGHT (ScreenInfo.jm_getInstance_0))))))))
  this)



