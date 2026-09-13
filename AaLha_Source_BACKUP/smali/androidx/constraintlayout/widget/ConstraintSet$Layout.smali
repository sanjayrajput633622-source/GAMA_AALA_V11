.class public Landroidx/constraintlayout/widget/ConstraintSet$Layout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Layout"
.end annotation


# static fields
.field private static final BARRIER_ALLOWS_GONE_WIDGETS:I = 0x4b

.field private static final BARRIER_DIRECTION:I = 0x48

.field private static final BARRIER_MARGIN:I = 0x49

.field private static final BASELINE_MARGIN:I = 0x50

.field private static final BASELINE_TO_BASELINE:I = 0x1

.field private static final BASELINE_TO_BOTTOM:I = 0x4e

.field private static final BASELINE_TO_TOP:I = 0x4d

.field private static final BOTTOM_MARGIN:I = 0x2

.field private static final BOTTOM_TO_BOTTOM:I = 0x3

.field private static final BOTTOM_TO_TOP:I = 0x4

.field private static final CHAIN_USE_RTL:I = 0x47

.field private static final CIRCLE:I = 0x3d

.field private static final CIRCLE_ANGLE:I = 0x3f

.field private static final CIRCLE_RADIUS:I = 0x3e

.field private static final CONSTRAINED_HEIGHT:I = 0x58

.field private static final CONSTRAINED_WIDTH:I = 0x57

.field private static final CONSTRAINT_REFERENCED_IDS:I = 0x4a

.field private static final CONSTRAINT_TAG:I = 0x59

.field private static final DIMENSION_RATIO:I = 0x5

.field private static final EDITOR_ABSOLUTE_X:I = 0x6

.field private static final EDITOR_ABSOLUTE_Y:I = 0x7

.field private static final END_MARGIN:I = 0x8

.field private static final END_TO_END:I = 0x9

.field private static final END_TO_START:I = 0xa

.field private static final GONE_BASELINE_MARGIN:I = 0x4f

.field private static final GONE_BOTTOM_MARGIN:I = 0xb

.field private static final GONE_END_MARGIN:I = 0xc

.field private static final GONE_LEFT_MARGIN:I = 0xd

.field private static final GONE_RIGHT_MARGIN:I = 0xe

.field private static final GONE_START_MARGIN:I = 0xf

.field private static final GONE_TOP_MARGIN:I = 0x10

.field private static final GUIDE_BEGIN:I = 0x11

.field private static final GUIDE_END:I = 0x12

.field private static final GUIDE_PERCENT:I = 0x13

.field private static final GUIDE_USE_RTL:I = 0x5a

.field private static final HEIGHT_DEFAULT:I = 0x52

.field private static final HEIGHT_MAX:I = 0x53

.field private static final HEIGHT_MIN:I = 0x55

.field private static final HEIGHT_PERCENT:I = 0x46

.field private static final HORIZONTAL_BIAS:I = 0x14

.field private static final HORIZONTAL_STYLE:I = 0x27

.field private static final HORIZONTAL_WEIGHT:I = 0x25

.field private static final LAYOUT_CONSTRAINT_HEIGHT:I = 0x2a

.field private static final LAYOUT_CONSTRAINT_WIDTH:I = 0x29

.field private static final LAYOUT_HEIGHT:I = 0x15

.field private static final LAYOUT_WIDTH:I = 0x16

.field private static final LAYOUT_WRAP_BEHAVIOR:I = 0x4c

.field private static final LEFT_MARGIN:I = 0x17

.field private static final LEFT_TO_LEFT:I = 0x18

.field private static final LEFT_TO_RIGHT:I = 0x19

.field private static final ORIENTATION:I = 0x1a

.field private static final RIGHT_MARGIN:I = 0x1b

.field private static final RIGHT_TO_LEFT:I = 0x1c

.field private static final RIGHT_TO_RIGHT:I = 0x1d

.field private static final START_MARGIN:I = 0x1e

.field private static final START_TO_END:I = 0x1f

.field private static final START_TO_START:I = 0x20

.field private static final TOP_MARGIN:I = 0x21

