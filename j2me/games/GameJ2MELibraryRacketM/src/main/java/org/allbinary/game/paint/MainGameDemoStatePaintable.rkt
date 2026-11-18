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
;; package org.allbinary.game.paint

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/paint/Paintable.rkt")
(provide (all-defined-out))

(define MainGameDemoStatePaintable%
  (class Paintable%
    (super-new)
    (field [f_ownershipPaintableInterface JR.null])
    (field [f_menuPaintableInterface JR.null])
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_menuPaintableInterface this) jm_paint_1 _graphics)
        (send (get-field f_ownershipPaintableInterface this) jm_paint_1 _graphics))))
    (define/public (jm_getOwnershipPaintableInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_ownershipPaintableInterface this)))))
    (define/public (jm_getMenuPaintableInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_menuPaintableInterface this)))))))
(define (MainGameDemoStatePaintable.jclassValue) MainGameDemoStatePaintable%)

(define (MainGameDemoStatePaintable.jnew_2 _ownershipPaintableInterface _menuPaintableInterface)
  (define this (new MainGameDemoStatePaintable% [jclass "MainGameDemoStatePaintable"]))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_ownershipPaintableInterface this _ownershipPaintableInterface)
        (set-field! f_menuPaintableInterface this _menuPaintableInterface)))
  this)



