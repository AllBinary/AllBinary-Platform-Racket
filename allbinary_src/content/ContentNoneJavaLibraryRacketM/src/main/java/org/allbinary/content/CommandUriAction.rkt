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
;; package org.allbinary.content

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define CommandUriAction%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (define/public (jm_add_2 _command _url)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_process_1 _command)
    (let ()
      (let/ec jreturn (void))))))
(define (CommandUriAction.jclassValue) CommandUriAction%)

(define CommandUriAction.jcell_instance 'jnone)
(define (CommandUriAction.jstatic_instance)
  (when (eq? CommandUriAction.jcell_instance 'jnone) (set! CommandUriAction.jcell_instance (CommandUriAction.jnew_0)))
  CommandUriAction.jcell_instance)
(define (CommandUriAction.jsetstatic_instance value) (set! CommandUriAction.jcell_instance value))

(define (CommandUriAction.jnew_0)
  (define this (new CommandUriAction% [jclass "CommandUriAction"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
  this)

(define (CommandUriAction.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CommandUriAction.jstatic_instance)))))



