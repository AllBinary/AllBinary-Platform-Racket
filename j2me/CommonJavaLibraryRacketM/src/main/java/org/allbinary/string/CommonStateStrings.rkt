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
;; package org.allbinary.string

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define CommonStateStrings%
  (class JObject%
    (super-new)
    (field [f_CONTEXT JR.null])
    (field [f_FINISH JR.null])
    (field [f_CREATE JR.null])
    (field [f_START JR.null])
    (field [f_RESTART JR.null])
    (field [f_RESUME JR.null])
    (field [f_PAUSE JR.null])
    (field [f_STOP JR.null])
    (field [f_DESTROY JR.null])
    (field [f_BIND JR.null])
    (field [f_ON_SAVE_INSTANCE_STATE JR.null])
    (field [f_ON_START_COMMAND JR.null])))

(define CommonStateStrings.jcell_instance 'jnone)
(define (CommonStateStrings.jstatic_instance)
  (when (eq? CommonStateStrings.jcell_instance 'jnone) (set! CommonStateStrings.jcell_instance (CommonStateStrings.jnew_0)))
  CommonStateStrings.jcell_instance)

(define (CommonStateStrings.jnew_0)
  (define this (new CommonStateStrings% [jclass "CommonStateStrings"]))
    (set-field! f_CONTEXT this "Context: ")
    (set-field! f_FINISH this "finish")
    (set-field! f_CREATE this "onCreate")
    (set-field! f_START this "onStart")
    (set-field! f_RESTART this "onRestart")
    (set-field! f_RESUME this "onResume")
    (set-field! f_PAUSE this "onPause")
    (set-field! f_STOP this "onStop")
    (set-field! f_DESTROY this "onDestroy")
    (set-field! f_BIND this "onBind")
    (set-field! f_ON_SAVE_INSTANCE_STATE this "onSaveInstanceState")
    (set-field! f_ON_START_COMMAND this "onStartCommand")
  this)

(define (CommonStateStrings.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CommonStateStrings.jstatic_instance)))))



