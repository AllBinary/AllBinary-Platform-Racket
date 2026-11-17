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
;; package org.allbinary.canvas

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./BaseGameStatistics.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(provide (all-defined-out))

;ActualPlatform
(define GameStatisticsFactory%
  (class BaseGameStatistics%
    (super-new)
    (field [f_stringBuffer JR.null])
    (define/override (jm_add_1 _string)
    (let ()
      (let/ec jreturn
        (when (> (send (get-field f_stringBuffer this) jm_length_0) 12000)
            (begin
            (send (get-field f_stringBuffer this) jm_delete_2 0 (send (get-field f_stringBuffer this) jm_length_0))
            (send (get-field f_stringBuffer this) jm_append_1 "Old Stats Cleared")))
        (send (get-field f_stringBuffer this) jm_append_1 _string))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (send (send (StringMaker.jnew_0) jm_append_1 (super jm_toString_0)) jm_append_1 (send (get-field f_stringBuffer this) jm_toString_0)) jm_toString_0)))))))

(define GameStatisticsFactory.jcell_instance 'jnone)
(define (GameStatisticsFactory.jstatic_instance)
  (when (eq? GameStatisticsFactory.jcell_instance 'jnone) (set! GameStatisticsFactory.jcell_instance (GameStatisticsFactory.jnew_0)))
  GameStatisticsFactory.jcell_instance)

(define (GameStatisticsFactory.jnew_0)
  (define this (new GameStatisticsFactory% [jclass "GameStatisticsFactory"]))
    (set-field! f_stringBuffer this (StringMaker.jnew_0))
  this)

(define (GameStatisticsFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameStatisticsFactory.jstatic_instance)))))



