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

(define VerticalFormProcessor%
  (class Processor%
    (super-new)
    (field [f_scrollCurrentSelectionForm JR.null])
    (define/override (jm_process_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_scrollCurrentSelectionForm this) jm_processVerticalForm_0)
        (set-field! f_processor (get-field f_scrollCurrentSelectionForm this) (Processor.jm_getInstance_0)))))))
(define (VerticalFormProcessor.jclassValue) VerticalFormProcessor%)

(define (VerticalFormProcessor.jnew_1 _scrollCurrentSelectionForm)
  (define this (new VerticalFormProcessor% [jclass "VerticalFormProcessor"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_scrollCurrentSelectionForm this _scrollCurrentSelectionForm)))
  this)



