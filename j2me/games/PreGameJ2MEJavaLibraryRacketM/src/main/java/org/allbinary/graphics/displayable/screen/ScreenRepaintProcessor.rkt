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
;; package org.allbinary.graphics.displayable.screen

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/canvas/Processor.rkt")
(lazy-require ["./ScreenRepaintUtil.rkt" (ScreenRepaintUtil.jm_repaint_1)])
(provide (all-defined-out))

(define ScreenRepaintProcessor%
  (class Processor%
    (super-new)
    (field [f_displayable JR.null])
    (define/override (jm_process_0)
    (let ()
      (let/ec jreturn
        (ScreenRepaintUtil.jm_repaint_1 (get-field f_displayable this)))))))
(define (ScreenRepaintProcessor.jclassValue) ScreenRepaintProcessor%)

(define (ScreenRepaintProcessor.jnew_1 _displayable)
  (define this (new ScreenRepaintProcessor% [jclass "ScreenRepaintProcessor"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_displayable this _displayable)))
  this)



