.class final Lcom/keniu/security/service/m;
.super Landroid/os/Handler;
.source "StartupReceiver.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/service/StartupReceiver;


# direct methods
.method constructor <init>(Lcom/keniu/security/service/StartupReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/keniu/security/service/m;->a:Lcom/keniu/security/service/StartupReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "location send message"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/keniu/security/protection/l;

    iget-object v1, p0, Lcom/keniu/security/service/m;->a:Lcom/keniu/security/service/StartupReceiver;

    invoke-static {v1}, Lcom/keniu/security/service/StartupReceiver;->a(Lcom/keniu/security/service/StartupReceiver;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "huanka"

    invoke-direct {v0, v1, v2, v3}, Lcom/keniu/security/protection/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Lcom/keniu/security/protection/l;->a()V

    .line 47
    :cond_0
    return-void
.end method
