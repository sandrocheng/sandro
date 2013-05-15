.class public Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;
.super Lcom/dolphin/browser/addons/AddonService;
.source "DolphinWebshieldService.java"


# instance fields
.field private a:Lcom/dolphin/browser/addons/al;

.field private b:Landroid/os/Looper;

.field private c:Lcom/avast/android/mobilesecurity/app/webshield/c;

.field private d:Lcom/dolphin/browser/addons/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/dolphin/browser/addons/AddonService;-><init>()V

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;)Lcom/avast/android/mobilesecurity/app/webshield/c;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->c:Lcom/avast/android/mobilesecurity/app/webshield/c;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;Lcom/dolphin/browser/addons/h;)Lcom/dolphin/browser/addons/h;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->d:Lcom/dolphin/browser/addons/h;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;Lcom/dolphin/browser/addons/h;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->a(Lcom/dolphin/browser/addons/h;ILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/dolphin/browser/addons/h;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Redirecting Dolphin Browser in tab "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 415
    :try_start_0
    iget-object v0, p1, Lcom/dolphin/browser/addons/h;->h:Lcom/dolphin/browser/addons/bs;

    invoke-interface {v0}, Lcom/dolphin/browser/addons/bs;->b()[I

    move-result-object v1

    .line 416
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 417
    aget v2, v1, v0

    if-ne v2, p2, :cond_0

    .line 418
    iget-object v2, p1, Lcom/dolphin/browser/addons/h;->h:Lcom/dolphin/browser/addons/bs;

    invoke-interface {v2, p2}, Lcom/dolphin/browser/addons/bs;->a(I)Lcom/dolphin/browser/addons/aw;

    move-result-object v2

    .line 419
    if-eqz v2, :cond_0

    .line 420
    invoke-interface {v2}, Lcom/dolphin/browser/addons/aw;->c()Lcom/dolphin/browser/addons/bh;

    move-result-object v2

    .line 421
    if-eqz v2, :cond_0

    .line 422
    invoke-interface {v2, p3}, Lcom/dolphin/browser/addons/bh;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    throw v0

    .line 430
    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Lcom/dolphin/browser/addons/h;)V
    .locals 3
    .parameter

    .prologue
    .line 67
    const-string v0, "Browser connected"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 68
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/a;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/webshield/a;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->a:Lcom/dolphin/browser/addons/al;

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DolphinWebshieldService[helper]"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 81
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->b:Landroid/os/Looper;

    .line 83
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/c;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->b:Landroid/os/Looper;

    invoke-direct {v0, p0, p0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/c;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->c:Lcom/avast/android/mobilesecurity/app/webshield/c;

    .line 86
    :try_start_0
    iget-object v0, p1, Lcom/dolphin/browser/addons/h;->g:Lcom/dolphin/browser/addons/ad;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->a:Lcom/dolphin/browser/addons/al;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/addons/ad;->b(Lcom/dolphin/browser/addons/al;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v1, "Remote exception registering history observer"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->a:Lcom/dolphin/browser/addons/al;

    goto :goto_0
.end method

.method protected b(Lcom/dolphin/browser/addons/h;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    const-string v0, "Browser disconnected"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->a:Lcom/dolphin/browser/addons/al;

    if-eqz v0, :cond_0

    .line 99
    :try_start_0
    iget-object v0, p1, Lcom/dolphin/browser/addons/h;->g:Lcom/dolphin/browser/addons/ad;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->a:Lcom/dolphin/browser/addons/al;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/addons/ad;->a(Lcom/dolphin/browser/addons/al;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    if-eqz p1, :cond_0

    const-string v0, "redirect_browser"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "tab_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 53
    :try_start_1
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->d:Lcom/dolphin/browser/addons/h;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v2, v0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->a(Lcom/dolphin/browser/addons/h;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/addons/AddonService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirecting back to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    .line 58
    const-string v0, "Invalid tab ID to redirect"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->e(Ljava/lang/String;)I

    goto :goto_0
.end method
