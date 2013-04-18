.class final Lcom/keniu/security/traffic/ax;
.super Ljava/lang/Object;
.source "TrafficFixSmsAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/NotificationManager;

.field final synthetic b:Lcom/keniu/security/traffic/aw;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/aw;Landroid/app/NotificationManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/keniu/security/traffic/ax;->b:Lcom/keniu/security/traffic/aw;

    iput-object p2, p0, Lcom/keniu/security/traffic/ax;->a:Landroid/app/NotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/traffic/ax;->a:Landroid/app/NotificationManager;

    const/16 v1, 0x1101

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
