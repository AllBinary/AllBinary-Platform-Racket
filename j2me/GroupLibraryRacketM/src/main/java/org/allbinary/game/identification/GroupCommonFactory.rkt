#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary.game.identification

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define GroupCommonFactory%
  (class JObject%
    (super-new)
    (field [f_ID JR.null])
    (field [f_GROUP_NAME_LABEL JR.null])
    (field [f_ID_LABEL JR.null])
    (field [f_ADDING_LABEL JR.null])
    (field [f_TO_LABEL JR.null])))
(define (GroupCommonFactory.jclassValue) GroupCommonFactory%)

(define GroupCommonFactory.jcell_instance 'jnone)
(define (GroupCommonFactory.jstatic_instance)
  (when (eq? GroupCommonFactory.jcell_instance 'jnone) (set! GroupCommonFactory.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  GroupCommonFactory.jcell_instance)
(define (GroupCommonFactory.jsetstatic_instance value) (set! GroupCommonFactory.jcell_instance value))

(define (GroupCommonFactory.jnew_0)
  (define this (new GroupCommonFactory% [jclass "GroupCommonFactory"]))
    (set-field! f_ID this (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 10))
    (set-field! f_GROUP_NAME_LABEL this "Group Name: ")
    (set-field! f_ID_LABEL this " Id: ")
    (set-field! f_ADDING_LABEL this "Adding: ")
    (set-field! f_TO_LABEL this " to: ")
  this)

(define (GroupCommonFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (GroupCommonFactory.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! GroupCommonFactory.jcell_instance (GroupCommonFactory.jnew_0))))
        (jreturn (GroupCommonFactory.jstatic_instance)))))



