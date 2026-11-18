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
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/TouchFeatureFactory.rkt" (TouchFeatureFactory.jm_getInstance_0)])
(lazy-require ["./ScrollSelectionFormNoneFactory.rkt" (ScrollSelectionFormNoneFactory.jm_getInstance_0)])
(lazy-require ["./CommandCurrentSelectionForm.rkt" (CommandCurrentSelectionForm.jnew_6)])
(provide (all-defined-out))

(define CommandCurrentSelectionFormFactory%
  (class JObject%
    (super-new)))
(define (CommandCurrentSelectionFormFactory.jclassValue) CommandCurrentSelectionFormFactory%)

(define (CommandCurrentSelectionFormFactory.jnew_0)
  (define this (new CommandCurrentSelectionFormFactory% [jclass "CommandCurrentSelectionFormFactory"]))
  this)

(define (CommandCurrentSelectionFormFactory.jm_getInstance_8 _title _items _rectangle _formType _border _moveForSmallScreen _backgroundBasicColor _foregroundBasicColor)
    (let ([_scrollSelectionForm JR.null])
      (let/ec jreturn
        (if (send (Features.jm_getInstance_0) jm_isFeature_1 (get-field f_TOUCH_ENABLED (TouchFeatureFactory.jm_getInstance_0)))
            (begin
            (set! _scrollSelectionForm (CommandCurrentSelectionForm.jnew_6 _title _items _border _moveForSmallScreen _backgroundBasicColor _foregroundBasicColor))
            (send _scrollSelectionForm jm_init_2 _rectangle _formType)
            (jreturn _scrollSelectionForm))
            (begin
            (jreturn (ScrollSelectionFormNoneFactory.jm_getInstance_0)))))))



