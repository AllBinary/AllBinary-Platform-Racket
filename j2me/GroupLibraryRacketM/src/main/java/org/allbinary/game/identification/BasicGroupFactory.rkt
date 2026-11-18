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
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["./Group.rkt" (Group.jnew_2)])
(provide (all-defined-out))

(define BasicGroupFactory%
  (class JObject%
    (super-new)
    (field [f_NAME JR.null])
    (field [f_NO_SUCH_GROUP JR.null])
    (field [f_GOOD JR.null])
    (field [f_ENEMY JR.null])
    (field [f_ENEMY_ON_LEVEL JR.null])
    (field [f_NONE JR.null])
    (field [f_GOOD_ARRAY JR.null])
    (field [f_ENEMY_ARRAY JR.null])
    (field [f_ENEMY_ON_LEVEL_ARRAY JR.null])
    (field [f_NONE_ARRAY JR.null])))
(define (BasicGroupFactory.jclassValue) BasicGroupFactory%)

(define BasicGroupFactory.jcell_instance 'jnone)
(define (BasicGroupFactory.jstatic_instance)
  (when (eq? BasicGroupFactory.jcell_instance 'jnone) (set! BasicGroupFactory.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  BasicGroupFactory.jcell_instance)
(define (BasicGroupFactory.jsetstatic_instance value) (set! BasicGroupFactory.jcell_instance value))

(define (BasicGroupFactory.jnew_0)
  (define this (new BasicGroupFactory% [jclass "BasicGroupFactory"]))
    (set-field! f_NAME this "GROUP_NAME")
    (set-field! f_NO_SUCH_GROUP this "No Such Group: ")
    (set-field! f_GOOD this (Group.jnew_2 "Good Guys" (JR.i16 0)))
    (set-field! f_ENEMY this (Group.jnew_2 "Bad Guys" (JR.i16 1)))
    (set-field! f_ENEMY_ON_LEVEL this (Group.jnew_2 "Bad Guys on Level" (JR.i16 2)))
    (set-field! f_NONE this (Group.jnew_2 "Not On A Team" (JR.i16 3)))
    (set-field! f_GOOD_ARRAY this (vector (get-field f_GOOD this)))
    (set-field! f_ENEMY_ARRAY this (vector (get-field f_ENEMY this)))
    (set-field! f_ENEMY_ON_LEVEL_ARRAY this (vector (get-field f_ENEMY this) (get-field f_ENEMY_ON_LEVEL this)))
    (set-field! f_NONE_ARRAY this (vector (get-field f_NONE this)))
  this)

(define (BasicGroupFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (BasicGroupFactory.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! BasicGroupFactory.jcell_instance (BasicGroupFactory.jnew_0))))
        (jreturn (BasicGroupFactory.jstatic_instance)))))



