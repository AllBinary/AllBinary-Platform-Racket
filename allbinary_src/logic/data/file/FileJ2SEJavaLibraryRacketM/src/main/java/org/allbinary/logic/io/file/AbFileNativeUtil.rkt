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
;; package org.allbinary.logic.io.file

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../java/io/File.rkt")
(provide (all-defined-out))

(define AbFileNativeUtil%
  (class JObject%
    (super-new)))
(define (AbFileNativeUtil.jclassValue) AbFileNativeUtil%)

(define (AbFileNativeUtil.jnew_0)
  (define this (new AbFileNativeUtil% [jclass "AbFileNativeUtil"]))
  this)

(define (AbFileNativeUtil.jm_get_1 _file)
    (let ()
      (let/ec jreturn
        (jreturn (send _file jm_getFile_0)))))