.field private static final TOP_TO_BOTTOM:I = 0x22

.field private static final TOP_TO_TOP:I = 0x23

.field public static final UNSET:I = -0x1

.field public static final UNSET_GONE_MARGIN:I = -0x80000000

.field private static final UNUSED:I = 0x5b

.field private static final VERTICAL_BIAS:I = 0x24

.field private static final VERTICAL_STYLE:I = 0x28

.field private static final VERTICAL_WEIGHT:I = 0x26

.field private static final WIDTH_DEFAULT:I = 0x51

.field private static final WIDTH_MAX:I = 0x54

.field private static final WIDTH_MIN:I = 0x56

.field private static final WIDTH_PERCENT:I = 0x45

.field private static mapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field public baselineMargin:I

.field public baselineToBaseline:I

.field public baselineToBottom:I

.field public baselineToTop:I

.field public bottomMargin:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public circleAngle:F

.field public circleConstraint:I

.field public circleRadius:I

.field public constrainedHeight:Z

.field public constrainedWidth:Z

.field public dimensionRatio:Ljava/lang/String;

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public endMargin:I

.field public endToEnd:I

.field public endToStart:I

.field public goneBaselineMargin:I

.field public goneBottomMargin:I

.field public goneEndMargin:I

.field public goneLeftMargin:I

.field public goneRightMargin:I

.field public goneStartMargin:I

.field public goneTopMargin:I

.field public guideBegin:I

.field public guideEnd:I

.field public guidePercent:F

.field public guidelineUseRtl:Z

.field public heightDefault:I

.field public heightMax:I

.field public heightMin:I

.field public heightPercent:F

.field public horizontalBias:F

.field public horizontalChainStyle:I

.field public horizontalWeight:F

.field public leftMargin:I

.field public leftToLeft:I

.field public leftToRight:I

.field public mApply:Z

.field public mBarrierAllowsGoneWidgets:Z

.field public mBarrierDirection:I

.field public mBarrierMargin:I

.field public mConstraintTag:Ljava/lang/String;

.field public mHeight:I

.field public mHelperType:I

.field public mIsGuideline:Z

.field public mOverride:Z

.field public mReferenceIdString:Ljava/lang/String;

