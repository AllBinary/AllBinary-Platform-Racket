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
;; package org.allbinary.logic.io

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/io/BufferedReader.rkt"
  "../../../../java/io/BufferedWriter.rkt"
  "../../../../java/io/FileReader.rkt"
  "../../../../java/io/FileWriter.rkt")
(lazy-require ["../../../../org/allbinary/logic/io/file/AbFileNativeUtil.rkt" (AbFileNativeUtil.jm_get_1)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define BufferedIOUtil%
  (class JObject%
    (super-new)))
(define (BufferedIOUtil.jclassValue) BufferedIOUtil%)

(define (BufferedIOUtil.jnew_0)
  (define this (new BufferedIOUtil% [jclass "BufferedIOUtil"]))
  this)

(define (BufferedIOUtil.jm_copy_2 _backupFile _backupFileBak)
    (let ([_line JR.null][_tmpOut JR.null][_tmpIn JR.null])
      (let/ec jreturn
        (set! _line (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
        (set! _tmpOut (BufferedWriter.jnew_1 (FileWriter.jnew_1 (AbFileNativeUtil.jm_get_1 _backupFileBak))))
        (set! _tmpIn (BufferedReader.jnew_1 (FileReader.jnew_1 (AbFileNativeUtil.jm_get_1 _backupFile))))
        (let/ec jbreak (let jloop () (when (send _tmpIn jm_ready_0)
                (let/ec jcontinue
            (set! _line (send _tmpIn jm_readLine_0))
            (send _tmpOut jm_write_3 _line 0 (string-length _line))
            (send _tmpOut jm_newLine_0)) (jloop))))
        (send _tmpOut jm_flush_0))))



