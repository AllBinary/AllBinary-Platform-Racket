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
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/paint/NullPaintable.rkt" (NullPaintable.jm_getInstance_0)])
(provide (all-defined-out))

(define BaseMenuBehavior%
  (class JObject%
    (super-new)
    (define/public (jm_onDisplayChangeEvent_2 _allBinaryGameCanvas _displayChangeEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_initSpecialPaint_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn
        (send _allBinaryGameCanvas jm_setNonBotPaintableP_1 (NullPaintable.jm_getInstance_0)))))
    (define/public (jm_initMenu_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_updateMenu_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_popupMenu_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_closeMenu_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn (void))))))
(define (BaseMenuBehavior.jclassValue) BaseMenuBehavior%)

(define BaseMenuBehavior.jcell_instance 'jnone)
(define (BaseMenuBehavior.jstatic_instance)
  (when (eq? BaseMenuBehavior.jcell_instance 'jnone) (set! BaseMenuBehavior.jcell_instance (BaseMenuBehavior.jnew_0)))
  BaseMenuBehavior.jcell_instance)
(define (BaseMenuBehavior.jsetstatic_instance value) (set! BaseMenuBehavior.jcell_instance value))

(define (BaseMenuBehavior.jnew_0)
  (define this (new BaseMenuBehavior% [jclass "BaseMenuBehavior"]))
  this)

(define (BaseMenuBehavior.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BaseMenuBehavior.jstatic_instance)))))



