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

(define CommonLabels%
  (class JObject%
    (super-new)
    (field [f_WIDTH_LABEL JR.null])
    (field [f_HEIGHT_LABEL JR.null])
    (field [f_END_LABEL JR.null])
    (field [f_TOTAL_LABEL JR.null])
    (field [f_INDEX_LABEL JR.null])
    (field [f_START_LABEL JR.null])
    (field [f_COMMAND_LABEL JR.null])
    (field [f_NAME_LABEL JR.null])
    (field [f_START JR.null])
    (field [f_ELAPSED JR.null])
    (field [f_CURRENT JR.null])
    (field [f_NEXT JR.null])
    (field [f_ITEM_LABEL JR.null])
    (field [f_RESULT_ JR.null])
    (field [f_COLON_SEP JR.null])))
(define (CommonLabels.jclassValue) CommonLabels%)

(define CommonLabels.jcell_instance 'jnone)
(define (CommonLabels.jstatic_instance)
  (when (eq? CommonLabels.jcell_instance 'jnone) (set! CommonLabels.jcell_instance (CommonLabels.jnew_0)))
  CommonLabels.jcell_instance)
(define (CommonLabels.jsetstatic_instance value) (set! CommonLabels.jcell_instance value))

(define (CommonLabels.jnew_0)
  (define this (new CommonLabels% [jclass "CommonLabels"]))
    (set-field! f_WIDTH_LABEL this " Width: ")
    (set-field! f_HEIGHT_LABEL this " Height: ")
    (set-field! f_END_LABEL this "End: ")
    (set-field! f_TOTAL_LABEL this "Total: ")
    (set-field! f_INDEX_LABEL this "index: ")
    (set-field! f_START_LABEL this "Start: ")
    (set-field! f_COMMAND_LABEL this "Command: ")
    (set-field! f_NAME_LABEL this "Name: ")
    (set-field! f_START this (get-field f_START_LABEL this))
    (set-field! f_ELAPSED this " Elapsed: ")
    (set-field! f_CURRENT this " Current: ")
    (set-field! f_NEXT this "Next")
    (set-field! f_ITEM_LABEL this "Item: ")
    (set-field! f_RESULT_ this "Result: ")
    (set-field! f_COLON_SEP this ": ")
  this)

(define (CommonLabels.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CommonLabels.jstatic_instance)))))



