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
;; package org.allbinary.globals

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/io/path/AbPathData.rkt" (AbPathData.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define PATH_GLOBALS%
  (class JObject%
    (super-new)
    (field [f_DATA_PATH JR.null])
    (field [f_INIT_PATH JR.null])
    (field [f_VIEWS_PATH JR.null])
    (field [f_LOG_PATH JR.null])
    (field [f_BACKUP_PATH JR.null])))
(define (PATH_GLOBALS.jclassValue) PATH_GLOBALS%)

(define PATH_GLOBALS.jcell_instance 'jnone)
(define (PATH_GLOBALS.jstatic_instance)
  (when (eq? PATH_GLOBALS.jcell_instance 'jnone) (set! PATH_GLOBALS.jcell_instance (PATH_GLOBALS.jnew_0)))
  PATH_GLOBALS.jcell_instance)
(define (PATH_GLOBALS.jsetstatic_instance value) (set! PATH_GLOBALS.jcell_instance value))

(define (PATH_GLOBALS.jnew_0)
  (define this (new PATH_GLOBALS% [jclass "PATH_GLOBALS"]))
    
    
    
    
    
    (let ([_stringBuffer JR.null][_abPathData JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _abPathData (AbPathData.jm_getInstance_0))
        (send _stringBuffer jm_append_1 "data")
        (send _stringBuffer jm_append_1 (get-field f_SEPARATOR _abPathData))
        (set-field! f_DATA_PATH this (send _stringBuffer jm_toString_0))
        (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
        (send _stringBuffer jm_append_1 (get-field f_DATA_PATH this))
        (send _stringBuffer jm_append_1 (get-field f_INIT (CommonStrings.jm_getInstance_0)))
        (send _stringBuffer jm_append_1 (get-field f_SEPARATOR _abPathData))
        (set-field! f_INIT_PATH this (send _stringBuffer jm_toString_0))
        (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
        (send _stringBuffer jm_append_1 (get-field f_DATA_PATH this))
        (send _stringBuffer jm_append_1 "log")
        (send _stringBuffer jm_append_1 (get-field f_SEPARATOR _abPathData))
        (set-field! f_LOG_PATH this (send _stringBuffer jm_toString_0))
        (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
        (send _stringBuffer jm_append_1 (get-field f_DATA_PATH this))
        (send _stringBuffer jm_append_1 "backup")
        (send _stringBuffer jm_append_1 (get-field f_SEPARATOR _abPathData))
        (set-field! f_BACKUP_PATH this (send _stringBuffer jm_toString_0))
        (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
        (send _stringBuffer jm_append_1 (get-field f_INIT_PATH this))
        (send _stringBuffer jm_append_1 "views")
        (send _stringBuffer jm_append_1 (get-field f_SEPARATOR _abPathData))
        (set-field! f_VIEWS_PATH this (send _stringBuffer jm_toString_0))))
  this)

(define (PATH_GLOBALS.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PATH_GLOBALS.jstatic_instance)))))



