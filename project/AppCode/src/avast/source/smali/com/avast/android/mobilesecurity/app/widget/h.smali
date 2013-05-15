.class Lcom/avast/android/mobilesecurity/app/widget/h;
.super Landroid/os/Handler;
.source "WidgetControlBigActivity.java"


# instance fields
.field a:Landroid/app/ActivityManager;

.field b:Z

.field final synthetic c:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;Landroid/os/Looper;Landroid/app/ActivityManager;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/widget/h;->c:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    .line 132
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/widget/h;->a:Landroid/app/ActivityManager;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/widget/h;->b:Z

    .line 136
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/high16 v4, 0x42c8

    .line 140
    const-string v1, "SummaryInfoWorkerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 142
    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/widget/h;->b:Z

    if-nez v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/widget/h;->b:Z

    .line 143
    const-string v0, "SummaryInfoWorkerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pausing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/widget/h;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    :goto_1
    return-void

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :cond_2
    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/widget/h;->b:Z

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/widget/h;->c:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->l(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Lcom/avast/android/mobilesecurity/app/manager/a/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/avast/android/mobilesecurity/app/manager/a/i;->b()V

    .line 151
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 153
    :pswitch_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/widget/h;->c:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->l(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Lcom/avast/android/mobilesecurity/app/manager/a/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/avast/android/mobilesecurity/app/manager/a/i;->c()Lcom/avast/android/mobilesecurity/app/manager/a/m;

    move-result-object v1

    .line 154
    invoke-interface {v1}, Lcom/avast/android/mobilesecurity/app/manager/a/m;->a()F

    move-result v2

    mul-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 155
    invoke-interface {v1}, Lcom/avast/android/mobilesecurity/app/manager/a/m;->b()J

    move-result-wide v3

    long-to-int v1, v3

    .line 156
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/widget/h;->c:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->m(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Lcom/avast/android/mobilesecurity/app/widget/g;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/avast/android/mobilesecurity/app/widget/g;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 157
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 158
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 159
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/h;->c:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->l(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Lcom/avast/android/mobilesecurity/app/manager/a/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/i;->d()Lcom/avast/android/mobilesecurity/app/manager/a/m;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/m;->a()F

    move-result v1

    mul-float/2addr v1, v4

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 164
    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/m;->b()J

    move-result-wide v2

    .line 165
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/h;->c:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->m(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Lcom/avast/android/mobilesecurity/app/widget/g;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/avast/android/mobilesecurity/app/widget/g;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 166
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 167
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 168
    const-string v4, "free"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 169
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 173
    :pswitch_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/h;->c:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->l(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Lcom/avast/android/mobilesecurity/app/manager/a/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/i;->a()F

    move-result v0

    mul-float/2addr v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 174
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/widget/h;->c:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->m(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Lcom/avast/android/mobilesecurity/app/widget/g;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/widget/g;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 175
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 176
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 179
    :pswitch_3
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/h;->c:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->l(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Lcom/avast/android/mobilesecurity/app/manager/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/widget/h;->a:Landroid/app/ActivityManager;

    invoke-interface {v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/a/i;->a(Landroid/app/ActivityManager;)I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/widget/h;->c:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->m(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Lcom/avast/android/mobilesecurity/app/widget/g;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/widget/g;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 181
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 182
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
