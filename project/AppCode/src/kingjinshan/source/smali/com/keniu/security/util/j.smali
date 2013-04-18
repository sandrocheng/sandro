.class final Lcom/keniu/security/util/j;
.super Ljava/lang/Object;
.source "ActionThread.java"

# interfaces
.implements Lcom/keniu/security/util/b;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-wide p1, p0, Lcom/keniu/security/util/j;->a:J

    .line 99
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 104
    :try_start_0
    iget-wide v0, p0, Lcom/keniu/security/util/j;->a:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
