.class final Lcom/keniu/security/traffic/cr;
.super Ljava/lang/Object;
.source "TrafficSmsAdjDebug.java"

# interfaces
.implements Lcn/com/wali/zft/ZftPluginCallBack;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Sync_End()V
    .locals 2

    .prologue
    .line 28
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Sync_End"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public final Sync_Status(Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    return-void
.end method

.method public final Sync_Timeout()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
