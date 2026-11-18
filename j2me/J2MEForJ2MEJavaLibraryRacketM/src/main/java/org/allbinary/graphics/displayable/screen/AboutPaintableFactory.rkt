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
;; package org.allbinary.graphics.displayable.screen

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/game/paint/AboutPaintable.rkt" (AboutPaintable.jm_getInstance_2)])
(lazy-require ["../../../../../org/allbinary/graphics/paint/NullPaintable.rkt" (NullPaintable.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define AboutPaintableFactory%
  (class JObject%
    (super-new)
    (field [f_paintableArray JR.null])))
(define (AboutPaintableFactory.jclassValue) AboutPaintableFactory%)

(define AboutPaintableFactory.jcell_instance 'jnone)
(define (AboutPaintableFactory.jstatic_instance)
  (when (eq? AboutPaintableFactory.jcell_instance 'jnone) (set! AboutPaintableFactory.jcell_instance (AboutPaintableFactory.jnew_0)))
  AboutPaintableFactory.jcell_instance)
(define (AboutPaintableFactory.jsetstatic_instance value) (set! AboutPaintableFactory.jcell_instance value))

(define (AboutPaintableFactory.jnew_0)
  (define this (new AboutPaintableFactory% [jclass "AboutPaintableFactory"]))
    (set-field! f_paintableArray this (vector (NullPaintable.jm_getInstance_0)))
    (let ([_INFO JR.null][_DEVELOPERS JR.null])
      (let/ec jreturn
        (set! _INFO (vector "Built with the" "AllBinary Platform" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) "Comments or Questions:" "support@allbinary.com"))
        (set! _DEVELOPERS (vector "Developed By:" "Travis Berthelot"))
        (set-field! f_paintableArray this (send (AboutPaintable.jm_getInstance_2 _INFO _DEVELOPERS) jm_getPaintableArrayInstance_0))))
  this)

(define (AboutPaintableFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AboutPaintableFactory.jstatic_instance)))))



