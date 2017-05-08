/* Generated by wbuild from "Slider2.w"
** (generator version $Revision: 2.0 $ of $Date: 93/07/06 16:08:04 $)
*/
#ifndef _XfwfSlider2P_H_
#define _XfwfSlider2P_H_
#include "LabelP.h"
#include "Slider2.h"
typedef void (*compute_thumb_Proc)(
#if NeedFunctionPrototypes
Widget,Position *,Position *,Dimension *,Dimension *
#endif
);
#define XtInherit_compute_thumb ((compute_thumb_Proc) _XtInherit)
typedef void (*move_thumb_Proc)(
#if NeedFunctionPrototypes
Widget,int ,int ,int ,int ,int ,int 
#endif
);
#define XtInherit_move_thumb ((move_thumb_Proc) _XtInherit)
typedef void (*compute_info_Proc)(
#if NeedFunctionPrototypes
Widget,Position *,Position *,Dimension *,Dimension *,float *,float *,float *,float *
#endif
);
#define XtInherit_compute_info ((compute_info_Proc) _XtInherit)
typedef void (*scroll_response_Proc)(
#if NeedFunctionPrototypes
Widget ,XtPointer ,XtPointer 
#endif
);
#define XtInherit_scroll_response ((scroll_response_Proc) _XtInherit)
typedef struct {
/* methods */
compute_thumb_Proc compute_thumb;
move_thumb_Proc move_thumb;
compute_info_Proc compute_info;
#define range(x) (0.0 <=(x )&&(x )<=1.0 )


scroll_response_Proc scroll_response;
/* class variables */
} XfwfSlider2ClassPart;
typedef struct _XfwfSlider2ClassRec {
CoreClassPart core_class;
CompositeClassPart composite_class;
XfwfCommonClassPart xfwfCommon_class;
XfwfFrameClassPart xfwfFrame_class;
XfwfBoardClassPart xfwfBoard_class;
XfwfLabelClassPart xfwfLabel_class;
XfwfSlider2ClassPart xfwfSlider2_class;
} XfwfSlider2ClassRec;

typedef struct {
/* resources */
Pixel  thumbColor;
Pixmap  thumbPixmap;
Dimension  minsize;
Dimension  thumbFrameWidth;
FrameType  thumbFrameType;
XtCallbackList  scrollCallback;
XtCallbackProc  scrollResponse;
/* private state */
float  thumb_x;
float  thumb_y;
float  thumb_wd;
float  thumb_ht;
Boolean  drag_in_progress;
int  m_delta_x;
int  m_delta_y;
GC  thumbgc;
GC  thumblightgc;
GC  thumbdarkgc;
} XfwfSlider2Part;

typedef struct _XfwfSlider2Rec {
CorePart core;
CompositePart composite;
XfwfCommonPart xfwfCommon;
XfwfFramePart xfwfFrame;
XfwfBoardPart xfwfBoard;
XfwfLabelPart xfwfLabel;
XfwfSlider2Part xfwfSlider2;
} XfwfSlider2Rec;

externalref XfwfSlider2ClassRec xfwfSlider2ClassRec;

#endif /* _XfwfSlider2P_H_ */