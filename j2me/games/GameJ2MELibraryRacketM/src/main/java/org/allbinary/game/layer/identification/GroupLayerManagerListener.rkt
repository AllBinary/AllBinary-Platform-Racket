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
;; package org.allbinary.game.layer.identification

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/layer/event/LayerManagerEventListener.rkt")
(lazy-require ["../../../../../org/allbinary/layer/event/LayerManagerEventHandler.rkt" (LayerManagerEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define GroupLayerManagerListener%
  (class LayerManagerEventListener%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_list JR.null])
    (define/public (jm_clear_0)
    (let ([_groupList JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _groupList JR.null)
        (set! _size (send (get-field f_list this) jm_size_0))
        (begin
            (set! _index (JR.i32 (- _size 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _groupList (vector-ref (get-field f_objectArray (get-field f_list this)) _index))
            (send _groupList jm_clear_0))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))
    (define/public (jm_getGroupSizeFromInterface_1 _groupInterfaceCompositeInterface)
    (let ([_groupInterfaceArray JR.null])
      (let/ec jreturn
        (set! _groupInterfaceArray (send _groupInterfaceCompositeInterface jm_getGroupInterface_0))
        (jreturn (send this jm_getGroupSize_1 (vector-ref _groupInterfaceArray 0))))))
    (define/public (jm_getGroupSize_1 _groupInterface)
    (let ([_id JR.null])
      (let/ec jreturn
        (set! _id (send _groupInterface jm_getGroupId_0))
        (jreturn (send this jm_getGroupSizeById_1 _id)))))
    (define/public (jm_getList_1 _groupInterface)
    (let ([_id JR.null])
      (let/ec jreturn
        (set! _id (send _groupInterface jm_getGroupId_0))
        (jreturn (send this jm_getListById_1 _id)))))
    (define/public (jm_getListById_1 _groupId)
    (let ([_groupList JR.null])
      (let/ec jreturn
        (set! _groupList (vector-ref (get-field f_objectArray (get-field f_list this)) _groupId))
        (jreturn _groupList))))
    (define/public (jm_getGroupSizeById_1 _groupId)
    (let ([_groupList JR.null][_size JR.null])
      (let/ec jreturn
        (set! _groupList (vector-ref (get-field f_objectArray (get-field f_list this)) _groupId))
        (set! _size (send _groupList jm_size_0))
        (jreturn _size))))
    (define/public (jm_areAllOtherGroupsEmpty_1 _groupInterface)
    (let ([_id JR.null][_size JR.null][_groupSize JR.null][_index JR.null])
      (let/ec jreturn
        (set! _id (send _groupInterface jm_getGroupId_0))
        (set! _size (send (get-field f_list this) jm_size_0))
        (begin
            (set! _index (JR.i32 (- _size 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (when (not (= _id _index))
                (begin
                (set! _groupSize (send this jm_getGroupSizeById_1 _index))
                (when (not (= _groupSize 0))
                    (begin
                    (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Group Size: ") jm_appendint_1 _groupSize) jm_toString_0) this "areAllOtherGroupsEmpty")
                    (jreturn #f))))))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (jreturn #t))))
    (define/public (jm_isIdInList_2 _id _excludeGroupList)
    (let ([_size JR.null][_groupInterfaceArray JR.null][_groupInterface JR.null][_groupId JR.null][_size2 JR.null][_index2 JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (send _excludeGroupList jm_size_0))
        (set! _groupInterfaceArray JR.null)
        (set! _groupInterface JR.null)
        (set! _groupId 0)
        (begin
            (set! _index (JR.i32 (- _size 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _groupInterfaceArray (vector-ref (get-field f_objectArray _excludeGroupList) _index))
            (set! _size2 (vector-length _groupInterfaceArray))
            (begin
                (set! _index2 0)
                (let/ec jbreak (let jloop () (when (< _index2 _size2)
                    (let/ec jcontinue
                (set! _groupInterface (vector-ref _groupInterfaceArray _index2))
                (set! _groupId (send _groupInterface jm_getGroupId_0))
                (when (= _groupId _id)
                    (begin
                    (jreturn #t))))
                    (set! _index2 (JR.i32 (+ _index2 1))) (jloop))))))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (jreturn #f))))
    (define/public (jm_areAllOtherGroupsLessThan_2 _excludeGroupList _maxSize)
    (let ([_size JR.null][_groupSize JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (send (get-field f_list this) jm_size_0))
        (begin
            (set! _index (JR.i32 (- _size 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (when (not (send this jm_isIdInList_2 _index _excludeGroupList))
                (begin
                (set! _groupSize (send this jm_getGroupSizeById_1 _index))
                (when (>= _groupSize _maxSize)
                    (begin
                    (jreturn #f))))))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (jreturn #t))))
    (define/public (jm_init_1 _total)
    (let ()
      (let/ec jreturn
        (let/ec jbreak (let jloop () (when (<= (send (get-field f_list this) jm_size_0) (JR.i32 (+ _total 1)))
                (let/ec jcontinue
            (send (get-field f_list this) jm_add_1 (BasicArrayListD.jnew_0))) (jloop)))))))
    (define/override (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/override (jm_onCreateLayerManagerEvent_1 _layerManagerEvent)
    (let ([_layerInterface JR.null][_groupInterfaceArray JR.null][_size JR.null][_id JR.null][_groupList JR.null][_index JR.null])
      (let/ec jreturn
        (set! _layerInterface (send _layerManagerEvent jm_getLayerInterface_0))
        (set! _groupInterfaceArray (send _layerInterface jm_getGroupInterface_0))
        (set! _size (vector-length _groupInterfaceArray))
        (set! _id 0)
        (set! _groupList JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _id (JR.className (vector-ref _groupInterfaceArray _index)))
            (set! _groupList (vector-ref (get-field f_objectArray (get-field f_list this)) _id))
            (when (JR.null? _groupList)
                (begin
                (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "id: ") jm_appendint_1 _id) jm_toString_0) this "onCreateLayerManagerEvent")))
            (if (not (send _groupList jm_contains_1 _layerInterface))
                (begin
                (send _groupList jm_add_1 _layerInterface))
                (begin
                (void))))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/override (jm_onDeleteLayerManagerEvent_1 _layerManagerEvent)
    (let ([_layerInterface JR.null][_groupInterfaceArray JR.null][_size JR.null][_id JR.null][_groupList JR.null][_index JR.null])
      (let/ec jreturn
        (set! _layerInterface (send _layerManagerEvent jm_getLayerInterface_0))
        (set! _groupInterfaceArray (send _layerInterface jm_getGroupInterface_0))
        (set! _size (vector-length _groupInterfaceArray))
        (set! _id 0)
        (set! _groupList JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _id (JR.className (vector-ref _groupInterfaceArray _index)))
            (set! _groupList (vector-ref (get-field f_objectArray (get-field f_list this)) _id))
            (send _groupList jm_remove_1 _layerInterface))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_log_0)
    (let ([_stringBuffer JR.null][_GROUP JR.null][_SPACE JR.null][_TOTAL_LABEL JR.null][_size JR.null][_groupList JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _GROUP "Group: ")
        (set! _SPACE (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
        (set! _TOTAL_LABEL (get-field f_TOTAL_LABEL (CommonLabels.jm_getInstance_0)))
        (set! _size (send (get-field f_list this) jm_size_0))
        (begin
            (set! _index (JR.i32 (- _size 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _groupList (vector-ref (get-field f_objectArray (get-field f_list this)) _index))
            (send _stringBuffer jm_append_1 _GROUP)
            (send _stringBuffer jm_appendint_1 _index)
            (send _stringBuffer jm_append_1 _SPACE)
            (send _stringBuffer jm_append_1 _TOTAL_LABEL)
            (send _stringBuffer jm_appendint_1 (send _groupList jm_size_0))
            (send _stringBuffer jm_append_1 _SPACE))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this "log"))))))
(define (GroupLayerManagerListener.jclassValue) GroupLayerManagerListener%)

(define GroupLayerManagerListener.jcell_SINGLETON 'jnone)
(define (GroupLayerManagerListener.jstatic_SINGLETON)
  (when (eq? GroupLayerManagerListener.jcell_SINGLETON 'jnone) (set! GroupLayerManagerListener.jcell_SINGLETON (GroupLayerManagerListener.jnew_0)))
  GroupLayerManagerListener.jcell_SINGLETON)
(define (GroupLayerManagerListener.jsetstatic_SINGLETON value) (set! GroupLayerManagerListener.jcell_SINGLETON value))

(define (GroupLayerManagerListener.jnew_0)
  (define this (new GroupLayerManagerListener% [jclass "GroupLayerManagerListener"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (let ()
      (let/ec jreturn
        (send (LayerManagerEventHandler.jm_getInstance_0) jm_addListener_1 this)))
  this)

(define (GroupLayerManagerListener.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GroupLayerManagerListener.jstatic_SINGLETON)))))



