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
  "../../../../../java/io/File.rkt"
  "../../../../../java/io/FileFilter.rkt"
  "../../../../../java/io/FilenameFilter.rkt"
  "../../../../../java/io/IOException.rkt"
  "../../../../../java/net/URI.rkt"
  "./AbFileInterface.rkt")
(lazy-require ["../../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/io/path/AbPath.rkt" (AbPath.jnew_2)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define AbFile%
  (class JObject%
    (super-new)
    (field [f_file JR.null])
    (define/public (jm_getFile_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_file this)))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_getName_0)))))
    (define/public (jm_getParent_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_getParent_0)))))
    (define/public (jm_getParentFile_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_getParentFile_0)))))
    (define/public (jm_getPath_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_getPath_0)))))
    (define/public (jm_isAbsolute_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_isAbsolute_0)))))
    (define/public (jm_getAbsolutePath_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_getAbsolutePath_0)))))
    (define/public (jm_getAbsoluteFile_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_getAbsoluteFile_0)))))
    (define/public (jm_getCanonicalPath_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_getCanonicalPath_0)))))
    (define/public (jm_getCanonicalFile_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_getCanonicalFile_0)))))
    (define/public (jm_toURI_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_toURI_0)))))
    (define/public (jm_canRead_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_canRead_0)))))
    (define/public (jm_canWrite_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_canWrite_0)))))
    (define/public (jm_exists_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_exists_0)))))
    (define/public (jm_isDirectory_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_isDirectory_0)))))
    (define/public (jm_isFile_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_isFile_0)))))
    (define/public (jm_isHidden_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_isHidden_0)))))
    (define/public (jm_lastModified_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_lastModified_0)))))
    (define/public (jm_length_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_length_0)))))
    (define/public (jm_createNewFile_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_createNewFile_0)))))
    (define/public (jm_delete_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_delete_0)))))
    (define/public (jm_deleteOnExit_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_file this) jm_deleteOnExit_0))))
    (define/public (jm_list_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_list_0)))))
    (define/public (jm_listWithFilter_1 _filter)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_list_1 _filter)))))
    (define/public (jm_listFiles_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_listFiles_0)))))
    (define/public (jm_listFilesFileNameFilter_1 _filter)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_listFiles_1 _filter)))))
    (define/public (jm_listFilesFileFilter_1 _filter)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_listFiles_1 _filter)))))
    (define/public (jm_mkdir_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_mkdir_0)))))
    (define/public (jm_mkdirs_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_mkdirs_0)))))
    (define/public (jm_renameTo_1 _dest)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_renameTo_1 (send _dest jm_getFile_0))))))
    (define/public (jm_setLastModified_1 _time)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_setLastModified_1 _time)))))
    (define/public (jm_setReadOnly_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_setReadOnly_0)))))
    (define/public (jm_setWritable_2 _writable _ownerOnly)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_setExecutable_2 _writable _ownerOnly)))))
    (define/public (jm_setWritable_1 _writable)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_setWritable_1 _writable)))))
    (define/public (jm_setReadable_2 _readable _ownerOnly)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_setReadable_2 _readable _ownerOnly)))))
    (define/public (jm_setReadable_1 _readable)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_setReadable_1 _readable)))))
    (define/public (jm_setExecutable_2 _executable _ownerOnly)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_setExecutable_2 _executable _ownerOnly)))))
    (define/public (jm_setExecutable_1 _executable)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_setExecutable_1 _executable)))))
    (define/public (jm_canExecute_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_canExecute_0)))))
    (define/public (jm_getTotalSpace_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_getTotalSpace_0)))))
    (define/public (jm_getFreeSpace_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_getFreeSpace_0)))))
    (define/public (jm_getUsableSpace_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_getUsableSpace_0)))))
    (define/public (jm_compareTo_1 _pathname)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_compareTo_1 _pathname)))))
    (define/override (jm_equals_1 _obj)
    (let ()
      (let/ec jreturn
        (jreturn (send (TsUtil.jm_getInstance_0) jm_equalsNotstring_2 (get-field f_file this) _obj)))))
    (define/override (jm_hashCode_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_hashCode_0)))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_file this) jm_toString_0)))))))
(define (AbFile.jclassValue) AbFile%)

(define AbFile.jcell_NULL_FILE 'jnone)
(define (AbFile.jstatic_NULL_FILE)
  (when (eq? AbFile.jcell_NULL_FILE 'jnone) (set! AbFile.jcell_NULL_FILE (AbFile.jm_createAbFileFromRawPath_1 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))))
  AbFile.jcell_NULL_FILE)
(define (AbFile.jsetstatic_NULL_FILE value) (set! AbFile.jcell_NULL_FILE value))

(define (AbFile.jnew_1 _file)
  (define this (new AbFile% [jclass "AbFile"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_file this _file)))
  this)

(define (AbFile.jm_createAbFileWithChild_2 _file _childPathName)
    (let ()
      (let/ec jreturn
        (jreturn (AbFile.jnew_1 (File.jnew_2 (send _file jm_getFile_0) _childPathName))))))

(define (AbFile.jm_createAbFile_1 _filePath)
    (let ()
      (let/ec jreturn
        (jreturn (AbFile.jnew_1 (File.jnew_1 (send (AbPath.jnew_2 _filePath (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))) jm_toFileSystemString_0)))))))

(define (AbFile.jm_createAbFilePathAndName_2 _filePath _fileName)
    (let ()
      (let/ec jreturn
        (jreturn (AbFile.jnew_1 (File.jnew_2 (send (AbPath.jnew_2 _filePath (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))) jm_toFileSystemString_0) _fileName))))))

(define (AbFile.jm_createAbFileFromAbPath_1 _abPath)
    (let ()
      (let/ec jreturn
        (jreturn (AbFile.jnew_1 (File.jnew_1 (send _abPath jm_toFileSystemString_0)))))))

(define (AbFile.jm_createAbFileFromRawPath_1 _filePath)
    (let ()
      (let/ec jreturn
        (jreturn (AbFile.jnew_1 (File.jnew_1 _filePath))))))



