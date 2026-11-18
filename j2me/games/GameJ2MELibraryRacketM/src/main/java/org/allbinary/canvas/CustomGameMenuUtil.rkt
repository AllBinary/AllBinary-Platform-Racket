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
;; package org.allbinary.canvas

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/AppletUtil.rkt" (AppletUtil.jm_isAppletLoader_1)])
(lazy-require ["../../../org/allbinary/J2MEUtil.rkt" (J2MEUtil.jm_isHTML_0)])
(lazy-require ["../../../org/allbinary/game/commands/GameCommandsFactory.rkt" (GameCommandsFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define CustomGameMenuUtil%
  (class JObject%
    (super-new)))
(define (CustomGameMenuUtil.jclassValue) CustomGameMenuUtil%)

(define (CustomGameMenuUtil.jnew_0)
  (define this (new CustomGameMenuUtil% [jclass "CustomGameMenuUtil"]))
  this)

(define (CustomGameMenuUtil.jm_add_1 _canvas)
    (let ([_gameCommandsFactory JR.null])
      (let/ec jreturn
        (set! _gameCommandsFactory (GameCommandsFactory.jm_getInstance_0))
        (if (AppletUtil.jm_isAppletLoader_1 _canvas)
            (begin
            (void))
            (if (J2MEUtil.jm_isHTML_0)
            (begin
            (void))
            (begin
            (send _canvas jm_addCommand_1 (get-field f_EXIT_COMMAND _gameCommandsFactory))))))))



