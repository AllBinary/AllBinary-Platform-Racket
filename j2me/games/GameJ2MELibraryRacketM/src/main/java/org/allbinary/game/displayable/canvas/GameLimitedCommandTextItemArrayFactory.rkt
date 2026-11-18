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
(lazy-require ["../../../../../org/allbinary/graphics/form/item/CommandTextItemArrayFactory.rkt" (CommandTextItemArrayFactory.jnew_1)])
(lazy-require ["../../../../../org/allbinary/graphics/form/item/LimitCommandsVisitor.rkt" (LimitCommandsVisitor.jnew_0)])
(provide (all-defined-out))

(define GameLimitedCommandTextItemArrayFactory%
  (class JObject%
    (super-new)
    (field [f_commandTextItemArrayFactory JR.null])
    (define/public (jm_getCommandTextItemArrayFactory_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_commandTextItemArrayFactory this)))))))
(define (GameLimitedCommandTextItemArrayFactory.jclassValue) GameLimitedCommandTextItemArrayFactory%)

(define GameLimitedCommandTextItemArrayFactory.jcell_instance 'jnone)
(define (GameLimitedCommandTextItemArrayFactory.jstatic_instance)
  (when (eq? GameLimitedCommandTextItemArrayFactory.jcell_instance 'jnone) (set! GameLimitedCommandTextItemArrayFactory.jcell_instance (GameLimitedCommandTextItemArrayFactory.jnew_0)))
  GameLimitedCommandTextItemArrayFactory.jcell_instance)
(define (GameLimitedCommandTextItemArrayFactory.jsetstatic_instance value) (set! GameLimitedCommandTextItemArrayFactory.jcell_instance value))

(define (GameLimitedCommandTextItemArrayFactory.jnew_0)
  (define this (new GameLimitedCommandTextItemArrayFactory% [jclass "GameLimitedCommandTextItemArrayFactory"]))
    (set-field! f_commandTextItemArrayFactory this (CommandTextItemArrayFactory.jnew_1 (LimitCommandsVisitor.jnew_0)))
  this)

(define (GameLimitedCommandTextItemArrayFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameLimitedCommandTextItemArrayFactory.jstatic_instance)))))



