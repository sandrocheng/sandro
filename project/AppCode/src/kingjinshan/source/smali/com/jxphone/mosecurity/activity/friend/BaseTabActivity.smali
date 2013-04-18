.class public Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;
.super Landroid/app/TabActivity;
.source "BaseTabActivity.java"


# static fields
.field public static a:I = 0x0

.field public static d:Landroid/widget/Button; = null

.field private static final e:I = 0x78

.field private static final f:I = 0xfa

.field private static final g:I = 0xc8


# instance fields
.field protected b:I

.field protected c:Lcom/keniu/security/commui/CustomTabHost;

.field private h:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 41
    return-void
.end method

.method private a(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 102
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 104
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->d:Landroid/widget/Button;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_1
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->d:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a:I

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->b:I

    .line 97
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/commui/CustomTabHost;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    .line 98
    return-void
.end method

.method protected a(I)V
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    sget v1, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/commui/CustomTabHost;->setCurrentTab(I)V

    .line 80
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->h:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 88
    :cond_0
    invoke-super {p0, p1}, Landroid/app/TabActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a()V

    .line 38
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/a;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/a;-><init>(Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->h:Landroid/view/GestureDetector;

    .line 39
    return-void
.end method
