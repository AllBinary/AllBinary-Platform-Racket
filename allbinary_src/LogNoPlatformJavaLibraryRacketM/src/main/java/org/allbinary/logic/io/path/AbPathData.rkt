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
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define AbPathData%
  (class JObject%
    (super-new)
    (field [f_EXTENSION_SEP JR.null])
    (field [f_SEPARATORCHAR 0])
    (field [f_SEPARATOR JR.null])
    (define/public (jm_getExtensionIndex_1 _filePath)
    (let ([_indexOfFileExtensionDelmiter JR.null][_indexOfLatDelimiter JR.null])
      (let/ec jreturn
        (set! _indexOfFileExtensionDelmiter (JR.lastIndexOf _filePath (get-field f_EXTENSION_SEP this)))
        (set! _indexOfLatDelimiter (JR.lastIndexOf _filePath (get-field f_SEPARATORCHAR this)))
        (when (< _indexOfFileExtensionDelmiter 0)
            (begin
            (jreturn (JR.i32 (- 1)))))
        (when (< _indexOfFileExtensionDelmiter _indexOfLatDelimiter)
            (begin
            (jreturn (JR.i32 (- 1)))))
        (jreturn _indexOfFileExtensionDelmiter))))
    (define/public (jm_getExtensionWithDot_1 _filePath)
    (let ([_indexOfFileExtensionDelmiter JR.null][_extension JR.null])
      (let/ec jreturn
        (set! _indexOfFileExtensionDelmiter (send this jm_getExtensionIndex_1 _filePath))
        (set! _extension (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
        (when (>= _indexOfFileExtensionDelmiter 0)
            (begin
            (set! _extension (JR.substring _filePath _indexOfFileExtensionDelmiter))))
        (jreturn _extension))))
    (define/public (jm_getExtension_1 _filePath)
    (let ([_indexOfFileExtensionDelmiter JR.null][_extension JR.null])
      (let/ec jreturn
        (set! _indexOfFileExtensionDelmiter (send this jm_getExtensionIndex_1 _filePath))
        (set! _extension (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
        (when (>= _indexOfFileExtensionDelmiter 0)
            (begin
            (set! _extension (JR.substring _filePath (JR.i32 (+ _indexOfFileExtensionDelmiter 1))))))
        (jreturn _extension))))
    (define/public (jm_getNameFromPath_1 _path)
    (let ([_endIndex JR.null][_categoryName JR.null])
      (let/ec jreturn
        (set! _endIndex (JR.lastIndexOf _path (get-field f_SEPARATORCHAR this)))
        (when (< _endIndex 0)
            (begin
            (set! _endIndex (JR.lastIndexOf _path (get-field f_SEPARATORCHAR (FilePathData.jm_getInstance_0))))))
        (when (< _endIndex 0)
            (begin
            (jreturn _path)))
        (if (= (string-length _path) (JR.i32 (+ _endIndex 1)))
            (begin
            (set! _categoryName (JR.substring _path 0 _endIndex))
            (jreturn (send this jm_getNameFromPath_1 _categoryName)))
            (begin
            (set! _categoryName (JR.substring _path (JR.i32 (+ _endIndex 1))))
            (jreturn _categoryName))))))
    (define/public (jm_removeNameFromPath_1 _path)
    (let ([_endIndex JR.null][_pathWithoutName JR.null])
      (let/ec jreturn
        (set! _endIndex (JR.lastIndexOf _path (get-field f_SEPARATORCHAR this)))
        (when (< _endIndex 0)
            (begin
            (set! _endIndex (JR.lastIndexOf _path (get-field f_SEPARATORCHAR (FilePathData.jm_getInstance_0))))))
        (when (< _endIndex 0)
            (begin
            (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))))
        (if (= (string-length _path) (JR.i32 (+ _endIndex 1)))
            (begin
            (jreturn (send this jm_removeNameFromPath_1 (JR.substring _path 0 (JR.i32 (- _endIndex 1))))))
            (begin
            (set! _pathWithoutName (JR.substring _path 0 _endIndex))
            (jreturn _pathWithoutName))))))))
(define (AbPathData.jclassValue) AbPathData%)

(define AbPathData.jcell_instance 'jnone)
(define (AbPathData.jstatic_instance)
  (when (eq? AbPathData.jcell_instance 'jnone) (set! AbPathData.jcell_instance (AbPathData.jnew_0)))
  AbPathData.jcell_instance)
(define (AbPathData.jsetstatic_instance value) (set! AbPathData.jcell_instance value))

(define (AbPathData.jnew_0)
  (define this (new AbPathData% [jclass "AbPathData"]))
    (set-field! f_EXTENSION_SEP this (get-field f_PERIOD (CommonSeps.jm_getInstance_0)))
    (set-field! f_SEPARATORCHAR this (char->integer #\/))
    (set-field! f_SEPARATOR this (get-field f_FORWARD_SLASH (CommonSeps.jm_getInstance_0)))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (AbPathData.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AbPathData.jstatic_instance)))))



