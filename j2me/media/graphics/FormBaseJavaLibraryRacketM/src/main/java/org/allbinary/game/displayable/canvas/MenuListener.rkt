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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/input/GameKeyEventSourceInterface.rkt")
(provide (all-defined-out))

(define MenuListener%
  (class JObject%
    (super-new)
    (define/public (jm_open_0)
      (raise (JR.newException "AbstractMethodError" "open")))
    (define/public (jm_close_0)
      (raise (JR.newException "AbstractMethodError" "close")))))
(define (MenuListener.jclassValue) MenuListener%)

(define (MenuListener.jnew_0)
  (define this (new MenuListener% [jclass "MenuListener"]))
  this)



