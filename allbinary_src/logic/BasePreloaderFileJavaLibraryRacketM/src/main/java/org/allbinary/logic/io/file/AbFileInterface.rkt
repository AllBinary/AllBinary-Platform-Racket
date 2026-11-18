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
  "../../../../../java/io/FilenameFilter.rkt"
  "../../../../../java/io/IOException.rkt"
  "../../../../../java/net/URI.rkt")
(provide (all-defined-out))

(define AbFileInterface%
  (class JObject%
    (super-new)
    (define/public (jm_canRead_0)
      (raise (JR.newException "AbstractMethodError" "canRead")))
    (define/public (jm_canWrite_0)
      (raise (JR.newException "AbstractMethodError" "canWrite")))
    (define/public (jm_createNewFile_0)
      (raise (JR.newException "AbstractMethodError" "createNewFile")))
    (define/public (jm_delete_0)
      (raise (JR.newException "AbstractMethodError" "delete")))
    (define/public (jm_deleteOnExit_0)
      (raise (JR.newException "AbstractMethodError" "deleteOnExit")))
    (define/public (jm_exists_0)
      (raise (JR.newException "AbstractMethodError" "exists")))
    (define/public (jm_getAbsolutePath_0)
      (raise (JR.newException "AbstractMethodError" "getAbsolutePath")))
    (define/public (jm_getCanonicalPath_0)
      (raise (JR.newException "AbstractMethodError" "getCanonicalPath")))
    (define/public (jm_getParent_0)
      (raise (JR.newException "AbstractMethodError" "getParent")))
    (define/public (jm_getPath_0)
      (raise (JR.newException "AbstractMethodError" "getPath")))
    (define/public (jm_isAbsolute_0)
      (raise (JR.newException "AbstractMethodError" "isAbsolute")))
    (define/public (jm_isDirectory_0)
      (raise (JR.newException "AbstractMethodError" "isDirectory")))
    (define/public (jm_isFile_0)
      (raise (JR.newException "AbstractMethodError" "isFile")))
    (define/public (jm_isHidden_0)
      (raise (JR.newException "AbstractMethodError" "isHidden")))
    (define/public (jm_lastModified_0)
      (raise (JR.newException "AbstractMethodError" "lastModified")))
    (define/public (jm_length_0)
      (raise (JR.newException "AbstractMethodError" "length")))
    (define/public (jm_list_0)
      (raise (JR.newException "AbstractMethodError" "list")))
    (define/public (jm_listWithFilter_1 _filter)
      (raise (JR.newException "AbstractMethodError" "listWithFilter")))
    (define/public (jm_mkdir_0)
      (raise (JR.newException "AbstractMethodError" "mkdir")))
    (define/public (jm_mkdirs_0)
      (raise (JR.newException "AbstractMethodError" "mkdirs")))
    (define/public (jm_setLastModified_1 _time)
      (raise (JR.newException "AbstractMethodError" "setLastModified")))
    (define/public (jm_setReadOnly_0)
      (raise (JR.newException "AbstractMethodError" "setReadOnly")))
    (define/override (jm_toString_0)
      (raise (JR.newException "AbstractMethodError" "toString")))
    (define/public (jm_toURI_0)
      (raise (JR.newException "AbstractMethodError" "toURI")))))
(define (AbFileInterface.jclassValue) AbFileInterface%)

(define (AbFileInterface.jnew_0)
  (define this (new AbFileInterface% [jclass "AbFileInterface"]))
  this)



