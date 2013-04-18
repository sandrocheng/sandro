.class final Lcom/keniu/security/protection/r;
.super Landroid/os/Handler;
.source "PreventTheftSmsSentMonitor.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/q;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/q;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/keniu/security/protection/r;->a:Lcom/keniu/security/protection/q;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/keniu/security/protection/r;->a:Lcom/keniu/security/protection/q;

    invoke-static {v0}, Lcom/keniu/security/protection/q;->a(Lcom/keniu/security/protection/q;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->t(Landroid/content/Context;)V

    .line 29
    return-void
.end method
