.class public Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$ClickEvent;,
        Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$TimerArrived;
    }
.end annotation


# static fields
.field public static PERMISSION_DIALOG_ADD:Ljava/lang/String;

.field public static PERMISSION_DIALOG_DELETE:Ljava/lang/String;

.field public static mLock:[B


# instance fields
.field private handler:Landroid/os/Handler;

.field private mAppPerm:Lkx;

.field private mCheckBoxView:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private mConfigDao:Lho;

.field private mContext:Landroid/content/Context;

.field private mForbidButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private mForbidOrPermit:[Ljava/lang/String;

.field private mImageView:Landroid/widget/ImageView;

.field private mInfo:Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

.field private mLean:Landroid/widget/LinearLayout;

.field private mMessageView:Landroid/widget/TextView;

.field private mPermissionView:Landroid/widget/TextView;

.field private mPermitButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private mSeconds:I

.field private mTimeView:Landroid/widget/TextView;

.field private mTimeoverOpt:I

.field private mTimer:Ljava/util/Timer;

.field private mTimes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mLock:[B

    const-string v0, "permission_diaolg_add"

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->PERMISSION_DIALOG_ADD:Ljava/lang/String;

    const-string v0, "permission_diaolg_detele"

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->PERMISSION_DIALOG_DELETE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mLean:Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mForbidOrPermit:[Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mForbidOrPermit:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0698

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mForbidOrPermit:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0699

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimes:[I

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mConfigDao:Lho;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mLean:Landroid/widget/LinearLayout;

    const v1, 0x7f0801e4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mLean:Landroid/widget/LinearLayout;

    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mLean:Landroid/widget/LinearLayout;

    const v1, 0x7f0801e5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mPermissionView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mLean:Landroid/widget/LinearLayout;

    const v1, 0x7f0801e6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimeView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mLean:Landroid/widget/LinearLayout;

    const v1, 0x7f0801e7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mCheckBoxView:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mLean:Landroid/widget/LinearLayout;

    const v1, 0x7f0801e8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mPermitButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mPermitButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$ClickEvent;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$ClickEvent;-><init>(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mLean:Landroid/widget/LinearLayout;

    const v1, 0x7f0801e9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mForbidButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mForbidButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$ClickEvent;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$ClickEvent;-><init>(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mLean:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    nop

    :array_0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mSeconds:I

    return v0
.end method

.method static synthetic access$006(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mSeconds:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mSeconds:I

    return v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimeoverOpt:I

    return v0
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mCheckBoxView:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mInfo:Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mForbidOrPermit:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimeView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mPermitButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method


# virtual methods
.method public RememberState(II)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mAppPerm:Lkx;

    iget-object v0, v0, Lkx;->e:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    new-instance v1, Ljf;

    invoke-direct {v1}, Ljf;-><init>()V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mAppPerm:Lkx;

    iget v2, v2, Lkx;->a:I

    invoke-virtual {v1, v2, v0}, Ljf;->a(I[B)I

    const-class v1, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mAppPerm:Lkx;

    iget v1, v1, Lkx;->a:I

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mAppPerm:Lkx;

    iget-object v2, v2, Lkx;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lxf;->a(I[BLjava/lang/String;)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    move-result-object v0

    invoke-static {v0}, Lxi;->a(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V

    return-void
.end method

.method public getIntentInfo(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "Require_Info"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mInfo:Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    new-instance v0, Ljf;

    invoke-direct {v0}, Ljf;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mInfo:Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    iget v1, v1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljf;->b(I)Lkx;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mAppPerm:Lkx;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mInfo:Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    iget v0, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    invoke-static {v0}, Lxf;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimes:[I

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mConfigDao:Lho;

    invoke-virtual {v2}, Lho;->bA()I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mSeconds:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mConfigDao:Lho;

    invoke-virtual {v0}, Lho;->bB()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimeoverOpt:I

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mAppPerm:Lkx;

    iget-object v2, v2, Lkx;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mAppPerm:Lkx;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mAppPerm:Lkx;

    iget-object v3, v3, Lkx;->b:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lkx;->c:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mAppPerm:Lkx;

    iget-object v3, v3, Lkx;->b:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mMessageView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mAppPerm:Lkx;

    iget-object v3, v3, Lkx;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b06a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mPermissionView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'red\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimeView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b06a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mForbidOrPermit:[Ljava/lang/String;

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimeoverOpt:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimer:Ljava/util/Timer;

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$TimerArrived;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$TimerArrived;-><init>(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method
