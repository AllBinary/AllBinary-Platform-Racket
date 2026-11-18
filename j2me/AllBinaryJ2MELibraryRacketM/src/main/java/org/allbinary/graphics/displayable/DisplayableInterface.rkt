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
;; package org.allbinary.graphics.displayable

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define DisplayableInterface%
  (class JObject%
    (super-new)
    (define/public (jm_addCommand_1 _cmd)
      (raise (JR.newException "AbstractMethodError" "addCommand")))
    (define/public (jm_getHeight_0)
      (raise (JR.newException "AbstractMethodError" "getHeight")))
    (define/public (jm_getWidth_0)
      (raise (JR.newException "AbstractMethodError" "getWidth")))
    (define/public (jm_removeCommand_1 _cmd)
      (raise (JR.newException "AbstractMethodError" "removeCommand")))
    (define/public (jm_setCommandListener_1 _l)
      (raise (JR.newException "AbstractMethodError" "setCommandListener")))))
(define (DisplayableInterface.jclassValue) DisplayableInterface%)

(define (DisplayableInterface.jnew_0)
  (define this (new DisplayableInterface% [jclass "DisplayableInterface"]))
  this)



