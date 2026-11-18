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
;; package org.allbinary.game.configuration.feature

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define InGameFeatureChoiceGroups%
  (class JObject%
    (super-new)
    (field [f_hashtable JR.null])
    (define/public (jm_get_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_hashtable this)))))
    (define/public (jm_add_2 _name _list)
    (let ()
      (let/ec jreturn
        (send (get-field f_hashtable this) jm_put_2 _name _list))))))
(define (InGameFeatureChoiceGroups.jclassValue) InGameFeatureChoiceGroups%)

(define InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive 'jnone)
(define (InGameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsExclusive)
  (when (eq? InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive 'jnone) (set! InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive (InGameFeatureChoiceGroups.jnew_0)))
  InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive)
(define (InGameFeatureChoiceGroups.jsetstatic_gameFeatureChoiceGroupsExclusive value) (set! InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive value))

(define InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple 'jnone)
(define (InGameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsMultiple)
  (when (eq? InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple 'jnone) (set! InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple (InGameFeatureChoiceGroups.jnew_0)))
  InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple)
(define (InGameFeatureChoiceGroups.jsetstatic_gameFeatureChoiceGroupsMultiple value) (set! InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple value))

(define (InGameFeatureChoiceGroups.jnew_0)
  (define this (new InGameFeatureChoiceGroups% [jclass "InGameFeatureChoiceGroups"]))
    (set-field! f_hashtable this (send (StdUtil.jm_getInstance_0) jm_createHashtable_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (InGameFeatureChoiceGroups.jm_getExclusiveInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (InGameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsExclusive)))))

(define (InGameFeatureChoiceGroups.jm_getMultipleInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (InGameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsMultiple)))))



