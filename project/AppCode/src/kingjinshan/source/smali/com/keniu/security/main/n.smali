.class final Lcom/keniu/security/main/n;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/keniu/security/main/bq;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/keniu/security/main/n;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/keniu/security/main/n;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->d(Lcom/keniu/security/main/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 240
    sget v1, Lcom/keniu/security/main/MainActivity;->h:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 241
    iget-object v1, p0, Lcom/keniu/security/main/n;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v1}, Lcom/keniu/security/main/MainActivity;->d(Lcom/keniu/security/main/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 242
    return-void
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/keniu/security/main/n;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->a(Lcom/keniu/security/main/MainActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/main/n;->a:Lcom/keniu/security/main/MainActivity;

    invoke-virtual {v0}, Lcom/keniu/security/main/MainActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/keniu/security/main/n;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->b(Lcom/keniu/security/main/MainActivity;)V

    .line 233
    iget-object v0, p0, Lcom/keniu/security/main/n;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->c(Lcom/keniu/security/main/MainActivity;)V

    goto :goto_0
.end method
