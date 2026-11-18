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
;; package org.allbinary.game.score.displayable

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/score/HighScoresResultsListener.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/Command.rkt" (Command.jnew_4 Command.jstatic_SCREEN)])
(lazy-require ["../../../../../org/allbinary/game/score/HighScoreNamePersistanceSingleton.rkt" (HighScoreNamePersistanceSingleton.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define HighScoreUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_highScoresFactoryInterface JR.null])
    (field [f_highScoresArray JR.null])
    (field [f_highScore JR.null])
    (field [f_abeClientInformation JR.null])
    (field [f_gameInfo JR.null])
    (field [f_highScoresHelper JR.null])
    (field [f_firstTime #f])
    (define/public (jm_setHighScoresArray_1 _highScoresArray)
    (let ()
      (let/ec jreturn
        (set-field! f_highScoresArray this _highScoresArray)
        (set-field! f_firstTime this #f)
        (send this jm_saveHighScore_0))))
    (define/public (jm_update_1 _name)
    (let ()
      (let/ec jreturn
        (send (HighScoreNamePersistanceSingleton.jm_getInstance_0) jm_save_3 (get-field f_abeClientInformation this) (get-field f_gameInfo this) _name)
        (send (get-field f_highScore this) jm_setName_1 _name))))
    (define/public (jm_saveHighScore_0)
    (let ([_size JR.null][_highScores JR.null][_highScoresAsString JR.null][_index JR.null])
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_START (get-field f_commonStrings this))) jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 (get-field f_highScore this))) jm_toString_0) this "saveHighScore")
        (set! _size (vector-length (get-field f_highScoresArray this)))
        (when (and (get-field f_firstTime this) (= _size 0))
            (begin
            (send (get-field f_logUtil this) jm_putF_3 "Games canvas did not give us any HighScores" this "saveHighScore")
            (send (get-field f_highScoresFactoryInterface this) jm_fetchHighScores_2 (get-field f_gameInfo this) this)
            (jreturn (void))))
        (set! _highScores JR.null)
        (set! _highScoresAsString JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _highScores (vector-ref (get-field f_highScoresArray this) _index))
            (send _highScores jm_addHighScore_1 (get-field f_highScore this))
            (set! _highScoresAsString (send _highScores jm_toString_0))
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Added/Adding Score: ") jm_append_1 _highScoresAsString) jm_toString_0) this "saveHighScore"))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (send (get-field f_highScoresHelper this) jm_setHighScoresArray_1 (get-field f_highScoresArray this)))))
    (define/public (jm_submit_1 _myCanvas)
    (let ([_commandListener JR.null])
      (let/ec jreturn
        (set! _commandListener (send _myCanvas jm_getCustomCommandListener_0))
        (send _commandListener jm_commandAction_2 (HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND) _myCanvas))))))
(define (HighScoreUtil.jclassValue) HighScoreUtil%)

(define HighScoreUtil.jcell_SUBMIT_TEXTBOX_COMMAND 'jnone)
(define (HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND)
  (when (eq? HighScoreUtil.jcell_SUBMIT_TEXTBOX_COMMAND 'jnone) (set! HighScoreUtil.jcell_SUBMIT_TEXTBOX_COMMAND (Command.jnew_4 "Submit" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1)))
  HighScoreUtil.jcell_SUBMIT_TEXTBOX_COMMAND)
(define (HighScoreUtil.jsetstatic_SUBMIT_TEXTBOX_COMMAND value) (set! HighScoreUtil.jcell_SUBMIT_TEXTBOX_COMMAND value))

(define (HighScoreUtil.jnew_7 _highScoresFactoryInterface _highScoresHelper _abeClientInformation _gameInfo _cmdListener _name _highScore)
  (define this (new HighScoreUtil% [jclass "HighScoreUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    
    
    
    
    
    
    (set-field! f_firstTime this #t)
    (let ()
      (let/ec jreturn
        (set-field! f_highScoresFactoryInterface this _highScoresFactoryInterface)
        (set-field! f_highScoresHelper this _highScoresHelper)
        (set-field! f_highScoresArray this (send (get-field f_highScoresHelper this) jm_getHighScoresArray_0))
        (set-field! f_highScore this _highScore)
        (set-field! f_abeClientInformation this _abeClientInformation)
        (set-field! f_gameInfo this _gameInfo)))
  this)



