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

(define DemoLimitedCommandTextItemArrayFactory%
  (class JObject%
    (super-new)
    (field [f_commandTextItemArrayFactory JR.null])
    (define/public (jm_getCommandTextItemArrayFactory_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_commandTextItemArrayFactory this)))))))
(define (DemoLimitedCommandTextItemArrayFactory.jclassValue) DemoLimitedCommandTextItemArrayFactory%)

(define DemoLimitedCommandTextItemArrayFactory.jcell_instance 'jnone)
(define (DemoLimitedCommandTextItemArrayFactory.jstatic_instance)
  (when (eq? DemoLimitedCommandTextItemArrayFactory.jcell_instance 'jnone) (set! DemoLimitedCommandTextItemArrayFactory.jcell_instance (DemoLimitedCommandTextItemArrayFactory.jnew_0)))
  DemoLimitedCommandTextItemArrayFactory.jcell_instance)
(define (DemoLimitedCommandTextItemArrayFactory.jsetstatic_instance value) (set! DemoLimitedCommandTextItemArrayFactory.jcell_instance value))

(define (DemoLimitedCommandTextItemArrayFactory.jnew_0)
  (define this (new DemoLimitedCommandTextItemArrayFactory% [jclass "DemoLimitedCommandTextItemArrayFactory"]))
    (set-field! f_commandTextItemArrayFactory this (CommandTextItemArrayFactory.jnew_1 (LimitCommandsVisitor.jnew_0)))
  this)

(define (DemoLimitedCommandTextItemArrayFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DemoLimitedCommandTextItemArrayFactory.jstatic_instance)))))



