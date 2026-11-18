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
;; package org.allbinary.game.input.mapping

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["./InputToGameKeyMapping.rkt" (InputToGameKeyMapping.jm_getNullInstance_0)])
(provide (all-defined-out))

(define InputMapping%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_hashtable JR.null])
    (field [f_mappedList JR.null])
    (define/public (jm_getTotalMapped_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_hashtable this) jm_size_0)))))
    (define/public (jm_isDefaultNew_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_getDefault_0)
    (let ()
      (let/ec jreturn
        (jreturn (InputToGameKeyMapping.jm_getNullInstance_0)))))
    (define/public (jm_removeAll_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_hashtable this) jm_clear_0)
        (send (get-field f_mappedList this) jm_clear_0))))
    (define/public (jm_remove_2 _input _mappedToInput)
    (let ([_stringBuffer JR.null][_stringUtil JR.null][_list JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _stringUtil (StringUtil.jm_getInstance_0))
        (send _stringBuffer jm_append_1 (get-field f_START_LABEL (CommonLabels.jm_getInstance_0)))
        (send _stringBuffer jm_append_1 (send _stringUtil jm_toString_1 _input))
        (send _stringBuffer jm_append_1 " == ")
        (send _stringBuffer jm_append_1 (send _stringUtil jm_toString_1 _mappedToInput))
        (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this "InputMapping::remove")
        (set! _list (send this jm_getMappedInput_1 _input))
        (if (send _list jm_contains_1 _mappedToInput)
            (begin
            (send _list jm_remove_1 _mappedToInput)
            (send (get-field f_mappedList this) jm_remove_1 _mappedToInput)
            (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
            (send _stringBuffer jm_append_1 "Removed: ")
            (send _stringBuffer jm_append_1 (send _stringUtil jm_toString_1 _input))
            (send _stringBuffer jm_append_1 " == ")
            (send _stringBuffer jm_append_1 (send _stringUtil jm_toString_1 _mappedToInput))
            (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this "InputMapping::remove"))
            (begin
            (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
            (send _stringBuffer jm_append_1 "Not Deleted: ")
            (send _stringBuffer jm_append_1 (send _stringUtil jm_toString_1 _input))
            (send _stringBuffer jm_append_1 " == ")
            (send _stringBuffer jm_append_1 (send _stringUtil jm_toString_1 _mappedToInput))
            (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this "InputMapping::remove"))))))
    (define/public (jm_addMapping_1 _inputToGameKeyMapping)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_add_2 _input _mappedToInput)
    (let ([_list JR.null])
      (let/ec jreturn
        (set! _list (send this jm_getMappedInput_1 _input))
        (when (not (send _list jm_contains_1 _mappedToInput))
            (begin
            (send _list jm_add_1 _mappedToInput)
            (send (get-field f_mappedList this) jm_add_1 _mappedToInput))))))
    (define/public (jm_isMapped_1 _input)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_mappedList this) jm_contains_1 _input)))))
    (define/public (jm_getMappedInput_1 _id)
    (let ([_mappingInputCanBeNullList JR.null][_list JR.null])
      (let/ec jreturn
        (set! _mappingInputCanBeNullList (send (get-field f_hashtable this) jm_get_1 _id))
        (when (JR.null? _mappingInputCanBeNullList)
            (begin
            (set! _list (BasicArrayListD.jnew_0))
            (send (get-field f_hashtable this) jm_put_2 _id _list)
            (jreturn _list)))
        (jreturn _mappingInputCanBeNullList))))
    (define/public (jm_getHashtable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_hashtable this)))))))
(define (InputMapping.jclassValue) InputMapping%)

(define (InputMapping.jnew_0)
  (define this (new InputMapping% [jclass "InputMapping"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_hashtable this (send (StdUtil.jm_getInstance_0) jm_createHashtable_0))
    (set-field! f_mappedList this (BasicArrayListD.jnew_0))
    (let ()
      (let/ec jreturn (void)))
  this)



