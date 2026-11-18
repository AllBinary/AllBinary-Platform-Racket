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
  "../../../../../allbinary_java.rkt"
  "./AbPath.rkt")
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./AbPathData.rkt" (AbPathData.jm_getInstance_0)])
(lazy-require ["./PathUtil.rkt" (PathUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define AbFilePath%
  (class AbPath%
    (super-new)))
(define (AbFilePath.jclassValue) AbFilePath%)

(define (AbFilePath.jnew_1 _aPath)
  (define this (new AbFilePath% [jclass "AbFilePath"]))
    (let ([_pathData JR.null][_abPathUtil JR.null])
      (let/ec jreturn
        (void)
        (set! _pathData (AbPathData.jm_getInstance_0))
        (set! _abPathUtil (PathUtil.jm_getInstance_0))
        (set-field! f_schema this (send this jm_getSchema_1 _aPath))
        (send this jm_setName_1 (send _pathData jm_getNameFromPath_1 _aPath))
        (send this jm_setPath_1 (send _abPathUtil jm_adjust_1 (send this jm_getPathFromPath_1 (JR.toString (send _abPathUtil jm_removeNameFromPath_1 _aPath)))))))
  this)



