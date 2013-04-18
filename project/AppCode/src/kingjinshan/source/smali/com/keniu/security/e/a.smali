.class public final Lcom/keniu/security/e/a;
.super Ljava/lang/Object;
.source "CallDataObserver.java"

# interfaces
.implements Lcom/keniu/security/e/c;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/keniu/security/e/a;->a:Landroid/os/Handler;

    .line 19
    return-void
.end method

.method private a(Lcom/jxphone/mosecurity/c/j;Lcom/keniu/security/e/d;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 23
    invoke-virtual {p2}, Lcom/keniu/security/e/d;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 25
    const-string v2, "CALL"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 27
    iget-object v1, p0, Lcom/keniu/security/e/a;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lcom/keniu/security/e/d;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 14
    check-cast p1, Lcom/jxphone/mosecurity/c/j;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2}, Lcom/keniu/security/e/d;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CALL"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/keniu/security/e/a;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
