.class final Lcom/keniu/security/protection/g;
.super Landroid/os/Handler;
.source "KnCameraPreview.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/f;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/f;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/keniu/security/protection/g;->a:Lcom/keniu/security/protection/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/keniu/security/protection/g;->a:Lcom/keniu/security/protection/f;

    invoke-static {v0}, Lcom/keniu/security/protection/f;->a(Lcom/keniu/security/protection/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->t(Landroid/content/Context;)V

    .line 45
    :cond_0
    return-void
.end method