.field public mReferenceIds:[I

.field public mWidth:I

.field public mWrapBehavior:I

.field public orientation:I

.field public rightMargin:I

.field public rightToLeft:I

.field public rightToRight:I

.field public startMargin:I

.field public startToEnd:I

.field public startToStart:I

.field public topMargin:I

.field public topToBottom:I

.field public topToTop:I

.field public verticalBias:F

.field public verticalChainStyle:I

.field public verticalWeight:F

.field public widthDefault:I

.field public widthMax:I

.field public widthMin:I

.field public widthPercent:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    .line 2
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintLeft_toLeftOf:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 3
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintLeft_toRightOf:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 4
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintRight_toLeftOf:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 5
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintRight_toRightOf:I

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 6
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintTop_toTopOf:I

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 7
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintTop_toBottomOf:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 8
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBottom_toTopOf:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 9
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBottom_toBottomOf:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 10
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 11
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 12
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 13
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 14
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 15
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 16
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_guidelineUseRtl:I

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 17
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_orientation:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 18
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintStart_toEndOf:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 19
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintStart_toStartOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 20
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 21
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 22
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 23
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 24
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 25
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 26
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 27
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 28
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintVertical_weight:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 29
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHorizontal_weight:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 31
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 32
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 33
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintVertical_bias:I

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 34
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 35
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintLeft_creator:I

    const/16 v2, 0x5b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 36
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 37
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 38
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 39
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 40
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginLeft:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 41
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginRight:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 42
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginStart:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 43
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 44
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginTop:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 45
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 46
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_width:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 47
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 48
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintWidth:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 49
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHeight:I

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 50
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constrainedWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 51
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constrainedHeight:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 52
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_wrapBehaviorInParent:I

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 53
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 54
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 55
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 56
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 57
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 58
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 59
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 60
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_barrierMargin:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 61
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_constraint_referenced_ids:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 62
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mOverride:Z

    .line 11
    const/4 v1, -0x1

    .line 12
    .line 13
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 14
    .line 15
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 16
    .line 17
    const/high16 v2, -0x40800000    # -1.0f

    .line 18
    .line 19
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 20
    const/4 v3, 0x1

    .line 21
    .line 22
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    .line 23
    .line 24
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 25
    .line 26
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 27
    .line 28
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 29
    .line 30
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 31
    .line 32
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 33
    .line 34
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 35
    .line 36
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 37
    .line 38
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 39
    .line 40
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 41
    .line 42
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 43
    .line 44
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 45
    .line 46
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 47
    .line 48
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 49
    .line 50
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 51
    .line 52
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 53
    .line 54
    const/high16 v4, 0x3f000000    # 0.5f

    .line 55
    .line 56
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 57
    .line 58
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 59
    const/4 v4, 0x0

    .line 60
    .line 61
    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 62
    .line 63
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 64
    .line 65
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 66
    const/4 v4, 0x0

    .line 67
    .line 68
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 69
    .line 70
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 71
    .line 72
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 73
    .line 74
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 75
    .line 76
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 77
    .line 78
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 79
    .line 80
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 81
    .line 82
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 83
    .line 84
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 85
    .line 86
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 87
    .line 88
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 89
    .line 90
    const/high16 v4, -0x80000000

    .line 91
    .line 92
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 93
    .line 94
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 95
    .line 96
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 97
    .line 98
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 99
    .line 100
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 101
    .line 102
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 103
    .line 104
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 105
    .line 106
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 107
    .line 108
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 109
    .line 110
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 111
    .line 112
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 113
    .line 114
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 115
    .line 116
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 117
    .line 118
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 119
    .line 120
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 121
    .line 122
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 123
    .line 124
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 125
    .line 126
    const/high16 v2, 0x3f800000    # 1.0f

    .line 127
    .line 128
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 129
    .line 130
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 131
    .line 132
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 133
    .line 134
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 135
    .line 136
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 137
    .line 138
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 139
    .line 140
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 141
    .line 142
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 143
    .line 144
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 145
    return-void
.end method


# virtual methods
.method public copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Layout;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 5
    .line 6
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 7
    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 9
    .line 10
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 13
    .line 14
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 15
    .line 16
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 17
    .line 18
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 19
    .line 20
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 21
    .line 22
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 23
    .line 24
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 25
    .line 26
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 27
    .line 28
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 29
    .line 30
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    .line 33
    .line 34
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 35
    .line 36
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 37
    .line 38
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 39
    .line 40
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 41
    .line 42
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 43
    .line 44
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 45
    .line 46
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 47
    .line 48
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 49
    .line 50
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 51
    .line 52
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 53
    .line 54
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 55
    .line 56
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 57
    .line 58
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 59
    .line 60
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 61
    .line 62
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 63
    .line 64
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 65
    .line 66
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 67
    .line 68
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 69
    .line 70
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 71
    .line 72
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 73
    .line 74
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 75
    .line 76
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 77
    .line 78
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 79
    .line 80
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 81
    .line 82
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 83
    .line 84
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 85
    .line 86
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 87
    .line 88
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 89
    .line 90
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 91
    .line 92
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 93
    .line 94
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 95
    .line 96
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 97
    .line 98
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 99
    .line 100
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 101
    .line 102
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 103
    .line 104
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 105
    .line 106
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 107
    .line 108
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 109
    .line 110
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 111
    .line 112
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 113
    .line 114
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 115
    .line 116
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 117
    .line 118
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 119
    .line 120
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 121
    .line 122
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 123
    .line 124
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 125
    .line 126
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 127
    .line 128
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 129
    .line 130
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 131
    .line 132
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 133
    .line 134
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 135
    .line 136
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 137
    .line 138
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 139
    .line 140
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 141
    .line 142
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 143
    .line 144
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 145
    .line 146
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 147
    .line 148
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 149
    .line 150
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 151
    .line 152
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 153
    .line 154
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 155
    .line 156
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 157
    .line 158
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 159
    .line 160
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 161
    .line 162
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 163
    .line 164
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 165
    .line 166
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 167
    .line 168
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 169
    .line 170
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 171
    .line 172
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 173
    .line 174
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 175
    .line 176
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 177
    .line 178
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 179
    .line 180
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 181
    .line 182
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 183
    .line 184
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 185
    .line 186
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 187
    .line 188
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 189
    .line 190
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 191
    .line 192
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 193
    .line 194
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 195
    .line 196
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 197
    .line 198
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 199
    .line 200
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 201
    .line 202
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 203
    .line 204
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 205
    .line 206
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 207
    .line 208
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 209
    .line 210
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 211
    .line 212
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 213
    .line 214
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 215
    .line 216
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 217
    .line 218
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 219
    .line 220
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 221
    .line 222
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 223
    .line 224
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 225
    .line 226
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 227
    .line 228
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 229
    .line 230
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 231
    .line 232
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 233
    .line 234
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 235
    .line 236
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 237
    .line 238
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 239
    .line 240
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 241
    .line 242
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 243
    .line 244
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 245
    .line 246
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    .line 247
    .line 248
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    .line 249
    .line 250
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 251
    .line 252
    if-eqz v0, :cond_0

    .line 253
    .line 254
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 255
    .line 256
    if-nez v1, :cond_0

    .line 257
    array-length v1, v0

    .line 258
    .line 259
    .line 260
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 261
    move-result-object v0

    .line 262
    .line 263
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 264
    goto :goto_0

    .line 265
    :cond_0
    const/4 v0, 0x0

    .line 266
    .line 267
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 268
    .line 269
    :goto_0
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 270
    .line 271
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 272
    .line 273
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 274
    .line 275
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 276
    .line 277
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 278
    .line 279
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 280
    .line 281
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 282
    .line 283
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 284
    .line 285
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 286
    .line 287
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 288
    return-void
.end method

.method public dump(Landroidx/constraintlayout/motion/widget/MotionScene;Ljava/lang/StringBuilder;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scene",
            "stringBuilder"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "\n"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    array-length v2, v0

    .line 16
    .line 17
    if-ge v1, v2, :cond_4

    .line 18
    .line 19
    aget-object v2, v0, v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 27
    move-result v4

    .line 28
    .line 29
    .line 30
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 31
    move-result v4

    .line 32
    .line 33
    if-eqz v4, :cond_0

    .line 34
    goto :goto_3

    .line 35
    .line 36
    .line 37
    :cond_0
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    const-string v6, "\"\n"

    .line 47
    .line 48
    const-string v7, " = \""

    .line 49
    .line 50
    const-string v8, "    "

    .line 51
    .line 52
    if-ne v2, v5, :cond_2

    .line 53
    .line 54
    :try_start_1
    check-cast v4, Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result v2

    .line 59
    const/4 v5, -0x1

    .line 60
    .line 61
    if-eq v2, v5, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 65
    move-result v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintName(I)Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    if-nez v2, :cond_1

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    move-object v4, v2

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    goto :goto_3

    .line 90
    :catch_0
    move-exception v2

    .line 91
    goto :goto_2

    .line 92
    .line 93
    :cond_2
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 94
    .line 95
    if-ne v2, v5, :cond_3

    .line 96
    .line 97
    check-cast v4, Ljava/lang/Float;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 101
    move-result v2

    .line 102
    .line 103
    const/high16 v5, -0x40800000    # -1.0f

    .line 104
    .line 105
    cmpl-float v2, v2, v5

    .line 106
    .line 107
    if-eqz v2, :cond_3

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    goto :goto_3

    .line 124
    .line 125
    .line 126
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 129
    goto :goto_0

    .line 130
    :cond_4
    return-void
.end method

.method public fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Layout:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x1

    .line 8
    .line 9
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    .line 17
    :goto_0
    if-ge v2, v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 21
    move-result v3

    .line 22
    .line 23
    sget-object v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 27
    move-result v4

    .line 28
    .line 29
    .line 30
    packed-switch v4, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    packed-switch v4, :pswitch_data_1

    .line 34
    .line 35
    const/high16 v5, 0x3f800000    # 1.0f

    .line 36
    .line 37
    .line 38
    packed-switch v4, :pswitch_data_2

    .line 39
    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 42
    .line 43
    sget-object v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    .line 51
    :pswitch_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 52
    .line 53
    sget-object v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mapToConstant:Landroid/util/SparseIntArray;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :pswitch_1
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 64
    move-result v3

    .line 65
    .line 66
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    .line 71
    :pswitch_2
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :pswitch_3
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 82
    move-result v3

    .line 83
    .line 84
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :pswitch_4
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 92
    move-result v3

    .line 93
    .line 94
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 95
    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    :pswitch_5
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 102
    move-result v3

    .line 103
    .line 104
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 105
    .line 106
    goto/16 :goto_1

    .line 107
    .line 108
    :pswitch_6
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 112
    move-result v3

    .line 113
    .line 114
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 115
    .line 116
    goto/16 :goto_1

    .line 117
    .line 118
    :pswitch_7
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 122
    move-result v3

    .line 123
    .line 124
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 125
    .line 126
    goto/16 :goto_1

    .line 127
    .line 128
    :pswitch_8
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 132
    move-result v3

    .line 133
    .line 134
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 135
    .line 136
    goto/16 :goto_1

    .line 137
    .line 138
    :pswitch_9
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 142
    move-result v3

    .line 143
    .line 144
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :pswitch_a
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 152
    move-result v3

    .line 153
    .line 154
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 155
    .line 156
    goto/16 :goto_1

    .line 157
    .line 158
    :pswitch_b
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 162
    move-result v3

    .line 163
    .line 164
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 165
    .line 166
    goto/16 :goto_1

    .line 167
    .line 168
    :pswitch_c
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 172
    move-result v3

    .line 173
    .line 174
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 175
    .line 176
    goto/16 :goto_1

    .line 177
    .line 178
    :pswitch_d
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 179
    .line 180
    .line 181
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 182
    move-result v3

    .line 183
    .line 184
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 185
    .line 186
    goto/16 :goto_1

    .line 187
    .line 188
    :pswitch_e
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 189
    .line 190
    .line 191
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 192
    move-result v3

    .line 193
    .line 194
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 195
    .line 196
    goto/16 :goto_1

    .line 197
    .line 198
    :pswitch_f
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 202
    move-result v3

    .line 203
    .line 204
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 205
    .line 206
    goto/16 :goto_1

    .line 207
    .line 208
    :pswitch_10
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 212
    move-result v3

    .line 213
    .line 214
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 215
    .line 216
    goto/16 :goto_1

    .line 217
    .line 218
    .line 219
    :pswitch_11
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 220
    move-result-object v3

    .line 221
    .line 222
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 223
    .line 224
    goto/16 :goto_1

    .line 225
    .line 226
    :pswitch_12
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 230
    move-result v3

    .line 231
    .line 232
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 233
    .line 234
    goto/16 :goto_1

    .line 235
    .line 236
    :pswitch_13
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 240
    move-result v3

    .line 241
    .line 242
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 243
    .line 244
    goto/16 :goto_1

    .line 245
    .line 246
    .line 247
    :pswitch_14
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 248
    move-result v3

    .line 249
    .line 250
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 251
    .line 252
    goto/16 :goto_1

    .line 253
    .line 254
    .line 255
    :pswitch_15
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 256
    move-result v3

    .line 257
    .line 258
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 259
    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :pswitch_16
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 266
    move-result v3

    .line 267
    .line 268
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 269
    .line 270
    goto/16 :goto_1

    .line 271
    .line 272
    :pswitch_17
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 276
    move-result v3

    .line 277
    .line 278
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 279
    .line 280
    goto/16 :goto_1

    .line 281
    .line 282
    :pswitch_18
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 283
    .line 284
    .line 285
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 286
    move-result v3

    .line 287
    .line 288
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 289
    .line 290
    goto/16 :goto_1

    .line 291
    .line 292
    .line 293
    :pswitch_19
    invoke-static {p0, p1, v3, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 294
    .line 295
    goto/16 :goto_1

    .line 296
    .line 297
    .line 298
    :pswitch_1a
    invoke-static {p0, p1, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :pswitch_1b
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 306
    move-result v3

    .line 307
    .line 308
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 309
    .line 310
    goto/16 :goto_1

    .line 311
    .line 312
    :pswitch_1c
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 316
    move-result v3

    .line 317
    .line 318
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 319
    .line 320
    goto/16 :goto_1

    .line 321
    .line 322
    :pswitch_1d
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 326
    move-result v3

    .line 327
    .line 328
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 329
    .line 330
    goto/16 :goto_1

    .line 331
    .line 332
    :pswitch_1e
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 336
    move-result v3

    .line 337
    .line 338
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 339
    .line 340
    goto/16 :goto_1

    .line 341
    .line 342
    :pswitch_1f
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 346
    move-result v3

    .line 347
    .line 348
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 349
    .line 350
    goto/16 :goto_1

    .line 351
    .line 352
    :pswitch_20
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 353
    .line 354
    .line 355
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 356
    move-result v3

    .line 357
    .line 358
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 359
    .line 360
    goto/16 :goto_1

    .line 361
    .line 362
    :pswitch_21
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 363
    .line 364
    .line 365
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 366
    move-result v3

    .line 367
    .line 368
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 369
    .line 370
    goto/16 :goto_1

    .line 371
    .line 372
    :pswitch_22
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 376
    move-result v3

    .line 377
    .line 378
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 379
    .line 380
    goto/16 :goto_1

    .line 381
    .line 382
    :pswitch_23
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 383
    .line 384
    .line 385
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 386
    move-result v3

    .line 387
    .line 388
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 389
    .line 390
    goto/16 :goto_1

    .line 391
    .line 392
    :pswitch_24
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 393
    .line 394
    .line 395
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 396
    move-result v3

    .line 397
    .line 398
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 399
    .line 400
    goto/16 :goto_1

    .line 401
    .line 402
    :pswitch_25
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 406
    move-result v3

    .line 407
    .line 408
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 409
    .line 410
    goto/16 :goto_1

    .line 411
    .line 412
    :pswitch_26
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 413
    .line 414
    .line 415
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 416
    move-result v3

    .line 417
    .line 418
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 419
    .line 420
    goto/16 :goto_1

    .line 421
    .line 422
    :pswitch_27
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 423
    .line 424
    .line 425
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 426
    move-result v3

    .line 427
    .line 428
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 429
    .line 430
    goto/16 :goto_1

    .line 431
    .line 432
    :pswitch_28
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 433
    .line 434
    .line 435
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 436
    move-result v3

    .line 437
    .line 438
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 439
    .line 440
    goto/16 :goto_1

    .line 441
    .line 442
    :pswitch_29
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 443
    .line 444
    .line 445
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 446
    move-result v3

    .line 447
    .line 448
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 449
    .line 450
    goto/16 :goto_1

    .line 451
    .line 452
    :pswitch_2a
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 453
    .line 454
    .line 455
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 456
    move-result v3

    .line 457
    .line 458
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 459
    .line 460
    goto/16 :goto_1

    .line 461
    .line 462
    :pswitch_2b
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 463
    .line 464
    .line 465
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 466
    move-result v3

    .line 467
    .line 468
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 469
    .line 470
    goto/16 :goto_1

    .line 471
    .line 472
    :pswitch_2c
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 473
    .line 474
    .line 475
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 476
    move-result v3

    .line 477
    .line 478
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 479
    .line 480
    goto/16 :goto_1

    .line 481
    .line 482
    :pswitch_2d
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 483
    .line 484
    .line 485
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 486
    move-result v3

    .line 487
    .line 488
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 489
    .line 490
    goto/16 :goto_1

    .line 491
    .line 492
    :pswitch_2e
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 493
    .line 494
    .line 495
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 496
    move-result v3

    .line 497
    .line 498
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 499
    .line 500
    goto/16 :goto_1

    .line 501
    .line 502
    :pswitch_2f
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 503
    .line 504
    .line 505
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 506
    move-result v3

    .line 507
    .line 508
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 509
    .line 510
    goto/16 :goto_1

    .line 511
    .line 512
    :pswitch_30
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 513
    .line 514
    .line 515
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 516
    move-result v3

    .line 517
    .line 518
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 519
    .line 520
    goto/16 :goto_1

    .line 521
    .line 522
    :pswitch_31
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 523
    .line 524
    .line 525
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 526
    move-result v3

    .line 527
    .line 528
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 529
    .line 530
    goto/16 :goto_1

    .line 531
    .line 532
    :pswitch_32
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 533
    .line 534
    .line 535
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 536
    move-result v3

    .line 537
    .line 538
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 539
    .line 540
    goto/16 :goto_1

    .line 541
    .line 542
    :pswitch_33
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 543
    .line 544
    .line 545
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 546
    move-result v3

    .line 547
    .line 548
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 549
    .line 550
    goto/16 :goto_1

    .line 551
    .line 552
    :pswitch_34
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 553
    .line 554
    .line 555
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 556
    move-result v3

    .line 557
    .line 558
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 559
    .line 560
    goto/16 :goto_1

    .line 561
    .line 562
    :pswitch_35
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 563
    .line 564
    .line 565
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 566
    move-result v3

    .line 567
    .line 568
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 569
    .line 570
    goto/16 :goto_1

    .line 571
    .line 572
    :pswitch_36
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 573
    .line 574
    .line 575
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 576
    move-result v3

    .line 577
    .line 578
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 579
    .line 580
    goto/16 :goto_1

    .line 581
    .line 582
    :pswitch_37
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 583
    .line 584
    .line 585
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 586
    move-result v3

    .line 587
    .line 588
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 589
    goto :goto_1

    .line 590
    .line 591
    :pswitch_38
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 592
    .line 593
    .line 594
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 595
    move-result v3

    .line 596
    .line 597
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 598
    goto :goto_1

    .line 599
    .line 600
    :pswitch_39
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 601
    .line 602
    .line 603
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 604
    move-result v3

    .line 605
    .line 606
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 607
    goto :goto_1

    .line 608
    .line 609
    :pswitch_3a
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 610
    .line 611
    .line 612
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 613
    move-result v3

    .line 614
    .line 615
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 616
    goto :goto_1

    .line 617
    .line 618
    :pswitch_3b
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 619
    .line 620
    .line 621
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 622
    move-result v3

    .line 623
    .line 624
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 625
    goto :goto_1

    .line 626
    .line 627
    :pswitch_3c
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 628
    .line 629
    .line 630
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 631
    move-result v3

    .line 632
    .line 633
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 634
    goto :goto_1

    .line 635
    .line 636
    :pswitch_3d
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 637
    .line 638
    .line 639
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 640
    move-result v3

    .line 641
    .line 642
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 643
    goto :goto_1

    .line 644
    .line 645
    .line 646
    :pswitch_3e
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 647
    move-result-object v3

    .line 648
    .line 649
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 650
    goto :goto_1

    .line 651
    .line 652
    :pswitch_3f
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 653
    .line 654
    .line 655
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 656
    move-result v3

    .line 657
    .line 658
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 659
    goto :goto_1

    .line 660
    .line 661
    :pswitch_40
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 662
    .line 663
    .line 664
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 665
    move-result v3

    .line 666
    .line 667
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 668
    goto :goto_1

    .line 669
    .line 670
    :pswitch_41
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 671
    .line 672
    .line 673
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 674
    move-result v3

    .line 675
    .line 676
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 677
    goto :goto_1

    .line 678
    .line 679
    :pswitch_42
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 680
    .line 681
    .line 682
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 683
    move-result v3

    .line 684
    .line 685
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 686
    .line 687
    :goto_1
    :pswitch_43
    add-int/lit8 v2, v2, 0x1

    .line 688
    .line 689
    goto/16 :goto_0

    .line 690
    .line 691
    .line 692
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 693
    return-void

    .line 694
    nop

    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    :pswitch_data_1
    .packed-switch 0x3d
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    :pswitch_data_2
    .packed-switch 0x45
        :pswitch_15
        :pswitch_14
        :pswitch_43
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
