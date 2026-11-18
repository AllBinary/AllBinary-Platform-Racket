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
;; package org.allbinary.input.event

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/AllBinaryEventObject.rkt")
(provide (all-defined-out))

(define VirtualKeyboardEvent%
  (class AllBinaryEventObject%
    (super-new)))
(define (VirtualKeyboardEvent.jclassValue) VirtualKeyboardEvent%)

(define (VirtualKeyboardEvent.jnew_1 _anyType)
  (define this (new VirtualKeyboardEvent% [jclass "VirtualKeyboardEvent"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



