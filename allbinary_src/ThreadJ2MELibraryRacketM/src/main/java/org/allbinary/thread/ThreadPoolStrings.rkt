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
;; package org.allbinary.thread

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ThreadPoolStrings%
  (class JObject%
    (super-new)
    (field [f_ADD_TASK JR.null])
    (field [f_START_TASK JR.null])
    (field [f_COMPLETE_TASK JR.null])))

(define ThreadPoolStrings.jcell_instance 'jnone)
(define (ThreadPoolStrings.jstatic_instance)
  (when (eq? ThreadPoolStrings.jcell_instance 'jnone) (set! ThreadPoolStrings.jcell_instance (ThreadPoolStrings.jnew_0)))
  ThreadPoolStrings.jcell_instance)

(define (ThreadPoolStrings.jnew_0)
  (define this (new ThreadPoolStrings% [jclass "ThreadPoolStrings"]))
    (set-field! f_ADD_TASK this "addTask")
    (set-field! f_START_TASK this "Started Task: ")
    (set-field! f_COMPLETE_TASK this "Completed Task: ")
  this)

(define (ThreadPoolStrings.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ThreadPoolStrings.jstatic_instance)))))



