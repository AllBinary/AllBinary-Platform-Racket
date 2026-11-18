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
(lazy-require ["../../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_UP Canvas.jstatic_DOWN Canvas.jstatic_RIGHT Canvas.jstatic_LEFT Canvas.jstatic_FIRE)])
(lazy-require ["../../../../../org/allbinary/string/CommonPhoneStrings.rkt" (CommonPhoneStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define CanvasUtil%
  (class JObject%
    (super-new)))
(define (CanvasUtil.jclassValue) CanvasUtil%)

(define (CanvasUtil.jnew_0)
  (define this (new CanvasUtil% [jclass "CanvasUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (CanvasUtil.jm_getKeyName_1 _key)
    (let ([_commonPhoneStrings JR.null])
      (let/ec jreturn
        (set! _commonPhoneStrings (CommonPhoneStrings.jm_getInstance_0))
        (if (= _key (Canvas.jstatic_UP))
            (begin
            (jreturn (get-field f_UP _commonPhoneStrings)))
            (if (= _key (Canvas.jstatic_DOWN))
            (begin
            (jreturn (get-field f_DOWN _commonPhoneStrings)))
            (if (= _key (Canvas.jstatic_RIGHT))
            (begin
            (jreturn (get-field f_RIGHT _commonPhoneStrings)))
            (if (= _key (Canvas.jstatic_LEFT))
            (begin
            (jreturn (get-field f_LEFT _commonPhoneStrings)))
            (when (= _key (Canvas.jstatic_FIRE))
            (begin
            (jreturn (get-field f_FIRE _commonPhoneStrings))))))))
        (jreturn "UNKNOWN KEY"))))



