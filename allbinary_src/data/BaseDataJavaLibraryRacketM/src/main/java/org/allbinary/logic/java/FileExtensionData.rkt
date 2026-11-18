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
;; package org.allbinary.logic.java

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define FileExtensionData%
  (class JObject%
    (super-new)
    (field [f_DOT_JAVA_SOURCE JR.null])
    (field [f_JAVA_SOURCE JR.null])))
(define (FileExtensionData.jclassValue) FileExtensionData%)

(define FileExtensionData.jcell_instance 'jnone)
(define (FileExtensionData.jstatic_instance)
  (when (eq? FileExtensionData.jcell_instance 'jnone) (set! FileExtensionData.jcell_instance (FileExtensionData.jnew_0)))
  FileExtensionData.jcell_instance)
(define (FileExtensionData.jsetstatic_instance value) (set! FileExtensionData.jcell_instance value))

(define (FileExtensionData.jnew_0)
  (define this (new FileExtensionData% [jclass "FileExtensionData"]))
    (set-field! f_DOT_JAVA_SOURCE this ".java")
    (set-field! f_JAVA_SOURCE this "java")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (FileExtensionData.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (FileExtensionData.jstatic_instance)))))



