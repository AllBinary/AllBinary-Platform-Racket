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
  "../../../../../../java/io/InputStreamReader.rkt")
(lazy-require ["../../../../../../org/allbinary/data/resource/ResourceUtil.rkt" (ResourceUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define PartnerIdentifierFileUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_FILE_NAME JR.null])
    (define/public (jm_get_0)
    (let ([_resourceUtil JR.null][_inputStream JR.null][_inputStreamReader JR.null][_chars JR.null][_size JR.null][_partnerString JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_GET _commonStrings) _e)
            (jreturn (get-field f_NULL_STRING (StringUtil.jm_getInstance_0))))])
            (set! _resourceUtil (ResourceUtil.jm_getInstance_0))
            (set! _inputStream (send _resourceUtil jm_getResourceAsStream_1 (get-field f_FILE_NAME this)))
            (set! _inputStreamReader (InputStreamReader.jnew_1 _inputStream))
            (set! _chars (JR.newArray 0 30))
            (set! _size (send _inputStreamReader jm_read_1 _chars))
            (set! _partnerString (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
            (when (> _size 0)
                (begin
                (set! _partnerString (JR.fromChars _chars 0 _size))))
            (send _inputStreamReader jm_close_0)
            (jreturn _partnerString)))))))
(define (PartnerIdentifierFileUtil.jclassValue) PartnerIdentifierFileUtil%)

(define PartnerIdentifierFileUtil.jcell_instance 'jnone)
(define (PartnerIdentifierFileUtil.jstatic_instance)
  (when (eq? PartnerIdentifierFileUtil.jcell_instance 'jnone) (set! PartnerIdentifierFileUtil.jcell_instance (PartnerIdentifierFileUtil.jnew_0)))
  PartnerIdentifierFileUtil.jcell_instance)
(define (PartnerIdentifierFileUtil.jsetstatic_instance value) (set! PartnerIdentifierFileUtil.jcell_instance value))

(define (PartnerIdentifierFileUtil.jnew_0)
  (define this (new PartnerIdentifierFileUtil% [jclass "PartnerIdentifierFileUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_FILE_NAME this "partner.txt")
  this)

(define (PartnerIdentifierFileUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PartnerIdentifierFileUtil.jstatic_instance)))))



