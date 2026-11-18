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
;; package org.allbinary.logic.io.path

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/io/file/FilePathData.rkt" (FilePathData.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/io/file/FilePathUtil.rkt" (FilePathUtil.jm_adjust_1)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringValidationUtil.rkt" (StringValidationUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["./AbPathData.rkt" (AbPathData.jm_getInstance_0)])
(lazy-require ["./PathUtil.rkt" (PathUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define AbPath%
  (class JObject%
    (super-new)
    (field [f_commonSeps JR.null])
    (field [f_abPathData JR.null])
    (field [f_abPathUtil JR.null])
    (field [f_EMPTY_STRING JR.null])
    (field [f_schema JR.null])
    (field [f_path JR.null])
    (field [f_nameP JR.null])
    (field [f_hasSchemaP #f])
    (field [f_numberOfSeps 0])
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn
        (set-field! f_schema this (get-field f_EMPTY_STRING this))
        (send this jm_setPath_1 (get-field f_SEPARATOR (get-field f_abPathData this)))
        (set-field! f_nameP this (get-field f_EMPTY_STRING this)))))
    (define/public (jm_getSchema_1 _aPath)
    (let ([_beginIndex JR.null])
      (let/ec jreturn
        (set! _beginIndex (JR.indexOf _aPath (get-field f_COLON (get-field f_commonSeps this))))
        (when (>= _beginIndex 0)
            (begin
            (set-field! f_hasSchemaP this #t)
            (jreturn (JR.substring _aPath 0 _beginIndex))))
        (set-field! f_hasSchemaP this #f)
        (jreturn (get-field f_EMPTY_STRING this)))))
    (define/public (jm_hasSchema_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_hasSchemaP this)))))
    (define/public (jm_getPathFromPath_1 _aPath)
    (let ([_filePathData JR.null][_tempPath JR.null][_beginIndex JR.null])
      (let/ec jreturn
        (set! _filePathData (FilePathData.jm_getInstance_0))
        (set! _tempPath _aPath)
        (if (not (send this jm_hasSchema_0))
            (begin
            (set! _tempPath (send (get-field f_abPathUtil this) jm_adjustStart_1 _tempPath)))
            (begin
            (set! _beginIndex (JR.indexOf _tempPath (get-field f_COLON (get-field f_commonSeps this))))
            (when (>= _beginIndex 0)
                (begin
                (set! _beginIndex (JR.i32 (+ _beginIndex 1)))
                (let/ec jbreak (let jloop () (when (or (eq? (JR.charAt _tempPath _beginIndex) (get-field f_SEPARATORCHAR (get-field f_abPathData this))) (eq? (JR.charAt _tempPath _beginIndex) (get-field f_SEPARATORCHAR _filePathData)))
                        (let/ec jcontinue
                    (set! _beginIndex (JR.i32 (+ _beginIndex 1)))
                    (set-field! f_numberOfSeps this (JR.i32 (+ (get-field f_numberOfSeps this) 1)))
                    (when (> (get-field f_numberOfSeps this) 2)
                        (begin
                        (raise (JR.newException "Exception" "Should Not Have More Than Two Seps"))))) (jloop))))
                (set! _tempPath (JR.substring _tempPath _beginIndex (string-length _tempPath)))))))
        (jreturn _tempPath))))
    (define/public (jm_setName_1 _name)
    (let ()
      (let/ec jreturn
        (set-field! f_nameP this _name))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_nameP this)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (when (send this jm_hasSchema_0)
            (begin
            (send _stringBuffer jm_append_1 (get-field f_schema this))
            (send _stringBuffer jm_append_1 (AbPath.jstatic_NETWORK_SEP))))
        (send _stringBuffer jm_append_1 (send this jm_getPath_0))
        (send _stringBuffer jm_append_1 (get-field f_nameP this))
        (jreturn (send _stringBuffer jm_toString_0)))))
    (define/public (jm_toFileSystemString_0)
    (let ([_filePathData JR.null][_stringBuffer JR.null])
      (let/ec jreturn
        (if (send this jm_hasSchema_0)
            (begin
            (set! _filePathData (FilePathData.jm_getInstance_0))
            (set! _stringBuffer (StringMaker.jnew_0))
            (send _stringBuffer jm_append_1 (get-field f_schema this))
            (send _stringBuffer jm_append_1 (get-field f_COLON (get-field f_commonSeps this)))
            (send _stringBuffer jm_append_1 (get-field f_PATH_START _filePathData))
            (send _stringBuffer jm_append_1 (FilePathUtil.jm_adjust_1 (send this jm_getPath_0)))
            (send _stringBuffer jm_append_1 (get-field f_nameP this))
            (jreturn (send _stringBuffer jm_toString_0)))
            (begin
            (jreturn (JR.concat (FilePathUtil.jm_adjust_1 (send this jm_getPath_0)) (get-field f_nameP this))))))))
    (define/public (jm_getPath_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_path this)))))
    (define/public (jm_setPath_1 _path)
    (let ()
      (let/ec jreturn
        (set-field! f_path this _path))))))
(define (AbPath.jclassValue) AbPath%)

(define AbPath.jcell_NETWORK_SEP 'jnone)
(define (AbPath.jstatic_NETWORK_SEP)
  (when (eq? AbPath.jcell_NETWORK_SEP 'jnone) (set! AbPath.jcell_NETWORK_SEP ":/"))
  AbPath.jcell_NETWORK_SEP)
(define (AbPath.jsetstatic_NETWORK_SEP value) (set! AbPath.jcell_NETWORK_SEP value))

(define (AbPath.jnew_2 _aPath _name)
  (define this (new AbPath% [jclass "AbPath"]))
    (set-field! f_commonSeps this (CommonSeps.jm_getInstance_0))
    (set-field! f_abPathData this (AbPathData.jm_getInstance_0))
    (set-field! f_abPathUtil this (PathUtil.jm_getInstance_0))
    (set-field! f_EMPTY_STRING this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_schema this (get-field f_EMPTY_STRING this))
    (set-field! f_path this (get-field f_EMPTY_STRING this))
    (set-field! f_nameP this (get-field f_EMPTY_STRING this))
    (set-field! f_hasSchemaP this #f)
    (set-field! f_numberOfSeps this 0)
    (let ([_stringValidationUtil JR.null])
      (let/ec jreturn
        (set! _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
        (if (not (send _stringValidationUtil jm_isEmpty_1 _aPath))
            (begin
            (set-field! f_schema this (send this jm_getSchema_1 _aPath))
            (set-field! f_nameP this _name)
            (set-field! f_path this (send (get-field f_abPathUtil this) jm_adjustEnd_1 (send (get-field f_abPathUtil this) jm_adjust_1 (send this jm_getPathFromPath_1 _aPath)))))
            (begin
            (send this jm_init_0)
            (when (not (send _stringValidationUtil jm_isEmpty_1 _name))
                (begin
                (set-field! f_nameP this _name)))))))
  this)

(define (AbPath.jm_createAbPath_0)
    (let ([_EMPTY_STRING JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_ex)
            (raise (JR.newException "RuntimeException")))])
            (set! _EMPTY_STRING (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
            (jreturn (AbPath.jnew_2 _EMPTY_STRING _EMPTY_STRING))))))



