.class final Lcom/keniu/security/protection/n;
.super Ljava/lang/Object;
.source "LocationInfoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/m;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/m;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/keniu/security/protection/n;->a:Lcom/keniu/security/protection/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/keniu/security/protection/n;->a:Lcom/keniu/security/protection/m;

    iget-object v0, v0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-static {v0}, Lcom/keniu/security/protection/l;->d(Lcom/keniu/security/protection/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 195
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 196
    iget-object v1, p0, Lcom/keniu/security/protection/n;->a:Lcom/keniu/security/protection/m;

    iget-object v1, v1, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-static {v1}, Lcom/keniu/security/protection/l;->d(Lcom/keniu/security/protection/l;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 197
    return-void
.end method
