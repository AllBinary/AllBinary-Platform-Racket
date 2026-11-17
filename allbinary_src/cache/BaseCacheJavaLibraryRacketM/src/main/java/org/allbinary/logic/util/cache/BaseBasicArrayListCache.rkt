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
;; package org.allbinary.logic.util.cache

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define BaseBasicArrayListCache%
  (class JObject%
    (super-new)
    (field [f_list JR.null])
    (define/public (jm_log_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "S: ")
        (send _stringBuffer jm_appendint_1 (send (get-field f_list this) jm_size_0))
        (jreturn (send _stringBuffer jm_toString_0)))))))

(define (BaseBasicArrayListCache.jnew_0)
  (define this (new BaseBasicArrayListCache% [jclass "BaseBasicArrayListCache"]))
    (set-field! f_list this (BasicArrayListD.jnew_0))
  this)



