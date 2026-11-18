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
;; package org.allbinary.game

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/Integer.rkt")
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["./GameTypeFactory.rkt" (GameTypeFactory.jm_getInstance_0)])
(lazy-require ["./GameMode.rkt" (GameMode.jstatic_NONE)])
(lazy-require ["./PlayerTypesFactory.rkt" (PlayerTypesFactory.jm_getInstance_0)])
(lazy-require ["./GameInfoData.rkt" (GameInfoData.jm_getInstance_0)])
(provide (all-defined-out))

(define GameInfo%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_gameInfoData JR.null])
    (field [f_gameType JR.null])
    (field [f_gameMode JR.null])
    (field [f_playerType JR.null])
    (field [f_highestLevel 0])
    (field [f_currentLevel 0])
    (field [f_NEW_LEVEL JR.null])
    (field [f_SET_CURRENT_LEVEL JR.null])
    (field [f_NEXT_GAME_LEVEL JR.null])
    (define/public (jm_getGameType_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameType this)))))
    (define/public (jm_getGameMode_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameMode this)))))
    (define/public (jm_getPlayerType_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_playerType this)))))
    (define/public (jm_getHighestLevel_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_highestLevel this)))))
    (define/public (jm_setHighestLevel_1 _highestLevel)
    (let ()
      (let/ec jreturn
        (set-field! f_highestLevel this _highestLevel))))
    (define/public (jm_getCurrentLevel_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_currentLevel this)))))
    (define/public (jm_setCurrentLevel_1 _currentLevel)
    (let ()
      (let/ec jreturn
        (set-field! f_currentLevel this _currentLevel)
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_NEW_LEVEL this)) jm_appendint_1 (send this jm_getCurrentLevel_0)) jm_toString_0) this (get-field f_SET_CURRENT_LEVEL this)))))
    (define/public (jm_nextGameLevel_0)
    (let ()
      (let/ec jreturn
        (when (< (send this jm_getCurrentLevel_0) (send this jm_getHighestLevel_0))
            (begin
            (set-field! f_currentLevel this (JR.i32 (+ (get-field f_currentLevel this) 1)))))
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_NEXT (CommonLabels.jm_getInstance_0))) jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0))) jm_append_1 (get-field f_NEW_LEVEL this)) jm_appendint_1 (send this jm_getCurrentLevel_0)) jm_toString_0) this (get-field f_NEXT_GAME_LEVEL this)))))
    (define/public (jm_previousGameLevel_0)
    (let ()
      (let/ec jreturn
        (when (> (send this jm_getCurrentLevel_0) 1)
            (begin
            (set-field! f_currentLevel this (JR.i32 (- (get-field f_currentLevel this) 1))))))))
    (define/public (jm_isLastLevel_0)
    (let ()
      (let/ec jreturn
        (if (>= (send this jm_getCurrentLevel_0) (send this jm_getHighestLevel_0))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_toHashtable_0)
    (let ([_hashtable JR.null])
      (let/ec jreturn
        (set! _hashtable (send (StdUtil.jm_getInstance_0) jm_createHashtable_0))
        (send _hashtable jm_put_2 (get-field f_GAME_TYPE (get-field f_gameInfoData this)) (send (send this jm_getGameType_0) jm_toString_0))
        (send _hashtable jm_put_2 (get-field f_GAME_MODE (get-field f_gameInfoData this)) (send (get-field f_gameMode this) jm_toString_0))
        (send _hashtable jm_put_2 (get-field f_PLAYER_TYPE (get-field f_gameInfoData this)) (send (get-field f_playerType this) jm_toString_0))
        (send _hashtable jm_put_2 (get-field f_HIGHEST_LEVEL (get-field f_gameInfoData this)) (JR.str (send this jm_getHighestLevel_0)))
        (send _hashtable jm_put_2 (get-field f_CURRENT_LEVEL (get-field f_gameInfoData this)) (JR.str (get-field f_currentLevel this)))
        (jreturn _hashtable))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null][_commonSeps JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (send _stringBuffer jm_append_1 (get-field f_GAME_TYPE (get-field f_gameInfoData this)))
        (send _stringBuffer jm_append_1 (get-field f_EQUALS _commonSeps))
        (send _stringBuffer jm_append_1 (send (send this jm_getGameType_0) jm_toString_0))
        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonSeps))
        (send _stringBuffer jm_append_1 (get-field f_GAME_MODE (get-field f_gameInfoData this)))
        (send _stringBuffer jm_append_1 (get-field f_EQUALS _commonSeps))
        (send _stringBuffer jm_append_1 (send (get-field f_gameMode this) jm_toString_0))
        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonSeps))
        (send _stringBuffer jm_append_1 (get-field f_PLAYER_TYPE (get-field f_gameInfoData this)))
        (send _stringBuffer jm_append_1 (get-field f_EQUALS _commonSeps))
        (send _stringBuffer jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 (get-field f_playerType this)))
        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonSeps))
        (send _stringBuffer jm_append_1 (get-field f_HIGHEST_LEVEL (get-field f_gameInfoData this)))
        (send _stringBuffer jm_append_1 (get-field f_EQUALS _commonSeps))
        (send _stringBuffer jm_appendint_1 (send this jm_getHighestLevel_0))
        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonSeps))
        (send _stringBuffer jm_append_1 (get-field f_CURRENT_LEVEL (get-field f_gameInfoData this)))
        (send _stringBuffer jm_append_1 (get-field f_EQUALS _commonSeps))
        (send _stringBuffer jm_appendint_1 (get-field f_currentLevel this))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (GameInfo.jclassValue) GameInfo%)

(define GameInfo.jcell_NONE 'jnone)
(define (GameInfo.jstatic_NONE)
  (when (eq? GameInfo.jcell_NONE 'jnone) (set! GameInfo.jcell_NONE (GameInfo.jnew_5 (get-field f_NONE (GameTypeFactory.jm_getInstance_0)) (GameMode.jstatic_NONE) (get-field f_PLAYER_TYPE_ONE (PlayerTypesFactory.jm_getInstance_0)) (JR.i32 (- 1)) (JR.i32 (- 1)))))
  GameInfo.jcell_NONE)
(define (GameInfo.jsetstatic_NONE value) (set! GameInfo.jcell_NONE value))

(define GameInfo.jcell_LEVEL_NAME 'jnone)
(define (GameInfo.jstatic_LEVEL_NAME)
  (when (eq? GameInfo.jcell_LEVEL_NAME 'jnone) (set! GameInfo.jcell_LEVEL_NAME "LEVEL"))
  GameInfo.jcell_LEVEL_NAME)
(define (GameInfo.jsetstatic_LEVEL_NAME value) (set! GameInfo.jcell_LEVEL_NAME value))

(define (GameInfo.jnew_5 _gameType _gameMode _playerType _highestLevel _currentLevel)
  (define this (new GameInfo% [jclass "GameInfo"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_gameInfoData this (GameInfoData.jm_getInstance_0))
    
    
    
    
    
    (set-field! f_NEW_LEVEL this "New Level: ")
    (set-field! f_SET_CURRENT_LEVEL this "setCurrentLevel")
    (set-field! f_NEXT_GAME_LEVEL this "nextGameLevel")
    (let ()
      (let/ec jreturn
        (set-field! f_gameType this _gameType)
        (set-field! f_gameMode this _gameMode)
        (send this jm_setHighestLevel_1 _highestLevel)
        (set-field! f_currentLevel this _currentLevel)
        (set-field! f_playerType this _playerType)))
  this)



