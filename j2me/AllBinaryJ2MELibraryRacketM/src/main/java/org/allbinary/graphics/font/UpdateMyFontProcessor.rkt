#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary.graphics.font

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./MyFontProcessor.rkt")
(provide (all-defined-out))

(define UpdateMyFontProcessor%
  (class MyFontProcessor%
    (super-new)
    (field [f_updateMeasurementProcessor JR.null])
    (define/override (jm_process_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_updateMeasurementProcessor this) jm_updateMeasurement_1 _graphics))))))
(define (UpdateMyFontProcessor.jclassValue) UpdateMyFontProcessor%)

(define (UpdateMyFontProcessor.jnew_1 _keyValueDrawCharArray)
  (define this (new UpdateMyFontProcessor% [jclass "UpdateMyFontProcessor"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_updateMeasurementProcessor this _keyValueDrawCharArray)))
  this)



