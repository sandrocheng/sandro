.class final Lcom/keniu/security/i/q;
.super Ljava/lang/Object;
.source "FileWatchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/i/p;


# direct methods
.method constructor <init>(Lcom/keniu/security/i/p;)V
    .locals 0
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/keniu/security/i/q;->a:Lcom/keniu/security/i/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/i/q;->a:Lcom/keniu/security/i/p;

    iget-object v0, v0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v0}, Lcom/keniu/security/i/o;->e(Lcom/keniu/security/i/o;)Landroid/app/NotificationManager;

    move-result-object v0

    sget v1, Lcom/keniu/security/i/o;->f:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
