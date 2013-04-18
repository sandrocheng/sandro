.class final Lcom/keniu/security/protection/b;
.super Ljava/lang/Object;
.source "AlarmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/a;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/a;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/keniu/security/protection/b;->a:Lcom/keniu/security/protection/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/keniu/security/protection/b;->a:Lcom/keniu/security/protection/a;

    invoke-static {v0}, Lcom/keniu/security/protection/a;->a(Lcom/keniu/security/protection/a;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/keniu/security/protection/b;->a:Lcom/keniu/security/protection/a;

    invoke-static {v0}, Lcom/keniu/security/protection/a;->b(Lcom/keniu/security/protection/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/keniu/security/protection/b;->a:Lcom/keniu/security/protection/a;

    invoke-static {v0}, Lcom/keniu/security/protection/a;->a(Lcom/keniu/security/protection/a;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 71
    iget-object v0, p0, Lcom/keniu/security/protection/b;->a:Lcom/keniu/security/protection/a;

    invoke-static {v0}, Lcom/keniu/security/protection/a;->c(Lcom/keniu/security/protection/a;)Z

    .line 74
    :cond_0
    return-void
.end method
