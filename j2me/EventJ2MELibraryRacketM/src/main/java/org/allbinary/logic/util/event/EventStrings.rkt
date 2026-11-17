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
;; package org.allbinary.logic.util.event

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define EventStrings%
  (class JObject%
    (super-new)
    (field [f_PERFORMANCE_MESSAGE JR.null])
    (field [f_TOTAL_LISTENERS JR.null])
    (field [f_LISTENER_LABEL JR.null])
    (field [f_FIRE_EVENT JR.null])))

(define EventStrings.jcell_instance 'jnone)
(define (EventStrings.jstatic_instance)
  (when (eq? EventStrings.jcell_instance 'jnone) (set! EventStrings.jcell_instance (EventStrings.jnew_0)))
  EventStrings.jcell_instance)

(define (EventStrings.jnew_0)
  (define this (new EventStrings% [jclass "EventStrings"]))
    (set-field! f_PERFORMANCE_MESSAGE this "Use Custom onEvent Methods for needed optimization")
    (set-field! f_TOTAL_LISTENERS this "Total Listeners: ")
    (set-field! f_LISTENER_LABEL this " Listener: ")
    (set-field! f_FIRE_EVENT this "fireEvent")
  this)

(define (EventStrings.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (EventStrings.jstatic_instance)))))



