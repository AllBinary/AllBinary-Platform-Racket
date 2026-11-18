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
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/io/path/AbPathData.rkt" (AbPathData.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringValidationUtil.rkt" (StringValidationUtil.jm_getInstance_0)])
(lazy-require ["./FilePathData.rkt" (FilePathData.jm_getInstance_0)])
(provide (all-defined-out))

;Used to correct user input for paths
(define FilePathUtil%
  (class JObject%
    (super-new)))
(define (FilePathUtil.jclassValue) FilePathUtil%)

(define (FilePathUtil.jnew_0)
  (define this (new FilePathUtil% [jclass "FilePathUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (FilePathUtil.jm_adjust_1 _path)
    (let ([_abPathData JR.null][_stringValidationUtil JR.null][_filePathData JR.null])
      (let/ec jreturn
        (set! _abPathData (AbPathData.jm_getInstance_0))
        (set! _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
        (set! _filePathData (FilePathData.jm_getInstance_0))
        (when (send _stringValidationUtil jm_isEmpty_1 _path)
            (begin
            (jreturn (get-field f_PATH_START _filePathData))))
        (set! _path (JR.replace _path (get-field f_SEPARATORCHAR _abPathData) (get-field f_SEPARATORCHAR _filePathData)))
        (jreturn _path))))



