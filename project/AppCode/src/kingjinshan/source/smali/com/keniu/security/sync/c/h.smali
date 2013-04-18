.class final Lcom/keniu/security/sync/c/h;
.super Ljava/lang/Object;
.source "ProgressAsyncTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/c/g;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/c/g;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/keniu/security/sync/c/h;->a:Lcom/keniu/security/sync/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/keniu/security/sync/c/h;->a:Lcom/keniu/security/sync/c/g;

    iget-object v0, v0, Lcom/keniu/security/sync/c/g;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/sync/c/h;->a:Lcom/keniu/security/sync/c/g;

    iget-object v1, v1, Lcom/keniu/security/sync/c/g;->c:Landroid/os/Handler;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    iget-object v0, p0, Lcom/keniu/security/sync/c/h;->a:Lcom/keniu/security/sync/c/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/g;->cancel(Z)Z

    .line 47
    return-void
.end method
