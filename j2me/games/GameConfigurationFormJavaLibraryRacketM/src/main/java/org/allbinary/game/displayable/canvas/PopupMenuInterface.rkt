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
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define PopupMenuInterface%
  (class JObject%
    (super-new)
    (define/public (jm_popupMenu_0)
      (raise (JR.newException "AbstractMethodError" "popupMenu")))
    (define/public (jm_closeMenu_0)
      (raise (JR.newException "AbstractMethodError" "closeMenu")))
    (define/public (jm_toggleMenu_0)
      (raise (JR.newException "AbstractMethodError" "toggleMenu")))))
(define (PopupMenuInterface.jclassValue) PopupMenuInterface%)

(define (PopupMenuInterface.jnew_0)
  (define this (new PopupMenuInterface% [jclass "PopupMenuInterface"]))
  this)



