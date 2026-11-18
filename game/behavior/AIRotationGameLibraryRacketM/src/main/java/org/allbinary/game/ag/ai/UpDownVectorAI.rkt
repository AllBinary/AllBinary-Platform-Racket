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
;; package org.allbinary.game.ag.ai

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/ai/BasicAI.rkt")
(provide (all-defined-out))

(define UpDownVectorAI%
  (class BasicAI%
    (super-new)
    (field [f_velocityInterface JR.null])
    (field [f_index 0])
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ([_y JR.null][_basicDecimal JR.null])
      (let/ec jreturn
        (set! _y (JR.i32 (* (JR.className (send this jm_getOwnerLayerInterface_0)) 270)))
        (if (< (get-field f_index this) 5)
            (begin
            (set! _basicDecimal (send (get-field f_velocityInterface this) jm_getVelocityYBasicDecimalP_0))
            (send _basicDecimal jm_setint_1 0)
            (send _basicDecimal jm_addint_1 _y)
            (set-field! f_index this (JR.i32 (+ (get-field f_index this) 1))))
            (if (< (get-field f_index this) 10)
            (begin
            (set! _basicDecimal (send (get-field f_velocityInterface this) jm_getVelocityYBasicDecimalP_0))
            (send _basicDecimal jm_setint_1 0)
            (send _basicDecimal jm_subtractint_1 _y)
            (set-field! f_index this (JR.i32 (+ (get-field f_index this) 1))))
            (begin
            (set-field! f_index this 0)
            (send this jm_processAI_1 _allBinaryLayerManager)))))))))
(define (UpDownVectorAI.jclassValue) UpDownVectorAI%)

(define (UpDownVectorAI.jnew_2 _ownerLayerInterface _gameInput)
  (define this (new UpDownVectorAI% [jclass "UpDownVectorAI"]))
    
    (set-field! f_index this 0)
    (let ([_velocityInterfaceCompositeInterface JR.null])
      (let/ec jreturn
        (void)
        (set! _velocityInterfaceCompositeInterface (send this jm_getOwnerLayerInterface_0))
        (set-field! f_velocityInterface this (send _velocityInterfaceCompositeInterface jm_getVelocityProperties_0))
        (JR.className (send (get-field f_velocityInterface this) jm_getVelocityYBasicDecimalP_0))))
  this)



