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
;; package org.allbinary.game.ag.layer.hud.basic

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../org/allbinary/canvas/Processor.rkt")
(provide (all-defined-out))

(define SetAndRemoveProcessor%
  (class Processor%
    (super-new)
    (field [f_updateMeasurementProcessor JR.null])
    (define/override (jm_process_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_updateMeasurementProcessor this) jm_setAndRemoveProcess_0))))))
(define (SetAndRemoveProcessor.jclassValue) SetAndRemoveProcessor%)

(define (SetAndRemoveProcessor.jnew_1 _updateMeasurementProcessor)
  (define this (new SetAndRemoveProcessor% [jclass "SetAndRemoveProcessor"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_updateMeasurementProcessor this _updateMeasurementProcessor)))
  this)



