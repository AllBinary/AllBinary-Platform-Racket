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
;; package org.allbinary.game.identification

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./GroupCommonFactory.rkt" (GroupCommonFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define CompositeGroup%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_groupInterface JR.null])
    (field [f_list JR.null])
    (define/public (jm_clear_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_clear_0))))
    (define/public (jm_add_1 _groupInterface)
    (let ([_commonStrings JR.null][_groupCommonFactory JR.null][_stringBuffer JR.null])
      (let/ec jreturn
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (set! _groupCommonFactory (GroupCommonFactory.jm_getInstance_0))
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (get-field f_ADDING_LABEL _groupCommonFactory))
        (send _stringBuffer jm_append_1 (send _groupInterface jm_toString_0))
        (send _stringBuffer jm_append_1 (get-field f_TO_LABEL _groupCommonFactory))
        (send _stringBuffer jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 (get-field f_groupInterface this)))
        (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this (get-field f_ADD _commonStrings))
        (send (get-field f_list this) jm_add_1 _groupInterface))))
    (define/public (jm_isInGroup_1 _groupInterface)
    (let ()
      (let/ec jreturn
        (if (send (get-field f_list this) jm_contains_1 _groupInterface)
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_getGroup_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_groupInterface this)))))))
(define (CompositeGroup.jclassValue) CompositeGroup%)

(define (CompositeGroup.jnew_1 _groupInterface)
  (define this (new CompositeGroup% [jclass "CompositeGroup"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (let ()
      (let/ec jreturn
        (set-field! f_groupInterface this _groupInterface)))
  this)



