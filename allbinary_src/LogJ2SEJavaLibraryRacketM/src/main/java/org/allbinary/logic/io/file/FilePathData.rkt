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

(define FilePathData%
  (class JObject%
    (super-new)
    (field [f_SEPARATORCHAR 0])
    (field [f_PATH_START JR.null])))

(define FilePathData.jcell_instance 'jnone)
(define (FilePathData.jstatic_instance)
  (when (eq? FilePathData.jcell_instance 'jnone) (set! FilePathData.jcell_instance (FilePathData.jnew_0)))
  FilePathData.jcell_instance)

(define (FilePathData.jnew_0)
  (define this (new FilePathData% [jclass "FilePathData"]))
    (set-field! f_SEPARATORCHAR this (File.jstatic_separatorChar))
    (set-field! f_PATH_START this (File.jstatic_separator))
    (let ()
      (let/ec jreturn
        (when (eq? (File.jstatic_separatorChar) 92)
            (begin
            (set-field! f_PATH_START this (JR.concat (File.jstatic_separator) (File.jstatic_separator)))))))
  this)

(define (FilePathData.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (FilePathData.jstatic_instance)))))



