#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2026 AllBinary 
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
  "../../../../../java/io/InputStream.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

;J2MEForJ2ME
(define AbFileSystem%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (define/public (jm_isDirectoryOrFile_1 _path)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_isDirectory_1 _path)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_getFilesAsStringArrayForPath_1 _currentDirPath)
    (let ()
      (let/ec jreturn
        (jreturn (send (StringUtil.jm_getInstance_0) jm_getArrayInstance_0)))))
    (define/public (jm_readAsString_1 _fileName)
    (let ([_bytes JR.null])
      (let/ec jreturn
        (set! _bytes (JR.newArray 0 1000000))
        (jreturn (send this jm_readAsString_2 _fileName _bytes)))))
    (define/public (jm_readAsString_2 _fileName _bytes)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))
    (define/public (jm_close_1 _closeable)
    (let ([_inputStream JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_CLOSE (get-field f_commonStrings this)) _e)
            (jreturn #f))])
            (when (not (JR.null? _closeable))
                (begin
                (set! _inputStream _closeable)
                (send _inputStream jm_close_0)))
            (jreturn #t)))))))
(define (AbFileSystem.jclassValue) AbFileSystem%)

(define AbFileSystem.jcell_instance 'jnone)
(define (AbFileSystem.jstatic_instance)
  (when (eq? AbFileSystem.jcell_instance 'jnone) (set! AbFileSystem.jcell_instance (AbFileSystem.jnew_0)))
  AbFileSystem.jcell_instance)
(define (AbFileSystem.jsetstatic_instance value) (set! AbFileSystem.jcell_instance value))

(define (AbFileSystem.jnew_0)
  (define this (new AbFileSystem% [jclass "AbFileSystem"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
  this)

(define (AbFileSystem.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AbFileSystem.jstatic_instance)))))



