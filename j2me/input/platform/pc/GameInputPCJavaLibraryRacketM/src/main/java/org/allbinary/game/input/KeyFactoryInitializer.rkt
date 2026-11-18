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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/init/Init.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define KeyFactoryInitializer%
  (class Init%
    (super-new)
    (field [f_logUtil JR.null])
    (define/override (jm_init_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this (get-field f_INIT (get-field f_commonStrings this)))
        (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_initWithRange_2 #x2D0 6))))))
(define (KeyFactoryInitializer.jclassValue) KeyFactoryInitializer%)

(define (KeyFactoryInitializer.jnew_0)
  (define this (new KeyFactoryInitializer% [jclass "KeyFactoryInitializer"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
  this)



