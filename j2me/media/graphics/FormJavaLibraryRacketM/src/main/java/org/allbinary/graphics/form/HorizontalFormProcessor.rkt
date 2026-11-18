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
;; package org.allbinary.graphics.form

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/canvas/Processor.rkt")
(provide (all-defined-out))

(define HorizontalFormProcessor%
  (class Processor%
    (super-new)
    (field [f_scrollCurrentSelectionForm JR.null])
    (define/override (jm_process_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_scrollCurrentSelectionForm this) jm_processHorizontalForm_0)
        (set-field! f_processor (get-field f_scrollCurrentSelectionForm this) (Processor.jm_getInstance_0)))))))
(define (HorizontalFormProcessor.jclassValue) HorizontalFormProcessor%)

(define (HorizontalFormProcessor.jnew_1 _scrollCurrentSelectionForm)
  (define this (new HorizontalFormProcessor% [jclass "HorizontalFormProcessor"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_scrollCurrentSelectionForm this _scrollCurrentSelectionForm)))
  this)



