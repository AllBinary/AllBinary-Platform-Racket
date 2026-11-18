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
;; package org.allbinary.logic.system.security.licensing

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../java/io/InputStream.rkt"
  "../../../../../../java/io/OutputStream.rkt")
(lazy-require ["../../../../../../org/allbinary/business/init/LicenseInitInfoUtil.rkt" (LicenseInitInfoUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/data/resource/ResourceUtil.rkt" (ResourceUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/io/FileStreamFactory.rkt" (FileStreamFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/io/StreamUtil.rkt" (StreamUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/io/file/FileFactory.rkt" (FileFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/io/file/SimpleFileUtil.rkt" (SimpleFileUtil.jm_nullOutputStream_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define LicenseServerInitFileUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_NULL_OUTPUT_STREAM JR.null])
    (define/public (jm_init_0)
    (let ([_filePath JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_INIT (get-field f_commonStrings this)) _e))])
            (set! _filePath (get-field f_INITFILENAME (LicenseInitInfoUtil.jm_getInstance_0)))
            (send (LicenseInitInfoUtil.jm_getInstance_0) jm_setFilePath_1 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
            (if (send (FileFactory.jm_getInstance_0) jm_isFile_1 _filePath)
                (begin
                (send (get-field f_logUtil this) jm_putF_3 "Using Existing License File" this (get-field f_INIT (get-field f_commonStrings this))))
                (begin
                (send this jm_write_0)))))))
    (define/public (jm_write_0)
    (let ([_fileOutputStream JR.null][_resourceUtil JR.null][_filePath JR.null][_inputStream JR.null][_fileStreamFactory JR.null][_b JR.null][_index JR.null])
      (let/ec jreturn
        (set! _fileOutputStream (get-field f_NULL_OUTPUT_STREAM this))
        (dynamic-wind void (lambda () (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_INIT (get-field f_commonStrings this)) _e))])
            (set! _resourceUtil (ResourceUtil.jm_getInstance_0))
            (set! _filePath (get-field f_INITFILENAME (LicenseInitInfoUtil.jm_getInstance_0)))
            (set! _inputStream (send _resourceUtil jm_getResourceAsStream_1 _filePath))
            (send (get-field f_logUtil this) jm_putF_3 "Writing Default License File" this (get-field f_INIT (get-field f_commonStrings this)))
            (set! _fileStreamFactory (FileStreamFactory.jm_getInstance_0))
            (set! _fileOutputStream (send _fileStreamFactory jm_getFileOutputStreamInstance_2 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) _filePath))
            (set! _b 0)
            (set! _index 0)
            (let/ec jbreak (let jloop () (when #t
                    (let/ec jcontinue
                (set! _b (send _inputStream jm_read_0))
                (when (= _b (JR.i32 (- 1)))
                    (begin
                    (jbreak (void))))
                (send _fileOutputStream jm_write_1 _b)
                (set! _index (JR.i32 (+ _index 1)))) (jloop))))
            (send (get-field f_logUtil this) jm_putF_3 (JR.concat "Wrote Bytes: " (JR.str _index)) this (get-field f_INIT (get-field f_commonStrings this)))
            (send _fileOutputStream jm_flush_0)))
            (lambda ()
            (send (StreamUtil.jm_getInstance_0) jm_close_1 _fileOutputStream))))))))
(define (LicenseServerInitFileUtil.jclassValue) LicenseServerInitFileUtil%)

(define (LicenseServerInitFileUtil.jnew_0)
  (define this (new LicenseServerInitFileUtil% [jclass "LicenseServerInitFileUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_NULL_OUTPUT_STREAM this (SimpleFileUtil.jm_nullOutputStream_0))
  this)



