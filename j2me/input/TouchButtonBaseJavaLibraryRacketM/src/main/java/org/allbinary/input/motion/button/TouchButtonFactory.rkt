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
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define TouchButtonFactory%
  (class JObject%
    (super-new)
    (field [f_LIST JR.null])
    (field [f_list JR.null])
    (field [f_savedList JR.null])
    (field [f_saved #f])
    (define/public (jm_defaultList_0)
    (let ()
      (let/ec jreturn
        (set-field! f_list this (get-field f_LIST this))
        (send this jm_toggle_2 #f (get-field f_LIST this)))))
    (define/public (jm_toggle_2 _save _list)
    (let ()
      (let/ec jreturn
        (if (not (eq? _list (send (BasicArrayListUtil.jm_getInstance_0) jm_getImmutableInstance_0)))
            (begin
            (set-field! f_savedList this _list)
            (when (not (get-field f_saved this))
                (begin
                (set-field! f_list this (get-field f_savedList this)))))
            (begin
            (if _save
                (begin
                (if (not (get-field f_saved this))
                    (begin
                    (set-field! f_saved this #t)
                    (set-field! f_savedList this (get-field f_list this))
                    (set-field! f_list this (get-field f_LIST this)))
                    (begin
                    (void))))
                (begin
                (set-field! f_list this (get-field f_savedList this))
                (set-field! f_saved this #f))))))))
    (define/public (jm_setList_1 _list)
    (let ()
      (let/ec jreturn
        (when (JR.null? _list)
            (begin
            (raise (JR.newException "Exception" "Null List"))))
        (set-field! f_list this _list))))
    (define/public (jm_getList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_list this)))))))
(define (TouchButtonFactory.jclassValue) TouchButtonFactory%)

(define TouchButtonFactory.jcell_SINGLETON 'jnone)
(define (TouchButtonFactory.jstatic_SINGLETON)
  (when (eq? TouchButtonFactory.jcell_SINGLETON 'jnone) (set! TouchButtonFactory.jcell_SINGLETON (TouchButtonFactory.jnew_0)))
  TouchButtonFactory.jcell_SINGLETON)
(define (TouchButtonFactory.jsetstatic_SINGLETON value) (set! TouchButtonFactory.jcell_SINGLETON value))

(define (TouchButtonFactory.jnew_0)
  (define this (new TouchButtonFactory% [jclass "TouchButtonFactory"]))
    (set-field! f_LIST this (send (BasicArrayListUtil.jm_getInstance_0) jm_getImmutableInstance_0))
    (set-field! f_list this (get-field f_LIST this))
    (set-field! f_savedList this (get-field f_LIST this))
    (set-field! f_saved this #f)
    (let ()
      (let/ec jreturn (void)))
  this)

(define (TouchButtonFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TouchButtonFactory.jstatic_SINGLETON)))))



