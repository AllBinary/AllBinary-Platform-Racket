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
;; package org.allbinary.math

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define PositionStrings%
  (class JObject%
    (super-new)
    (field [f_X JR.null])
    (field [f_Y JR.null])
    (field [f_X_LABEL JR.null])
    (field [f_Y_LABEL JR.null])
    (field [f_Z_LABEL JR.null])
    (field [f_DX_LABEL JR.null])
    (field [f_DY_LABEL JR.null])
    (field [f_DZ_LABEL JR.null])))
(define (PositionStrings.jclassValue) PositionStrings%)

(define PositionStrings.jcell_instance 'jnone)
(define (PositionStrings.jstatic_instance)
  (when (eq? PositionStrings.jcell_instance 'jnone) (set! PositionStrings.jcell_instance (PositionStrings.jnew_0)))
  PositionStrings.jcell_instance)
(define (PositionStrings.jsetstatic_instance value) (set! PositionStrings.jcell_instance value))

(define (PositionStrings.jnew_0)
  (define this (new PositionStrings% [jclass "PositionStrings"]))
    (set-field! f_X this "x")
    (set-field! f_Y this "y")
    (set-field! f_X_LABEL this "x: ")
    (set-field! f_Y_LABEL this "y: ")
    (set-field! f_Z_LABEL this "z: ")
    (set-field! f_DX_LABEL this "dx: ")
    (set-field! f_DY_LABEL this "dy: ")
    (set-field! f_DZ_LABEL this "dz: ")
  this)

(define (PositionStrings.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PositionStrings.jstatic_instance)))))



