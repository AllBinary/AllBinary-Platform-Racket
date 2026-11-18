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
;; package org.allbinary.logic.system.security.licensing

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define AbeClientInformationData%
  (class JObject%
    (super-new)
    (field [f_KEY JR.null])
    (field [f_NAME JR.null])
    (field [f_VERSION JR.null])
    (field [f_SPECIALNAME JR.null])
    (field [f_LICENSEID JR.null])
    (field [f_LICENSE_TYPE JR.null])
    (field [f_PREVIOUSLICENSEID JR.null])
    (field [f_OSNAME JR.null])
    (field [f_OSARCH JR.null])
    (field [f_OSVERSION JR.null])
    (field [f_OS JR.null])
    (field [f_HARDWARE JR.null])
    (field [f_LICENSESERVERS JR.null])
    (field [f_NEWLICENSE JR.null])
    (field [f_ISNEW JR.null])
    (field [f_SPECIAL JR.null])))
(define (AbeClientInformationData.jclassValue) AbeClientInformationData%)

(define AbeClientInformationData.jcell_instance 'jnone)
(define (AbeClientInformationData.jstatic_instance)
  (when (eq? AbeClientInformationData.jcell_instance 'jnone) (set! AbeClientInformationData.jcell_instance (AbeClientInformationData.jnew_0)))
  AbeClientInformationData.jcell_instance)
(define (AbeClientInformationData.jsetstatic_instance value) (set! AbeClientInformationData.jcell_instance value))

(define (AbeClientInformationData.jnew_0)
  (define this (new AbeClientInformationData% [jclass "AbeClientInformationData"]))
    (set-field! f_KEY this "KEY")
    (set-field! f_NAME this "NAME")
    (set-field! f_VERSION this "VERSION")
    (set-field! f_SPECIALNAME this "SPECIALNAME")
    (set-field! f_LICENSEID this "LICENSEID")
    (set-field! f_LICENSE_TYPE this "LICENSETYPE")
    (set-field! f_PREVIOUSLICENSEID this "PREVIOUSLICENSEID")
    (set-field! f_OSNAME this "OSNAME")
    (set-field! f_OSARCH this "OSARCH")
    (set-field! f_OSVERSION this "OSVERSION")
    (set-field! f_OS this "OS")
    (set-field! f_HARDWARE this "HARDWARE")
    (set-field! f_LICENSESERVERS this "LICENSESERVERS")
    (set-field! f_NEWLICENSE this "NEWLICENSE")
    (set-field! f_ISNEW this "ISNEW")
    (set-field! f_SPECIAL this "SPECIAL")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (AbeClientInformationData.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AbeClientInformationData.jstatic_instance)))))



