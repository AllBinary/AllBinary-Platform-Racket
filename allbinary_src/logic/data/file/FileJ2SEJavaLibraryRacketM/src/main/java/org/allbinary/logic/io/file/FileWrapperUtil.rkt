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
  "../../../../../java/io/File.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_putSE_4)])
(lazy-require ["./AbFile.rkt" (AbFile.jnew_1 AbFile.jstatic_NULL_FILE)])
(provide (all-defined-out))

(define FileWrapperUtil%
  (class JObject%
    (super-new)))
(define (FileWrapperUtil.jclassValue) FileWrapperUtil%)

(define (FileWrapperUtil.jnew_0)
  (define this (new FileWrapperUtil% [jclass "FileWrapperUtil"]))
  this)

(define (FileWrapperUtil.jm_wrapFiles_1 _files)
    (let ([_abFileArray JR.null][_index JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (PreLogUtil.jm_putSE_4 "Exception Wrapping Files" "FileWrapperUtil" "wrapFiles" _e)
            (jreturn (JR.newArray JR.null 0)))])
            (set! _abFileArray (JR.newArray JR.null (vector-length _files)))
            (begin
                (set! _index (JR.i32 (- (vector-length _files) 1)))
                (let/ec jbreak (let jloop () (when (>= _index 0)
                    (let/ec jcontinue
                (vector-set! _abFileArray _index (AbFile.jnew_1 (vector-ref _files _index))))
                    (set! _index (JR.i32 (- _index 1))) (jloop)))))
            (jreturn _abFileArray)))))

(define (FileWrapperUtil.jm_wrapFile_1 _file)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (PreLogUtil.jm_putSE_4 "Exception Wrapping File" "FileWrapperUtil" "wrapFile" _e)
            (jreturn (AbFile.jstatic_NULL_FILE)))])
            (jreturn (AbFile.jnew_1 _file))))))



