.class public Lcom/antivirus/core/receivers/BootReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {p1, v1, v1, v0}, Lcom/avg/toolkit/f;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method
