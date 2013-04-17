.class public Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final MSG_CLOSE_TIPS:I = 0x0

.field private static final MSG_FLASH_TIPS_ONE:I = 0x1

.field private static final MSG_FLASH_TIPS_TWO:I = 0x2

.field private static final MSG_PRE_CLOSE_CYCLE:I = 0x4

.field private static final MSG_PRE_CLOSE_TIPS:I = 0x3

.field static alpha:I

.field public static in:I

.field public static isinorout:I

.field public static out:I


# instance fields
.field private layout:Landroid/view/View;

.field public mConfigDao:Lho;

.field private mContext:Landroid/content/Context;

.field private mEavesdropView:Landroid/widget/TextView;

.field private mFlashImage1:Landroid/widget/ImageView;

.field private mFlashImage2:Landroid/widget/ImageView;

.field private mFlashView:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field public mLeft:I

.field private mScreenH:I

.field private mScreenW:I

.field private mScreenX:F

.field private mScreenY:F

.field public mTop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTvShowerAbove:Landroid/widget/TextView;

.field private mTvShowerBelow:Landroid/widget/TextView;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    sput v0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->alpha:I

    const/4 v0, 0x0

    sput v0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->isinorout:I

    const/4 v0, 0x1

    sput v0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->in:I

    const/4 v0, 0x2

    sput v0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->out:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mTvShowerAbove:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mTvShowerBelow:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mEavesdropView:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mImageView:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mFlashView:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mFlashImage1:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mFlashImage2:Landroid/widget/ImageView;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mConfigDao:Lho;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->layout:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->layout:Landroid/view/View;

    const v1, 0x7f08015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mTvShowerAbove:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->layout:Landroid/view/View;

    const v1, 0x7f08015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mTvShowerBelow:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->layout:Landroid/view/View;

    const v1, 0x7f08015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mEavesdropView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->layout:Landroid/view/View;

    const v1, 0x7f080160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mFlashView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->layout:Landroid/view/View;

    const v1, 0x7f080161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mFlashImage1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->layout:Landroid/view/View;

    const v1, 0x7f080162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mFlashImage2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->layout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mTvShowerAbove:Landroid/widget/TextView;

    if-eqz p3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " IP"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mTvShowerBelow:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mConfigDao:Lho;

    invoke-virtual {v0}, Lho;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mEavesdropView:Landroid/widget/TextView;

    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->initPos()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1389

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2711

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_2
    move-object v0, p2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mEavesdropView:Landroid/widget/TextView;

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mFlashView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mFlashImage1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mFlashImage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initPos()V
    .locals 3

    const v2, 0xffff

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mConfigDao:Lho;

    invoke-virtual {v0}, Lho;->Z()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->showLocation(Z)V

    :goto_0
    return-void

    :cond_0
    and-int v1, v0, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mScreenX:F

    shr-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mScreenY:F

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->showLocation(Z)V

    goto :goto_0
.end method

.method private saveLocation()V
    .locals 6

    const/4 v0, 0x0

    const v2, 0xffff

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mLeft:I

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mTop:I

    if-gez v3, :cond_0

    move v3, v0

    :cond_0
    if-gez v1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lft;->d(Landroid/content/Context;)I

    move-result v1

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->layout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v5, v1, 0x3

    if-gt v3, v5, :cond_1

    add-int/2addr v4, v3

    shl-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x3

    if-lt v4, v1, :cond_1

    move v1, v2

    :goto_1
    and-int/2addr v1, v2

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mConfigDao:Lho;

    invoke-virtual {v1, v0}, Lho;->m(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mTouchY:F

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mTouchX:F

    return-void

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private showLocation(Z)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mScreenX:F

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mTouchX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mLeft:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mScreenY:F

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mTouchY:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mTop:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mLeft:I

    const v1, 0xffff

    if-ne v0, v1, :cond_1

    sget-object v0, Lkg;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v0, Lkg;->c:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    sget-object v0, Lkg;->c:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mTop:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-boolean v0, Lvc;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mWindowManager:Landroid/view/WindowManager;

    sget-object v1, Lkg;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lkg;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lkg;->c:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mLeft:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_2
    sget-object v0, Lkg;->c:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v0, Lkg;->c:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v0, Lkg;->c:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mLeft:I

    sget-object v0, Lkg;->c:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mTop:I

    goto :goto_1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mConfigDao:Lho;

    invoke-virtual {v0}, Lho;->Z()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lgw;->a:I

    sub-int v1, p4, p2

    sub-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mConfigDao:Lho;

    invoke-virtual {v1, v0}, Lho;->m(I)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->initPos()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mScreenX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mScreenY:F

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mTouchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41c8

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mTouchY:F

    invoke-direct {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->showLocation(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->showLocation(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->saveLocation()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeAllMessages()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
