.class public abstract Lcom/avast/android/mobilesecurity/scan/l;
.super Landroid/os/AsyncTask;
.source "ScanTask.java"


# instance fields
.field protected d:Lcom/avast/android/mobilesecurity/scan/ScanService;

.field protected e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

.field protected f:Lcom/avast/android/generic/notification/a;

.field protected g:Lcom/avast/android/generic/notification/j;

.field protected h:Landroid/os/Bundle;

.field protected i:J

.field protected j:J

.field protected k:Landroid/os/Handler;

.field protected l:Landroid/os/HandlerThread;

.field protected m:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/scan/ScanService;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/scan/l;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    .line 70
    const-class v0, Lcom/avast/android/generic/notification/j;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->g:Lcom/avast/android/generic/notification/j;

    .line 71
    new-instance v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    const-string v1, ""

    const-string v2, ""

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/scan/ScanProgress;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    .line 72
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/scan/l;->h:Landroid/os/Bundle;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->k:Landroid/os/Handler;

    .line 75
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "scanProgress"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->l:Landroid/os/HandlerThread;

    .line 76
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/l;->l:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->m:Landroid/os/Handler;

    .line 78
    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 143
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    sget-object v1, Lcom/avast/android/mobilesecurity/scan/j;->a:Lcom/avast/android/mobilesecurity/scan/j;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->a(Lcom/avast/android/mobilesecurity/scan/j;)V

    .line 144
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->a(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->g:Lcom/avast/android/generic/notification/j;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/l;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/scan/l;->f:Lcom/avast/android/generic/notification/a;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/notification/j;->b(Landroid/app/Service;Lcom/avast/android/generic/notification/a;)V

    .line 148
    :cond_0
    return-void
.end method

.method protected a(ZZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 184
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/l;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    monitor-enter v1

    .line 185
    :try_start_0
    new-instance v0, Lcom/avast/android/mobilesecurity/scan/a;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/scan/l;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    invoke-direct {v0, v2}, Lcom/avast/android/mobilesecurity/scan/a;-><init>(Lcom/avast/android/mobilesecurity/scan/ScanProgress;)V

    .line 186
    iput-boolean p1, v0, Lcom/avast/android/mobilesecurity/scan/a;->a:Z

    .line 187
    iput-boolean p2, v0, Lcom/avast/android/mobilesecurity/scan/a;->b:Z

    .line 188
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/scan/l;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/scan/l;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v3, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/scan/l;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v4, v4, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->d:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->l:I

    .line 190
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/avast/android/mobilesecurity/scan/a;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/scan/l;->publishProgress([Ljava/lang/Object;)V

    .line 191
    monitor-exit v1

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected varargs a([Lcom/avast/android/mobilesecurity/scan/a;)V
    .locals 9
    .parameter

    .prologue
    .line 152
    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_4

    .line 153
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 154
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/scan/a;->a()Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    move-result-object v1

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 156
    iget-wide v4, p0, Lcom/avast/android/mobilesecurity/scan/l;->j:J

    sub-long v4, v2, v4

    iget-wide v6, v0, Lcom/avast/android/mobilesecurity/scan/a;->c:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    iget-boolean v4, v0, Lcom/avast/android/mobilesecurity/scan/a;->a:Z

    if-eqz v4, :cond_1

    .line 158
    :cond_0
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/scan/l;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v4, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->a(Lcom/avast/android/mobilesecurity/scan/ScanProgress;)V

    .line 159
    iput-wide v2, p0, Lcom/avast/android/mobilesecurity/scan/l;->j:J

    .line 161
    :cond_1
    iget v4, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    int-to-float v4, v4

    iget v5, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->d:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x42c8

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 162
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/l;->e()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-wide v5, p0, Lcom/avast/android/mobilesecurity/scan/l;->i:J

    sub-long v5, v2, v5

    iget-wide v7, v0, Lcom/avast/android/mobilesecurity/scan/a;->d:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    iget v5, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->l:I

    if-ne v5, v4, :cond_3

    :cond_2
    iget-boolean v0, v0, Lcom/avast/android/mobilesecurity/scan/a;->b:Z

    if-eqz v0, :cond_4

    .line 166
    :cond_3
    iput-wide v2, p0, Lcom/avast/android/mobilesecurity/scan/l;->i:J

    .line 167
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->f:Lcom/avast/android/generic/notification/a;

    iget v2, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->d:I

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/avast/android/generic/notification/a;->b:J

    .line 168
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->f:Lcom/avast/android/generic/notification/a;

    iget v2, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/avast/android/generic/notification/a;->c:J

    .line 169
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->f:Lcom/avast/android/generic/notification/a;

    iget-object v2, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/avast/android/generic/notification/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->f:Lcom/avast/android/generic/notification/a;

    iget v1, v0, Lcom/avast/android/generic/notification/a;->f:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/avast/android/generic/notification/a;->f:I

    .line 171
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->g:Lcom/avast/android/generic/notification/j;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/l;->f:Lcom/avast/android/generic/notification/a;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/notification/j;->a(Lcom/avast/android/generic/notification/a;)V

    .line 174
    :cond_4
    return-void
.end method

.method protected abstract b()Landroid/content/Intent;
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method protected i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, v0, v0}, Lcom/avast/android/mobilesecurity/scan/l;->a(ZZ)V

    .line 199
    return-void
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 132
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 133
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    sget-object v1, Lcom/avast/android/mobilesecurity/scan/j;->a:Lcom/avast/android/mobilesecurity/scan/j;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->a(Lcom/avast/android/mobilesecurity/scan/j;)V

    .line 134
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->a(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->g:Lcom/avast/android/generic/notification/j;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/l;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/scan/l;->f:Lcom/avast/android/generic/notification/a;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/notification/j;->b(Landroid/app/Service;Lcom/avast/android/generic/notification/a;)V

    .line 138
    :cond_0
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/scan/l;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 108
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 109
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    sget-object v1, Lcom/avast/android/mobilesecurity/scan/j;->b:Lcom/avast/android/mobilesecurity/scan/j;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->a(Lcom/avast/android/mobilesecurity/scan/j;)V

    .line 111
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/l;->b()Landroid/content/Intent;

    move-result-object v0

    .line 112
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    const-string v1, "notificationId"

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/l;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    new-instance v1, Lcom/avast/android/generic/notification/AvastPendingIntent;

    sget-object v2, Lcom/avast/android/generic/notification/s;->a:Lcom/avast/android/generic/notification/s;

    invoke-direct {v1, v2, v0}, Lcom/avast/android/generic/notification/AvastPendingIntent;-><init>(Lcom/avast/android/generic/notification/s;Landroid/content/Intent;)V

    .line 116
    new-instance v0, Lcom/avast/android/generic/notification/a;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/l;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/l;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/avast/android/generic/notification/a;-><init>(JLjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->f:Lcom/avast/android/generic/notification/a;

    .line 117
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->f:Lcom/avast/android/generic/notification/a;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/avast/android/generic/notification/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/avast/android/generic/notification/AvastPendingIntent;)V

    .line 118
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->f:Lcom/avast/android/generic/notification/a;

    const-wide/16 v2, 0x64

    iput-wide v2, v0, Lcom/avast/android/generic/notification/a;->b:J

    .line 119
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->f:Lcom/avast/android/generic/notification/a;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/avast/android/generic/notification/a;->c:J

    .line 120
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->f:Lcom/avast/android/generic/notification/a;

    iput-object v1, v0, Lcom/avast/android/generic/notification/a;->g:Lcom/avast/android/generic/notification/AvastPendingIntent;

    .line 121
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->f:Lcom/avast/android/generic/notification/a;

    const/4 v1, 0x2

    iput v1, v0, Lcom/avast/android/generic/notification/a;->f:I

    .line 123
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->g:Lcom/avast/android/generic/notification/j;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/l;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/scan/l;->f:Lcom/avast/android/generic/notification/a;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/notification/j;->a(Landroid/app/Service;Lcom/avast/android/generic/notification/a;)V

    .line 126
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->j:J

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/scan/l;->i:J

    .line 127
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    check-cast p1, [Lcom/avast/android/mobilesecurity/scan/a;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/scan/l;->a([Lcom/avast/android/mobilesecurity/scan/a;)V

    return-void
.end method
