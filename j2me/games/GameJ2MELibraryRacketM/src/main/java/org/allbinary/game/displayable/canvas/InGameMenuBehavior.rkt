#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
  "./BaseMenuBehavior.rkt")
(lazy-require ["./GameCanvasNonBotPaintable.rkt" (GameCanvasNonBotPaintable.jnew_1)])
(provide (all-defined-out))

(define InGameMenuBehavior%
  (class BaseMenuBehavior%
    (super-new)
    (define/override (jm_onDisplayChangeEvent_2 _allBinaryGameCanvas _displayChangeEvent)
    (let ()
      (let/ec jreturn
        (send _allBinaryGameCanvas jm_updateMenuFromEvent_1 _displayChangeEvent))))
    (define/override (jm_initSpecialPaint_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn
        (send _allBinaryGameCanvas jm_setNonBotPaintableP_1 (GameCanvasNonBotPaintable.jnew_1 _allBinaryGameCanvas)))))
    (define/override (jm_initMenu_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn
        (send _allBinaryGameCanvas jm_initMenu2_0))))
    (define/override (jm_updateMenu_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn
        (send _allBinaryGameCanvas jm_initMenu2_0))))
    (define/override (jm_popupMenu_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn
        (send _allBinaryGameCanvas jm_popupMenu2_0))))
    (define/override (jm_closeMenu_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn
        (send _allBinaryGameCanvas jm_closeMenu2_0))))))
(define (InGameMenuBehavior.jclassValue) InGameMenuBehavior%)

(define InGameMenuBehavior.jcell_instanceC 'jnone)
(define (InGameMenuBehavior.jstatic_instanceC)
  (when (eq? InGameMenuBehavior.jcell_instanceC 'jnone) (set! InGameMenuBehavior.jcell_instanceC (InGameMenuBehavior.jnew_0)))
  InGameMenuBehavior.jcell_instanceC)
(define (InGameMenuBehavior.jsetstatic_instanceC value) (set! InGameMenuBehavior.jcell_instanceC value))

(define (InGameMenuBehavior.jnew_0)
  (define this (new InGameMenuBehavior% [jclass "InGameMenuBehavior"]))
  this)

(define (InGameMenuBehavior.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (InGameMenuBehavior.jstatic_instanceC)))))



