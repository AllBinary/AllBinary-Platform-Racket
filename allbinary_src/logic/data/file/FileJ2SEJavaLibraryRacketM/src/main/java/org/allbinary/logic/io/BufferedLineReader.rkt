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
  "../../../../java/io/FileReader.rkt")
(lazy-require ["../../../../org/allbinary/logic/io/file/AbFileNativeUtil.rkt" (AbFileNativeUtil.jm_get_1)])
(provide (all-defined-out))

(define BufferedLineReader%
  (class JObject%
    (super-new)
    (field [f_tmpIn JR.null])
    (define/public (jm_readUpToLines_1 _readAheadIndex)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_readLine_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_tmpIn this) jm_readLine_0)))))
    (define/public (jm_ready_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_tmpIn this) jm_ready_0)))))
    (define/public (jm_getSize_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_getCurrent_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))))
(define (BufferedLineReader.jclassValue) BufferedLineReader%)

(define (BufferedLineReader.jnew_1 _file)
  (define this (new BufferedLineReader% [jclass "BufferedLineReader"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_tmpIn this (BufferedReader.jnew_1 (FileReader.jnew_1 (AbFileNativeUtil.jm_get_1 _file))))))
  this)



