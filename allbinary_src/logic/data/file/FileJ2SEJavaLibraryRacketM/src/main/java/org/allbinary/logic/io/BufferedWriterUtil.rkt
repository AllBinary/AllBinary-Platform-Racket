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
  "../../../../java/io/BufferedWriter.rkt"
  "../../../../java/io/FileWriter.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/io/file/AbFile.rkt" (AbFile.jm_createAbFile_1)])
(lazy-require ["../../../../org/allbinary/logic/io/file/AbFileNativeUtil.rkt" (AbFileNativeUtil.jm_get_1)])
(lazy-require ["../../../../org/allbinary/logic/io/path/AbPathData.rkt" (AbPathData.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define BufferedWriterUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_commonLabels JR.null])
    (field [f_REMOVING_OLD JR.null])
    (define/public (jm_overwrite_2 jp1 jp2)
      (cond))
    (define/public (jm_write_2 _abFile _data)
    (let ([_fileOut JR.null])
      (let/ec jreturn
        (set! _fileOut (BufferedWriter.jnew_1 (FileWriter.jnew_1 (AbFileNativeUtil.jm_get_1 _abFile))))
        (send _fileOut jm_write_3 _data 0 (string-length _data))
        (send _fileOut jm_newLine_0)
        (send _fileOut jm_flush_0))))))
(define (BufferedWriterUtil.jclassValue) BufferedWriterUtil%)

(define BufferedWriterUtil.jcell_instance 'jnone)
(define (BufferedWriterUtil.jstatic_instance)
  (when (eq? BufferedWriterUtil.jcell_instance 'jnone) (set! BufferedWriterUtil.jcell_instance (BufferedWriterUtil.jnew_0)))
  BufferedWriterUtil.jcell_instance)
(define (BufferedWriterUtil.jsetstatic_instance value) (set! BufferedWriterUtil.jcell_instance value))

(define (BufferedWriterUtil.jnew_0)
  (define this (new BufferedWriterUtil% [jclass "BufferedWriterUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_commonLabels this (CommonLabels.jm_getInstance_0))
    (set-field! f_REMOVING_OLD this "Remove old for overwriting: ")
  this)

(define (BufferedWriterUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BufferedWriterUtil.jstatic_instance)))))



