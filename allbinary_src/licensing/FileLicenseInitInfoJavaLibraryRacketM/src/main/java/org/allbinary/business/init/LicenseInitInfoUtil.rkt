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
;; package org.allbinary.business.init

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/globals/PATH_GLOBALS.rkt" (PATH_GLOBALS.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/globals/URLGLOBALS.rkt" (URLGLOBALS.jm_getMainPath_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/io/AbDataInputStream.rkt" (AbDataInputStream.jnew_1)])
(lazy-require ["../../../../org/allbinary/logic/io/DataOutputStreamFactory.rkt" (DataOutputStreamFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/io/FileStreamFactory.rkt" (FileStreamFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/system/security/crypt/DatabaseEncoder.rkt" (DatabaseEncoder.jm_encode_1 DatabaseEncoder.jm_decode_1)])
(lazy-require ["../../../../org/allbinary/logic/system/security/crypt/WeakCrypt.rkt" (WeakCrypt.jnew_1)])
(lazy-require ["../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["./LicenseInitInfo.rkt" (LicenseInitInfo.jnew_0)])
(provide (all-defined-out))

(define LicenseInitInfoUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_stringUtil JR.null])
    (field [f_INITFILENAME JR.null])
    (field [f_ABOUT JR.null])
    (field [f_PRIVACY_POLICY JR.null])
    (field [f_filePath JR.null])
    (define/public (jm_setFilePath_1 _filePath)
    (let ()
      (let/ec jreturn
        (set-field! f_filePath this _filePath))))
    (define/public (jm_write_1 _initData)
    (let ([_tsUtil JR.null][_dataOutputStream JR.null][_licenseIdCrypted JR.null][_numberOfLicenseServers JR.null][_licenseServerCrypted JR.null][_index JR.null])
      (let/ec jreturn
        (when (eq? (get-field f_filePath this) (get-field f_EMPTY_STRING (get-field f_stringUtil this)))
            (begin
            (set-field! f_filePath this (JR.concat (URLGLOBALS.jm_getMainPath_0) (get-field f_INIT_PATH (PATH_GLOBALS.jm_getInstance_0))))))
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (JR.concat "Command Failed: " (get-field f_INITFILENAME this)) this "write" _e)
            (send (FileStreamFactory.jm_getInstance_0) jm_delete_2 (get-field f_filePath this) (get-field f_INITFILENAME this))
            (raise _e))])
            (set! _tsUtil (TsUtil.jm_getInstance_0))
            (set! _dataOutputStream (send (DataOutputStreamFactory.jm_getInstance_0) jm_getInstance_2 (get-field f_filePath this) (get-field f_INITFILENAME this)))
            (set! _licenseIdCrypted (send _tsUtil jm_getByteArray_1 (send (WeakCrypt.jnew_1 1) jm_encrypt_1 (send _initData jm_getLicenseId_0))))
            (send _dataOutputStream jm_writeUTF_1 (DatabaseEncoder.jm_encode_1 _licenseIdCrypted))
            (set! _numberOfLicenseServers (send _initData jm_getNumberOfServers_0))
            (send _dataOutputStream jm_writeInt_1 _numberOfLicenseServers)
            (set! _licenseServerCrypted JR.null)
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index _numberOfLicenseServers)
                    (let/ec jcontinue
                (set! _licenseServerCrypted (send _tsUtil jm_getByteArray_1 (send (WeakCrypt.jnew_1 3) jm_encrypt_1 (send _initData jm_getServer_1 _index))))
                (send _dataOutputStream jm_writeUTF_1 (DatabaseEncoder.jm_encode_1 _licenseServerCrypted)))
                    (set! _index (JR.i32 (+ _index 1))) (jloop)))))))))
    (define/public (jm_read_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_readAgain_1 0)))))
    (define/public (jm_readAgain_1 _initializeCounter)
    (let ([_METHOD_NAME JR.null][_fileStreamFactory JR.null][_iFile JR.null][_iData JR.null][_initInfo JR.null][_decodedByteArray JR.null][_licenseIdDecoded JR.null][_numberOfLicenseServers JR.null][_NEXT_FILE JR.null][_licenseServerDecoded JR.null][_index JR.null])
      (let/ec jreturn
        (set! _METHOD_NAME "readAgain")
        (when (eq? (get-field f_filePath this) (get-field f_EMPTY_STRING (get-field f_stringUtil this)))
            (begin
            (set-field! f_filePath this (JR.concat (URLGLOBALS.jm_getMainPath_0) (get-field f_INIT_PATH (PATH_GLOBALS.jm_getInstance_0))))))
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (with-handlers ([(lambda (jerror) #t) (lambda (_e2)
                (send (get-field f_logUtil this) jm_put_4 (JR.concat "LicenseInitInfo Read Retry: " (get-field f_INITFILENAME this)) this "readAgain()" _e2))])
                (send (get-field f_logUtil this) jm_put_4 (JR.concat "Command Failed: " (get-field f_INITFILENAME this)) this _METHOD_NAME _e))
            (raise (JR.newException "Exception" (JR.concat "LicenseInitInfo Read Error: " (get-field f_INITFILENAME this)))))])
            (send (get-field f_logUtil this) jm_putF_3 (JR.concat "LicenseInitInfo File: " (get-field f_INITFILENAME this)) this _METHOD_NAME)
            (set! _fileStreamFactory (FileStreamFactory.jm_getInstance_0))
            (set! _iFile (send _fileStreamFactory jm_getFileInputStreamInstance_2 (get-field f_filePath this) (get-field f_INITFILENAME this)))
            (if (not (JR.null? _iFile))
                (begin
                (set! _iData (AbDataInputStream.jnew_1 _iFile))
                (set! _initInfo (LicenseInitInfo.jnew_0))
                (set! _decodedByteArray (DatabaseEncoder.jm_decode_1 (send _iData jm_readUTF_0)))
                (set! _licenseIdDecoded _decodedByteArray)
                (send _initInfo jm_setLicenseId_1 (send (WeakCrypt.jnew_1 1) jm_decrypt_1 _licenseIdDecoded))
                (set! _numberOfLicenseServers (send _iData jm_readInt_0))
                (set! _NEXT_FILE (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_NEXT (CommonLabels.jm_getInstance_0))) jm_append_1 " License Server From File: ") jm_toString_0))
                (set! _licenseServerDecoded JR.null)
                (begin
                    (set! _index 0)
                    (let/ec jbreak (let jloop () (when (< _index _numberOfLicenseServers)
                        (let/ec jcontinue
                    (set! _decodedByteArray (DatabaseEncoder.jm_decode_1 (send _iData jm_readUTF_0)))
                    (set! _licenseServerDecoded _decodedByteArray)
                    (send _initInfo jm_setServer_2 (send (WeakCrypt.jnew_1 3) jm_decrypt_1 _licenseServerDecoded) _index)
                    (send (get-field f_logUtil this) jm_putF_3 (JR.concat _NEXT_FILE (send _initInfo jm_getServer_1 _index)) this _METHOD_NAME))
                        (set! _index (JR.i32 (+ _index 1))) (jloop)))))
                (jreturn _initInfo))
                (begin
                (raise (JR.newException "Exception" (JR.concat "Could Not Load License InitInfo: " (get-field f_INITFILENAME this))))))))))
    (define/public (jm_getFilePath_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_filePath this)))))))
(define (LicenseInitInfoUtil.jclassValue) LicenseInitInfoUtil%)

(define LicenseInitInfoUtil.jcell_instance 'jnone)
(define (LicenseInitInfoUtil.jstatic_instance)
  (when (eq? LicenseInitInfoUtil.jcell_instance 'jnone) (set! LicenseInitInfoUtil.jcell_instance (LicenseInitInfoUtil.jnew_0)))
  LicenseInitInfoUtil.jcell_instance)
(define (LicenseInitInfoUtil.jsetstatic_instance value) (set! LicenseInitInfoUtil.jcell_instance value))

(define (LicenseInitInfoUtil.jnew_0)
  (define this (new LicenseInitInfoUtil% [jclass "LicenseInitInfoUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_stringUtil this (StringUtil.jm_getInstance_0))
    (set-field! f_INITFILENAME this "licenseinitdata.dat")
    (set-field! f_ABOUT this "about")
    (set-field! f_PRIVACY_POLICY this "privacy_policy")
    (set-field! f_filePath this (get-field f_EMPTY_STRING (get-field f_stringUtil this)))
  this)

(define (LicenseInitInfoUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LicenseInitInfoUtil.jstatic_instance)))))



