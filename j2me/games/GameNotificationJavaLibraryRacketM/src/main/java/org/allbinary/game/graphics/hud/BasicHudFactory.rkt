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
;; package org.allbinary.game.graphics.hud

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define BasicHudFactory%
  (class JObject%
    (super-new)
    (field [f_DIRECTION_EXCEPTION JR.null])
    (field [f_VERTICAL 0])
    (field [f_HORIZONTAL 0])
    (field [f_BOTTOMLEFT 0])
    (field [f_BOTTOMRIGHT 0])
    (field [f_TOPLEFT 0])
    (field [f_TOPRIGHT 0])
    (field [f_BOTTOMCENTER 0])
    (field [f_TOPCENTER 0])
    (field [f_ABSOLUTE 0])))
(define (BasicHudFactory.jclassValue) BasicHudFactory%)

(define BasicHudFactory.jcell_instance 'jnone)
(define (BasicHudFactory.jstatic_instance)
  (when (eq? BasicHudFactory.jcell_instance 'jnone) (set! BasicHudFactory.jcell_instance (BasicHudFactory.jnew_0)))
  BasicHudFactory.jcell_instance)
(define (BasicHudFactory.jsetstatic_instance value) (set! BasicHudFactory.jcell_instance value))

(define (BasicHudFactory.jnew_0)
  (define this (new BasicHudFactory% [jclass "BasicHudFactory"]))
    (set-field! f_DIRECTION_EXCEPTION this "Only Horizontal Direction is Allowed Currently")
    (set-field! f_VERTICAL this 0)
    (set-field! f_HORIZONTAL this 1)
    (set-field! f_BOTTOMLEFT this 0)
    (set-field! f_BOTTOMRIGHT this 1)
    (set-field! f_TOPLEFT this 2)
    (set-field! f_TOPRIGHT this 3)
    (set-field! f_BOTTOMCENTER this 4)
    (set-field! f_TOPCENTER this 5)
    (set-field! f_ABSOLUTE this 6)
    (let ()
      (let/ec jreturn (void)))
  this)

(define (BasicHudFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BasicHudFactory.jstatic_instance)))))



