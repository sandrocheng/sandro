.class public Lcom/keniu/security/service/ReportService;
.super Landroid/app/Service;
.source "ReportService.java"


# static fields
.field private static final a:Ljava/lang/String; = "MoSecurity.ReportService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 34
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 39
    const-string v0, "MoSecurity.ReportService"

    const-string v1, "Begin Running ReportService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keniu/security/service/c;

    invoke-direct {v1, p0}, Lcom/keniu/security/service/c;-><init>(Lcom/keniu/security/service/ReportService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    invoke-virtual {p0}, Lcom/keniu/security/service/ReportService;->stopSelf()V

    .line 45
    return-void
.end method
