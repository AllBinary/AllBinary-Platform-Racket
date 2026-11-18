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
;; package org.allbinary.input.gyro

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/canvas/Processor.rkt")
(provide (all-defined-out))

(define GyroSensorUpdateProcessor%
  (class Processor%
    (super-new)
    (define/override (jm_process_0)
    (let ()
      (let/ec jreturn (void))))))
(define (GyroSensorUpdateProcessor.jclassValue) GyroSensorUpdateProcessor%)

(define (GyroSensorUpdateProcessor.jnew_0)
  (define this (new GyroSensorUpdateProcessor% [jclass "GyroSensorUpdateProcessor"]))
  this)



