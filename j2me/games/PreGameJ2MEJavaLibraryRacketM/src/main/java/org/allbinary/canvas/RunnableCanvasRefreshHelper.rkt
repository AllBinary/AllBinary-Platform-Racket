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
;; package org.allbinary.canvas

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./Processor.rkt")
(provide (all-defined-out))

(define RunnableCanvasRefreshHelper%
  (class Processor%
    (super-new)
    (field [f_runnableCanvas JR.null])
    (define/override (jm_process_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_runnableCanvas this) jm_repaint_0))))))
(define (RunnableCanvasRefreshHelper.jclassValue) RunnableCanvasRefreshHelper%)

(define (RunnableCanvasRefreshHelper.jnew_1 _runnableCanvas)
  (define this (new RunnableCanvasRefreshHelper% [jclass "RunnableCanvasRefreshHelper"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_runnableCanvas this _runnableCanvas)))
  this)



