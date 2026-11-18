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
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringValidationUtil.rkt" (StringValidationUtil.jm_getInstance_0)])
(lazy-require ["./AbPathData.rkt" (AbPathData.jm_getInstance_0)])
(lazy-require ["./AbPath.rkt" (AbPath.jnew_2 AbPath.jm_createAbPath_0)])
(provide (all-defined-out))

;Used to correct user input for paths
(define PathUtil%
  (class JObject%
    (super-new)
    (field [f_abPathData JR.null])
    (field [f_filePathData JR.null])
    (define/public (jm_getExtensionWithAbFilePath_1 _abFilePath)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_abPathData this) jm_getExtension_1 (send _abFilePath jm_toString_0))))))
    (define/public (jm_getExtensionWithAbPath_1 _abPath)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_abPathData this) jm_getExtension_1 (send _abPath jm_toString_0))))))
    (define/public (jm_getWithoutExtensionWithAbFilePath_1 _abFilePath)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getWithoutExtension_1 (send _abFilePath jm_toString_0))))))
    (define/public (jm_getWithoutExtensionWithAbPath_1 _abPath)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getWithoutExtension_1 (send _abPath jm_toString_0))))))
    (define/public (jm_getWithoutExtension_1 _filePath)
    (let ([_indexOfFileExtensionDelmiter JR.null][_pathWithoutExtension JR.null])
      (let/ec jreturn
        (set! _indexOfFileExtensionDelmiter (send (get-field f_abPathData this) jm_getExtensionIndex_1 _filePath))
        (set! _pathWithoutExtension _filePath)
        (when (>= _indexOfFileExtensionDelmiter 0)
            (begin
            (set! _pathWithoutExtension (JR.substring _filePath 0 _indexOfFileExtensionDelmiter))))
        (jreturn _pathWithoutExtension))))
    (define/public (jm_isValid_1 _path)
    (let ()
      (let/ec jreturn
        (when (send this jm_isValidStart_1 _path)
            (begin
            (when (send this jm_isValidEnd_1 _path)
                (begin
                (jreturn #t)))))
        (jreturn #f))))
    (define/public (jm_isValidStart_1 _path)
    (let ()
      (let/ec jreturn
        (if (or (eq? (JR.charAt _path 0) (get-field f_SEPARATORCHAR (get-field f_abPathData this))) (eq? (JR.charAt _path 0) (char->integer #\.)))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_isValidEnd_1 _path)
    (let ([_stringValidationUtil JR.null])
      (let/ec jreturn
        (set! _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
        (when (send _stringValidationUtil jm_isEmpty_1 _path)
            (begin
            (jreturn #f)))
        (if (eq? (JR.charAt _path (JR.i32 (- (string-length _path) 1))) (get-field f_SEPARATORCHAR (get-field f_abPathData this)))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_adjustStart_1 _path)
    (let ()
      (let/ec jreturn
        (when (not (send this jm_isValidStart_1 _path))
            (begin
            (set! _path (JR.concat (get-field f_SEPARATOR (get-field f_abPathData this)) _path))))
        (jreturn _path))))
    (define/public (jm_adjustEnd_1 _path)
    (let ()
      (let/ec jreturn
        (when (not (send this jm_isValidEnd_1 _path))
            (begin
            (set! _path (JR.concat _path (get-field f_SEPARATOR (get-field f_abPathData this))))))
        (jreturn _path))))
    (define/public (jm_adjust_1 _path)
    (let ([_stringValidationUtil JR.null])
      (let/ec jreturn
        (set! _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
        (when (send _stringValidationUtil jm_isEmpty_1 _path)
            (begin
            (jreturn (get-field f_SEPARATOR (get-field f_abPathData this)))))
        (when (>= (JR.indexOf _path "\\") 0)
            (begin
            (set! _path (JR.replace _path 92 (get-field f_SEPARATORCHAR (get-field f_abPathData this))))))
        (jreturn _path))))
    (define/public (jm_removeNameFromPath_1 _path)
    (let ([_endIndex JR.null][_pathWithoutName JR.null])
      (let/ec jreturn
        (set! _endIndex (JR.lastIndexOf _path (get-field f_SEPARATOR (get-field f_abPathData this))))
        (when (< _endIndex 0)
            (begin
            (set! _endIndex (JR.lastIndexOf _path (get-field f_SEPARATORCHAR (get-field f_filePathData this))))))
        (when (< _endIndex 0)
            (begin
            (jreturn (AbPath.jm_createAbPath_0))))
        (if (= (string-length _path) (JR.i32 (+ _endIndex 1)))
            (begin
            (jreturn (send this jm_removeNameFromPath_1 (JR.substring _path 0 (JR.i32 (- _endIndex 1))))))
            (begin
            (set! _pathWithoutName (JR.substring _path 0 _endIndex))
            (jreturn (AbPath.jnew_2 _pathWithoutName (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))))))))))
(define (PathUtil.jclassValue) PathUtil%)

(define PathUtil.jcell_instance 'jnone)
(define (PathUtil.jstatic_instance)
  (when (eq? PathUtil.jcell_instance 'jnone) (set! PathUtil.jcell_instance (PathUtil.jnew_0)))
  PathUtil.jcell_instance)
(define (PathUtil.jsetstatic_instance value) (set! PathUtil.jcell_instance value))

(define (PathUtil.jnew_0)
  (define this (new PathUtil% [jclass "PathUtil"]))
    (set-field! f_abPathData this (AbPathData.jm_getInstance_0))
    (set-field! f_filePathData this (FilePathData.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (PathUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PathUtil.jstatic_instance)))))



