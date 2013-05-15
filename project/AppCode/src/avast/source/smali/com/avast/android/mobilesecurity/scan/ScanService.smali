.class public abstract Lcom/avast/android/mobilesecurity/scan/ScanService;
.super Landroid/app/Service;
.source "ScanService.java"


# instance fields
.field protected a:Ljava/util/ArrayList;

.field protected b:Lcom/avast/android/mobilesecurity/scan/j;

.field private c:Lcom/avast/android/mobilesecurity/scan/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->a:Ljava/util/ArrayList;

    .line 70
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/os/Bundle;)Lcom/avast/android/mobilesecurity/scan/l;
.end method

.method public a()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->b:Lcom/avast/android/mobilesecurity/scan/j;

    sget-object v1, Lcom/avast/android/mobilesecurity/scan/j;->a:Lcom/avast/android/mobilesecurity/scan/j;

    if-ne v0, v1, :cond_1

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/scan/ScanService;->a(Z)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->c:Lcom/avast/android/mobilesecurity/scan/l;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->c:Lcom/avast/android/mobilesecurity/scan/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/l;->cancel(Z)Z

    goto :goto_0
.end method

.method a(Lcom/avast/android/mobilesecurity/scan/ScanProgress;)V
    .locals 2
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/scan/k;

    .line 199
    invoke-interface {v0, p1}, Lcom/avast/android/mobilesecurity/scan/k;->a(Lcom/avast/android/mobilesecurity/scan/ScanProgress;)V

    goto :goto_0

    .line 201
    :cond_0
    return-void
.end method

.method a(Lcom/avast/android/mobilesecurity/scan/j;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->b:Lcom/avast/android/mobilesecurity/scan/j;

    .line 179
    return-void
.end method

.method public a(Lcom/avast/android/mobilesecurity/scan/k;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->b:Lcom/avast/android/mobilesecurity/scan/j;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/scan/j;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/avast/android/mobilesecurity/scan/k;->a(I)V

    .line 92
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->b:Lcom/avast/android/mobilesecurity/scan/j;

    sget-object v1, Lcom/avast/android/mobilesecurity/scan/j;->b:Lcom/avast/android/mobilesecurity/scan/j;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->c:Lcom/avast/android/mobilesecurity/scan/l;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->c:Lcom/avast/android/mobilesecurity/scan/l;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/scan/l;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    invoke-interface {p1, v0}, Lcom/avast/android/mobilesecurity/scan/k;->a(Lcom/avast/android/mobilesecurity/scan/ScanProgress;)V

    .line 96
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/scan/k;

    .line 188
    invoke-interface {v0, p1}, Lcom/avast/android/mobilesecurity/scan/k;->a(Z)V

    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 116
    const-string v0, "npe"

    const-string v1, "calling ScanService.startScan"

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->c:Lcom/avast/android/mobilesecurity/scan/l;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->c:Lcom/avast/android/mobilesecurity/scan/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/l;->cancel(Z)Z

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->c:Lcom/avast/android/mobilesecurity/scan/l;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->b:Lcom/avast/android/mobilesecurity/scan/j;

    sget-object v1, Lcom/avast/android/mobilesecurity/scan/j;->a:Lcom/avast/android/mobilesecurity/scan/j;

    if-ne v0, v1, :cond_2

    .line 123
    if-nez p1, :cond_1

    .line 124
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 126
    :cond_1
    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->a(Landroid/os/Bundle;)Lcom/avast/android/mobilesecurity/scan/l;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->c:Lcom/avast/android/mobilesecurity/scan/l;

    .line 127
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->c:Lcom/avast/android/mobilesecurity/scan/l;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 129
    :cond_2
    return-void
.end method

.method public b(Lcom/avast/android/mobilesecurity/scan/k;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 150
    new-instance v0, Lcom/avast/android/mobilesecurity/scan/i;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/scan/i;-><init>(Lcom/avast/android/mobilesecurity/scan/ScanService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 169
    sget-object v0, Lcom/avast/android/mobilesecurity/scan/j;->a:Lcom/avast/android/mobilesecurity/scan/j;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanService;->b:Lcom/avast/android/mobilesecurity/scan/j;

    .line 170
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 175
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    const-string v0, "startNow"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/scan/ScanService;->b(Landroid/os/Bundle;)V

    .line 158
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method
