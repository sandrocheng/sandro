.class final Lcom/keniu/security/main/bh;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/keniu/security/main/bh;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 673
    iget-object v0, p0, Lcom/keniu/security/main/bh;->a:Lcom/keniu/security/main/MainActivity;

    invoke-virtual {v0}, Lcom/keniu/security/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 675
    invoke-virtual {v0}, Lcom/keniu/security/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jxphone/mosecurity/d/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/keniu/security/main/bh;->a:Lcom/keniu/security/main/MainActivity;

    iget-object v1, p0, Lcom/keniu/security/main/bh;->a:Lcom/keniu/security/main/MainActivity;

    const v2, 0x7f0b0216

    invoke-virtual {v1, v2}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/MainActivity;->a(Ljava/lang/String;)V

    .line 680
    :cond_0
    return-void
.end method
