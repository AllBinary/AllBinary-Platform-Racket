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
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./Group.rkt" (Group.jnew_2)])
(provide (all-defined-out))

(define GroupFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_NULL_GROUP_ARRAY JR.null])
    (field [f_list JR.null])
    (field [f_index 0])
    (define/public (jm_getNextGroup_0)
    (let ([_group JR.null])
      (let/ec jreturn
        (set! _group (vector-ref (get-field f_objectArray (get-field f_list this)) (get-field f_index this)))
        (set-field! f_index this (JR.i32 (+ (get-field f_index this) 1)))
        (jreturn _group))))
    (define/public (jm_getNextGroupByName_1 _name)
    (let ([_group JR.null])
      (let/ec jreturn
        (set! _group (send this jm_getNextGroup_0))
        (send _group jm_setName_1 _name)
        (jreturn _group))))
    (define/public (jm_init_2 _groups _nameArray)
    (let ([_stringMaker JR.null][_stringUtil JR.null][_TEAM JR.null][_size JR.null][_name JR.null])
      (let/ec jreturn
        (set! _stringMaker (StringMaker.jnew_0))
        (set! _stringUtil (StringUtil.jm_getInstance_0))
        (set! _TEAM "Team ")
        (send (get-field f_list this) jm_clear_0)
        (set-field! f_index this 0)
        (set! _size (send (get-field f_list this) jm_size_0))
        (set! _name JR.null)
        (let/ec jbreak (let jloop () (when (< _size _groups)
                (let/ec jcontinue
            (set! _name (get-field f_EMPTY_STRING _stringUtil))
            (if (< _size (vector-length _nameArray))
                (begin
                (set! _name (vector-ref _nameArray _size)))
                (begin
                (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                (set! _name (send (send (send _stringMaker jm_append_1 _TEAM) jm_appendint_1 _size) jm_toString_0))))
            (send (get-field f_list this) jm_add_1 (Group.jnew_2 _name (JR.i16 (JR.i32 (+ _size 3)))))
            (set! _size (JR.i32 (+ _size 1)))) (jloop)))))))))
(define (GroupFactory.jclassValue) GroupFactory%)

(define GroupFactory.jcell_instance 'jnone)
(define (GroupFactory.jstatic_instance)
  (when (eq? GroupFactory.jcell_instance 'jnone) (set! GroupFactory.jcell_instance (GroupFactory.jnew_0)))
  GroupFactory.jcell_instance)
(define (GroupFactory.jsetstatic_instance value) (set! GroupFactory.jcell_instance value))

(define (GroupFactory.jnew_0)
  (define this (new GroupFactory% [jclass "GroupFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_NULL_GROUP_ARRAY this (JR.newArray JR.null 0))
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (set-field! f_index this 0)
  this)

(define (GroupFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GroupFactory.jstatic_instance)))))



