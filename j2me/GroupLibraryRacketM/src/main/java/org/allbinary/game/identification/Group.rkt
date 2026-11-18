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
;; package org.allbinary.game.identification

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./GroupInterface.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./GroupCommonFactory.rkt" (GroupCommonFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define Group%
  (class JObject%
    (super-new)
    (field [f_name JR.null])
    (field [f_teamId 0])
    (field [f_string JR.null])
    (define/public (jm_getGroupName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))
    (define/public (jm_setName_1 _name)
    (let ([_groupCommonFactory JR.null][_stringBuffer JR.null])
      (let/ec jreturn
        (set-field! f_name this _name)
        (set! _groupCommonFactory (GroupCommonFactory.jm_getInstance_0))
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (get-field f_GROUP_NAME_LABEL _groupCommonFactory))
        (send _stringBuffer jm_append_1 (get-field f_name this))
        (send _stringBuffer jm_append_1 (get-field f_ID_LABEL _groupCommonFactory))
        (send _stringBuffer jm_appendshort_1 (get-field f_teamId this))
        (set-field! f_string this (send _stringBuffer jm_toString_0)))))
    (define/public (jm_getGroupId_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_teamId this)))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_string this)))))))
(define (Group.jclassValue) Group%)

(define (Group.jnew_2 _teamName _teamId)
  (define this (new Group% [jclass "Group"]))
    (set-field! f_name this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    
    (set-field! f_string this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (set-field! f_teamId this _teamId)
        (send this jm_setName_1 _teamName)))
  this)



