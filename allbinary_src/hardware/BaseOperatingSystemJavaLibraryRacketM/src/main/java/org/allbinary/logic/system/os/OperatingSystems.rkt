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
;; package org.allbinary.logic.system.os

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define OperatingSystems%
  (class JObject%
    (super-new)
    (field [f_LINUX JR.null])
    (field [f_WINDOWS JR.null])
    (field [f_SOLARIS JR.null])
    (field [f_WINDOWS2000 JR.null])
    (field [f_WINDOWS_NT JR.null])
    (field [f_WINDOWS_10 JR.null])
    (field [f_WINDOWS_11 JR.null])
    (field [f_WINDOWS_VISTA JR.null])
    (field [f_WINDOWS_XP JR.null])
    (field [f_ANDROID JR.null])
    (field [f_HARMONY JR.null])
    (field [f_unknownSpecificOSAllowed #f])
    (define/public (jm_isUnknownSpecificOSAllowed_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_unknownSpecificOSAllowed this)))))
    (define/public (jm_setUnknownSpecificOSAllowed_1 _aUnknownSpecificOSAllowed)
    (let ()
      (let/ec jreturn
        (set-field! f_unknownSpecificOSAllowed this _aUnknownSpecificOSAllowed))))))
(define (OperatingSystems.jclassValue) OperatingSystems%)

(define OperatingSystems.jcell_instance 'jnone)
(define (OperatingSystems.jstatic_instance)
  (when (eq? OperatingSystems.jcell_instance 'jnone) (set! OperatingSystems.jcell_instance (OperatingSystems.jnew_0)))
  OperatingSystems.jcell_instance)
(define (OperatingSystems.jsetstatic_instance value) (set! OperatingSystems.jcell_instance value))

(define (OperatingSystems.jnew_0)
  (define this (new OperatingSystems% [jclass "OperatingSystems"]))
    (set-field! f_LINUX this "Linux")
    (set-field! f_WINDOWS this "Windows")
    (set-field! f_SOLARIS this "Solaris")
    (set-field! f_WINDOWS2000 this "Windows 2000")
    (set-field! f_WINDOWS_NT this "Windows NT")
    (set-field! f_WINDOWS_10 this "Windows 10")
    (set-field! f_WINDOWS_11 this "Windows 11")
    (set-field! f_WINDOWS_VISTA this "Windows Vista")
    (set-field! f_WINDOWS_XP this "Windows XP")
    (set-field! f_ANDROID this (get-field f_LINUX this))
    (set-field! f_HARMONY this "HarmonyOS")
    (set-field! f_unknownSpecificOSAllowed this #t)
    (let ()
      (let/ec jreturn (void)))
  this)

(define (OperatingSystems.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OperatingSystems.jstatic_instance)))))



