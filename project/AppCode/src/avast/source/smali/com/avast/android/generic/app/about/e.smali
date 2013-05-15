.class Lcom/avast/android/generic/app/about/e;
.super Landroid/os/Handler;
.source "AboutFragment.java"


# instance fields
.field a:Landroid/widget/ScrollView;

.field b:Landroid/widget/Scroller;

.field c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ScrollView;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/avast/android/generic/app/about/e;->a:Landroid/widget/ScrollView;

    .line 76
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/about/e;->b:Landroid/widget/Scroller;

    .line 77
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 82
    iput v1, p0, Lcom/avast/android/generic/app/about/e;->c:I

    .line 83
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 84
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 85
    iget-object v0, p0, Lcom/avast/android/generic/app/about/e;->b:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 86
    invoke-virtual {p0, v6}, Lcom/avast/android/generic/app/about/e;->sendEmptyMessage(I)Z

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v6, :cond_0

    .line 90
    iget-object v0, p0, Lcom/avast/android/generic/app/about/e;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 91
    iget-object v2, p0, Lcom/avast/android/generic/app/about/e;->a:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/avast/android/generic/app/about/e;->b:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    iget v4, p0, Lcom/avast/android/generic/app/about/e;->c:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 92
    iget-object v1, p0, Lcom/avast/android/generic/app/about/e;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/avast/android/generic/app/about/e;->c:I

    .line 93
    if-eqz v0, :cond_0

    .line 94
    const-wide/16 v0, 0x14

    invoke-virtual {p0, v6, v0, v1}, Lcom/avast/android/generic/app/about/e;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
