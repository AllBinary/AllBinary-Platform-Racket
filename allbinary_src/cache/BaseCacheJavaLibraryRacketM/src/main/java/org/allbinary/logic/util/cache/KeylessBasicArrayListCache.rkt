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
  "../../../../../allbinary_java.rkt"
  "./IndexedBasicArrayListCache.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define KeylessBasicArrayListCache%
  (class IndexedBasicArrayListCache%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_basicArrayListUtil JR.null])
    (define/public (jm_get_0)
    (let ([_list JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_GET (get-field f_commonStrings this)) _e)
            (jreturn (send (get-field f_basicArrayListUtil this) jm_getImmutableInstance_0)))])
            (when (>= (get-field f_index this) (send (get-field f_list this) jm_size_0))
                (begin
                (send this jm_addDefault_0)))
            (set! _list (send this jm_getAt_1 (let ([jvalue (get-field f_index this)]) (set-field! f_index this (JR.i32 (+ (get-field f_index this) 1))) jvalue)))
            (jreturn _list)))))
    (define/override (jm_clear_0)
    (let ([_basicArrayList JR.null][_index JR.null])
      (let/ec jreturn
        (super jm_clear_0)
        (set! _basicArrayList JR.null)
        (begin
            (set! _index (JR.i32 (- (send (get-field f_list this) jm_size_0) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _basicArrayList (vector-ref (get-field f_objectArray (get-field f_list this)) _index))
            (send _basicArrayList jm_clear_0))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))
    (define/override (jm_log_0)
    (let ([_stringBuffer JR.null][_S_LABEL JR.null][_basicArrayList JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "S: ")
        (send _stringBuffer jm_appendint_1 (send (get-field f_list this) jm_size_0))
        (set! _S_LABEL " s: ")
        (set! _basicArrayList JR.null)
        (begin
            (set! _index (JR.i32 (- (send (get-field f_list this) jm_size_0) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (send _stringBuffer jm_append_1 _S_LABEL)
            (set! _basicArrayList (vector-ref (get-field f_objectArray (get-field f_list this)) _index))
            (send _stringBuffer jm_appendint_1 (send _basicArrayList jm_size_0)))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (KeylessBasicArrayListCache.jclassValue) KeylessBasicArrayListCache%)

(define (KeylessBasicArrayListCache.jnew_0)
  (define this (new KeylessBasicArrayListCache% [jclass "KeylessBasicArrayListCache"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_basicArrayListUtil this (BasicArrayListUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)



