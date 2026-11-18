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
  "../../../../java/io/ByteArrayInputStream.rkt"
  "../../../../java/io/DataInputStream.rkt"
  "../../../../java/io/EOFException.rkt"
  "../../../../java/io/IOException.rkt"
  "./HighScores.rkt")
(lazy-require ["../../../../javax/microedition/rms/RecordComparator.rkt" (RecordComparator.jstatic_PRECEDES RecordComparator.jstatic_FOLLOWS)])
(lazy-require ["../../../../javax/microedition/rms/RecordStore.rkt" (RecordStore.jm_openRecordStore_2)])
(lazy-require ["../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/GameInfo.rkt" (GameInfo.jstatic_NONE)])
(lazy-require ["../../../../org/allbinary/game/configuration/persistance/NullRecordComparator.rkt" (NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR)])
(lazy-require ["../../../../org/allbinary/game/configuration/persistance/NullRecordFilter.rkt" (NullRecordFilter.jstatic_NULL_RECORD_FILTER)])
(lazy-require ["../../../../org/allbinary/game/configuration/persistance/NullRecordStore.rkt" (NullRecordStore.jstatic_NULL_RECORD_STORE)])
(lazy-require ["../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/persistance/PlatformRecordIdUtil.rkt" (PlatformRecordIdUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./HighScore.rkt" (HighScore.jnew_4)])
(provide (all-defined-out))

(define RecordStoreHighScores%
  (class HighScores%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_platformRecordIdUtil JR.null])
    (field [f_tsUtil JR.null])
    (field [f_RECORD_ID JR.null])
    (field [f_MAXHIGHSCORES 0])
    (field [f_gameInfo JR.null])
    (field [f_abeClientInformation JR.null])
    (field [f_recordComparatorInterface JR.null])
    (define/public (jm_getRecordId_1 _abeClientInformation)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_platformRecordIdUtil this) jm_getRecordId_2 _abeClientInformation (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_UNDERSCORE (CommonSeps.jm_getInstance_0))) jm_append_1 (send this jm_getName_0)) jm_append_1 (get-field f_RECORD_ID this)) jm_toString_0))))))
    (define/override (jm_addHighScore_1 _newHighScore)
    (let ([_recordStore JR.null][_highScoreBytes JR.null][_recordId JR.null])
      (let/ec jreturn
        (set! _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (dynamic-wind void (lambda () (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_ADD (get-field f_commonStrings this)) _e))])
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Adding HighScore: ") jm_appendlong_1 (send _newHighScore jm_getScore_0)) jm_toString_0) this (get-field f_ADD (get-field f_commonStrings this)))
            (when (send this jm_isTooManyHighScores_0)
                (begin
                (send (get-field f_logUtil this) jm_putF_3 "Removing Lowest Score" this (get-field f_ADD (get-field f_commonStrings this)))
                (send this jm_removeLowestHighScore_0)))
            (set! _recordStore (RecordStore.jm_openRecordStore_2 (send this jm_getRecordId_1 (get-field f_abeClientInformation this)) #t))
            (set! _highScoreBytes (send _newHighScore jm_getAsBytes_0))
            (set! _recordId (send _recordStore jm_addRecord_3 _highScoreBytes 0 (vector-length _highScoreBytes)))
            (send this jm_load_0)))
            (lambda ()
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_ADD (get-field f_commonStrings this)) _e))])
                (when (not (JR.null? _recordStore))
                    (begin
                    (PreLogUtil.jm_put_3 "Closing RecordStore" this (get-field f_ADD (get-field f_commonStrings this)))
                    (send _recordStore jm_closeRecordStore_0)))))))))
    (define/public (jm_removeLowestHighScore_0)
    (let ([_recordStore JR.null][_recordEnum JR.null][_scoreComparator JR.null][_bestHighScore JR.null][_recordAsBytes JR.null][_byteArrayInputStream JR.null][_inputStream JR.null][_id JR.null][_name JR.null][_nextScore JR.null][_nextCurrentHighScore JR.null])
      (let/ec jreturn
        (set! _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (dynamic-wind void (lambda () (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this "removeLowestHighScore" _e))])
            (set! _recordStore (RecordStore.jm_openRecordStore_2 (send this jm_getRecordId_1 (get-field f_abeClientInformation this)) #t))
            (set! _recordEnum (send _recordStore jm_enumerateRecords_3 (NullRecordFilter.jstatic_NULL_RECORD_FILTER) (NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR) #t))
            (set! _scoreComparator (get-field f_recordComparatorInterface this))
            (set! _bestHighScore (HighScore.jnew_4 (JR.i32 (- 1)) "none" (GameInfo.jstatic_NONE) (send _scoreComparator jm_getBestScore_0)))
            (set! _recordAsBytes JR.null)
            (set! _byteArrayInputStream JR.null)
            (set! _inputStream JR.null)
            (let/ec jbreak (let jloop () (when (send _recordEnum jm_hasNextElement_0)
                    (let/ec jcontinue
                (set! _id (send _recordEnum jm_nextRecordId_0))
                (set! _recordAsBytes (send (get-field f_tsUtil this) jm_getRecord_2 _recordStore _id))
                (when (not (JR.null? _recordAsBytes))
                    (begin
                    (set! _byteArrayInputStream (ByteArrayInputStream.jnew_1 _recordAsBytes))
                    (set! _inputStream (DataInputStream.jnew_1 _byteArrayInputStream))
                    (set! _name (send _inputStream jm_readUTF_0))
                    (set! _nextScore (send _inputStream jm_readLong_0))
                    (set! _nextCurrentHighScore (HighScore.jnew_4 _id _name (GameInfo.jstatic_NONE) _nextScore))
                    (when (= (send (get-field f_recordComparatorInterface this) jm_compare_2 (send _nextCurrentHighScore jm_getAsBytes_0) (send _bestHighScore jm_getAsBytes_0)) (RecordComparator.jstatic_FOLLOWS))
                        (begin
                        (set! _bestHighScore _nextCurrentHighScore)))))) (jloop))))
            (when (not (= (send _bestHighScore jm_getId_0) (JR.i32 (- 1))))
                (begin
                (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Removing Lowest HighScore: ") jm_appendlong_1 (send _bestHighScore jm_getScore_0)) jm_toString_0) this (get-field f_LOAD (get-field f_commonStrings this)))
                (send _recordStore jm_deleteRecord_1 (send _bestHighScore jm_getId_0))))))
            (lambda ()
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this "removeLowestHighScore" _e))])
                (when (not (JR.null? _recordStore))
                    (begin
                    (PreLogUtil.jm_put_3 "Closing RecordStore" this "removeLowestHighScore")
                    (send _recordStore jm_closeRecordStore_0)))))))))
    (define/public (jm_load_0)
    (let ([_recordStore JR.null][_recordEnum JR.null][_recordAsBytes JR.null][_byteArrayInputStream JR.null][_inputStream JR.null][_id JR.null][_name JR.null][_score JR.null][_newHighScore JR.null][_list JR.null][_size JR.null][_lastIndex JR.null][_highScore JR.null][_index JR.null])
      (let/ec jreturn
        (set! _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (dynamic-wind void (lambda () (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 "No High Scores" this (get-field f_LOAD (get-field f_commonStrings this)) _e))])
            (set! _recordStore (RecordStore.jm_openRecordStore_2 (send this jm_getRecordId_1 (get-field f_abeClientInformation this)) #t))
            (send this jm_setList_1 (BasicArrayListD.jnew_0))
            (set! _recordEnum (send _recordStore jm_enumerateRecords_3 (NullRecordFilter.jstatic_NULL_RECORD_FILTER) (NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR) #t))
            (set! _recordAsBytes JR.null)
            (set! _byteArrayInputStream JR.null)
            (set! _inputStream JR.null)
            (let/ec jbreak (let jloop () (when (send _recordEnum jm_hasNextElement_0)
                    (let/ec jcontinue
                (set! _id (send _recordEnum jm_nextRecordId_0))
                (set! _recordAsBytes (send (get-field f_tsUtil this) jm_getRecord_2 _recordStore _id))
                (when (not (JR.null? _recordAsBytes))
                    (begin
                    (set! _byteArrayInputStream (ByteArrayInputStream.jnew_1 _recordAsBytes))
                    (set! _inputStream (DataInputStream.jnew_1 _byteArrayInputStream))
                    (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                        (send (get-field f_logUtil this) jm_put_4 "EOF" this (get-field f_LOAD (get-field f_commonStrings this)) _e)
                        (raise _e))])
                        (set! _name (send _inputStream jm_readUTF_0))
                        (set! _score (send _inputStream jm_readLong_0))
                        (set! _newHighScore (HighScore.jnew_4 _id _name (GameInfo.jstatic_NONE) _score))
                        (set! _list (send this jm_getList_0))
                        (set! _size (send _list jm_size_0))
                        (set! _lastIndex _size)
                        (begin
                            (set! _index 0)
                            (let/ec jbreak (let jloop () (when (< _index _size)
                                (let/ec jcontinue
                            (set! _highScore (vector-ref (get-field f_objectArray _list) _index))
                            (when (= (send (get-field f_recordComparatorInterface this) jm_compare_2 (send _newHighScore jm_getAsBytes_0) (send _highScore jm_getAsBytes_0)) (RecordComparator.jstatic_PRECEDES))
                                (begin
                                (set! _lastIndex _index)
                                (jbreak (void)))))
                                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
                        (send _list jm_addAt_2 _lastIndex _newHighScore))))) (jloop))))))
            (lambda ()
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_LOAD (get-field f_commonStrings this)) _e))])
                (when (not (JR.null? _recordStore))
                    (begin
                    (PreLogUtil.jm_put_3 "Closing RecordStore" this (get-field f_LOAD (get-field f_commonStrings this)))
                    (send _recordStore jm_closeRecordStore_0)))))))))
    (define/public (jm_isTooManyHighScores_0)
    (let ()
      (let/ec jreturn
        (if (and (not (JR.null? (send this jm_getList_0))) (< (JR.className (send this jm_getList_0)) (get-field f_MAXHIGHSCORES this)))
            (begin
            (jreturn #f))
            (begin
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "HighScores RecordStore Max Reached: ") jm_appendint_1 (get-field f_MAXHIGHSCORES this)) jm_toString_0) this "isTooManyHighScores")
            (jreturn #t))))))
    (define/override (jm_isBestScore_1 _newHighScore)
    (let ([_list JR.null][_size JR.null][_highScore JR.null][_index JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_ADD (get-field f_commonStrings this)) _e)
            (raise _e))])
            (if (not (send this jm_isTooManyHighScores_0))
                (begin
                (send (get-field f_logUtil this) jm_putF_3 "Slot Available for a High Score" this "isBestScore")
                (jreturn #t))
                (begin
                (set! _list (send this jm_getList_0))
                (set! _size (send _list jm_size_0))
                (begin
                    (set! _index 0)
                    (let/ec jbreak (let jloop () (when (< _index _size)
                        (let/ec jcontinue
                    (set! _highScore (vector-ref (get-field f_objectArray _list) _index))
                    (when (= (send (get-field f_recordComparatorInterface this) jm_compare_2 (send _newHighScore jm_getAsBytes_0) (send _highScore jm_getAsBytes_0)) (RecordComparator.jstatic_FOLLOWS))
                        (begin
                        (send (get-field f_logUtil this) jm_putF_3 "Obtained a High Score" this "isBestScore")
                        (jreturn #t))))
                        (set! _index (JR.i32 (+ _index 1))) (jloop)))))))
            (send (get-field f_logUtil this) jm_putF_3 "Not a High Score" this "isBestScore")
            (jreturn #f)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null][_list JR.null][_size JR.null][_highScore JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (super jm_toString_0))
        (set! _list (send this jm_getList_0))
        (set! _size (send _list jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _highScore (vector-ref (get-field f_objectArray _list) _index))
            (send _stringBuffer jm_append_1 (send _highScore jm_getScoreString_0))
            (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP (CommonSeps.jm_getInstance_0))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (RecordStoreHighScores.jclassValue) RecordStoreHighScores%)

(define RecordStoreHighScores.jcell_hashTable 'jnone)
(define (RecordStoreHighScores.jstatic_hashTable)
  (when (eq? RecordStoreHighScores.jcell_hashTable 'jnone) (set! RecordStoreHighScores.jcell_hashTable (send (StdUtil.jm_getInstance_0) jm_createHashtable_0)))
  RecordStoreHighScores.jcell_hashTable)
(define (RecordStoreHighScores.jsetstatic_hashTable value) (set! RecordStoreHighScores.jcell_hashTable value))

(define (RecordStoreHighScores.jnew_6 _abeClientInformation _gameInfo _name _heading _columnTwoHeading _recordComparatorInterface)
  (define this (new RecordStoreHighScores% [jclass "RecordStoreHighScores"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_platformRecordIdUtil this (PlatformRecordIdUtil.jm_getInstance_0))
    (set-field! f_tsUtil this (TsUtil.jm_getInstance_0))
    (set-field! f_RECORD_ID this "_HS")
    (set-field! f_MAXHIGHSCORES this 100)
    
    
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_abeClientInformation this _abeClientInformation)
        (set-field! f_gameInfo this _gameInfo)
        (set-field! f_recordComparatorInterface this _recordComparatorInterface)
        (send this jm_load_0)))
  this)

(define (RecordStoreHighScores.jm_getInstance_6 _abeClientInformation _gameInfo _highScoreName _heading _columnTwoHeading _recordComparatorInterface)
    (let ([_highScoresCanBeNull JR.null][_highScores JR.null])
      (let/ec jreturn
        (set! _highScoresCanBeNull (JR.className (RecordStoreHighScores.jstatic_hashTable)))
        (when (JR.null? _highScoresCanBeNull)
            (begin
            (set! _highScores (RecordStoreHighScores.jnew_6 _abeClientInformation _gameInfo _highScoreName _heading _columnTwoHeading _recordComparatorInterface))
            (JR.className (RecordStoreHighScores.jstatic_hashTable))
            (jreturn _highScores)))
        (jreturn _highScoresCanBeNull))))



