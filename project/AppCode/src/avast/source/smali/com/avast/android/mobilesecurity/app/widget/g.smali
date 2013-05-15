.class Lcom/avast/android/mobilesecurity/app/widget/g;
.super Landroid/os/Handler;
.source "WidgetControlBigActivity.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;


# direct methods
.method private constructor <init>(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;Lcom/avast/android/mobilesecurity/app/widget/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/widget/g;-><init>(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)V

    return-void
.end method

.method private a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->k(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Lcom/avast/android/mobilesecurity/app/widget/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/widget/h;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->k(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Lcom/avast/android/mobilesecurity/app/widget/h;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/avast/android/mobilesecurity/app/widget/h;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter

    .prologue
    const v12, 0x7f0c00d2

    const/16 v8, 0x7d0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 76
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 77
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->a(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 78
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->b(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " %"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->d(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    const v3, 0x7f0c03f2

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v5}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->c(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Ljava/text/NumberFormat;

    move-result-object v5

    div-int/lit16 v1, v1, 0x400

    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-virtual {v1, v12}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v10

    invoke-virtual {v2, v3, v4}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-direct {p0, v10, v8}, Lcom/avast/android/mobilesecurity/app/widget/g;->a(II)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "free"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 87
    if-gez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->e(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 89
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->f(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    const v2, 0x7f0c03ec

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->g(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    const v2, 0x7f0c03f3

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_1
    const/16 v0, 0x2710

    invoke-direct {p0, v11, v0}, Lcom/avast/android/mobilesecurity/app/widget/g;->a(II)V

    goto/16 :goto_0

    .line 92
    :cond_0
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->e(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 93
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->f(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " %"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->g(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    const v4, 0x7f0c03f2

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v6}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->c(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Ljava/text/NumberFormat;

    move-result-object v6

    const-wide/16 v7, 0x400

    div-long/2addr v1, v7

    invoke-virtual {v6, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v9

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-virtual {v1, v12}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v10

    invoke-virtual {v3, v4, v5}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 101
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 103
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->h(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 104
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->i(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " %"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const/4 v0, 0x3

    invoke-direct {p0, v0, v8}, Lcom/avast/android/mobilesecurity/app/widget/g;->a(II)V

    goto/16 :goto_0

    .line 108
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 109
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->j(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/widget/g;->a:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->c(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Ljava/text/NumberFormat;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const/4 v0, 0x4

    const/16 v1, 0xbb8

    invoke-direct {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/widget/g;->a(II)V

    goto/16 :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
