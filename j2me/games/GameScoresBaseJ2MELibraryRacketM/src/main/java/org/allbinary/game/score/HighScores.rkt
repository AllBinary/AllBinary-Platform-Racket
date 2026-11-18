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
;; package org.allbinary.game.score

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./HighScoresInterface.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define HighScores%
  (class JObject%
    (super-new)
    (field [f_orderedHighScoresList JR.null])
    (field [f_name JR.null])
    (field [f_heading JR.null])
    (field [f_columnOneHeading JR.null])
    (field [f_columnTwoHeading JR.null])
    (define/public (jm_setList_1 _orderedHighScoresList)
    (let ()
      (let/ec jreturn
        (set-field! f_orderedHighScoresList this _orderedHighScoresList))))
    (define/public (jm_getList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_orderedHighScoresList this)))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))
    (define/public (jm_getTotal_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (send this jm_getList_0) jm_size_0)))))
    (define/public (jm_addHighScore_1 _newHighScore)
    (let ()
      (let/ec jreturn
        (send (get-field f_orderedHighScoresList this) jm_add_1 _newHighScore))))
    (define/public (jm_getHeading_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_heading this)))))
    (define/public (jm_getColumnOneHeading_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_columnOneHeading this)))))
    (define/public (jm_getColumnTwoHeading_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_columnTwoHeading this)))))
    (define/public (jm_isBestScore_1 _newHighScore)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "HighScores: ")
        (send _stringBuffer jm_append_1 (get-field f_heading this))
        (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
        (send _stringBuffer jm_append_1 (get-field f_TOTAL_LABEL (CommonLabels.jm_getInstance_0)))
        (send _stringBuffer jm_appendint_1 (send (get-field f_orderedHighScoresList this) jm_size_0))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (HighScores.jclassValue) HighScores%)

(define (HighScores.jnew_3 _name _heading _columnTwoHeading)
  (define this (new HighScores% [jclass "HighScores"]))
    (set-field! f_orderedHighScoresList this (BasicArrayListD.jnew_0))
    
    
    (set-field! f_columnOneHeading this "Name")
    
    (let ()
      (let/ec jreturn
        (set-field! f_name this _name)
        (set-field! f_heading this _heading)
        (set-field! f_columnTwoHeading this _columnTwoHeading)))
  this)



