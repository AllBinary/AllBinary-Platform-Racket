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
;; package org.allbinary.graphics.form

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./FormType.rkt" (FormType.jnew_1)])
(provide (all-defined-out))

(define FormTypeFactory%
  (class JObject%
    (super-new)
    (field [f_UNK JR.null])
    (field [f_NULL_FORM_TYPE JR.null])
    (field [f_TEMP_HORIZONTAL_FORM JR.null])
    (field [f_HORIZONTAL_FORM JR.null])
    (field [f_VERTICAL_CENTER_FORM JR.null])
    (define/public (jm_getFormType_0)
    (let ([_displayInfo JR.null][_formType JR.null])
      (let/ec jreturn
        (set! _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (set! _formType JR.null)
        (if (send _displayInfo jm_isPortrait_0)
            (begin
            (set! _formType (get-field f_VERTICAL_CENTER_FORM this)))
            (begin
            (set! _formType (get-field f_HORIZONTAL_FORM this))))
        (jreturn _formType))))))
(define (FormTypeFactory.jclassValue) FormTypeFactory%)

(define FormTypeFactory.jcell_instance 'jnone)
(define (FormTypeFactory.jstatic_instance)
  (when (eq? FormTypeFactory.jcell_instance 'jnone) (set! FormTypeFactory.jcell_instance (FormTypeFactory.jnew_0)))
  FormTypeFactory.jcell_instance)
(define (FormTypeFactory.jsetstatic_instance value) (set! FormTypeFactory.jcell_instance value))

(define (FormTypeFactory.jnew_0)
  (define this (new FormTypeFactory% [jclass "FormTypeFactory"]))
    (set-field! f_UNK this "Unknown FormType")
    (set-field! f_NULL_FORM_TYPE this (FormType.jnew_1 (get-field f_NULL_STRING (StringUtil.jm_getInstance_0))))
    (set-field! f_TEMP_HORIZONTAL_FORM this (FormType.jnew_1 "TempHorizontal"))
    (set-field! f_HORIZONTAL_FORM this (FormType.jnew_1 "Horizontal"))
    (set-field! f_VERTICAL_CENTER_FORM this (FormType.jnew_1 "Vertical"))
  this)

(define (FormTypeFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (FormTypeFactory.jstatic_instance)))))



