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

(define FormPlayerGameInputProcessor%
  (class Processor%
    (super-new)
    (field [f_playerGameInputCompositeInterface JR.null])
    (define/override (jm_process_0)
    (let ()
      (let/ec jreturn
        (JR.className (send (get-field f_playerGameInputCompositeInterface this) jm_getPlayerGameInput_0)))))))
(define (FormPlayerGameInputProcessor.jclassValue) FormPlayerGameInputProcessor%)

(define (FormPlayerGameInputProcessor.jnew_1 _playerGameInputCompositeInterface)
  (define this (new FormPlayerGameInputProcessor% [jclass "FormPlayerGameInputProcessor"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_playerGameInputCompositeInterface this _playerGameInputCompositeInterface)))
  this)



