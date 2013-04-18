.class final Lcom/keniu/security/monitor/f;
.super Ljava/lang/Object;
.source "UnistLogCatMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/monitor/e;


# direct methods
.method constructor <init>(Lcom/keniu/security/monitor/e;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/keniu/security/monitor/f;->a:Lcom/keniu/security/monitor/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/keniu/security/monitor/f;->a:Lcom/keniu/security/monitor/e;

    invoke-static {v1}, Lcom/keniu/security/monitor/e;->a(Lcom/keniu/security/monitor/e;)Ljava/io/BufferedReader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/keniu/security/monitor/f;->a:Lcom/keniu/security/monitor/e;

    invoke-static {v1, v0}, Lcom/keniu/security/monitor/e;->a(Lcom/keniu/security/monitor/e;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/keniu/security/monitor/f;->a:Lcom/keniu/security/monitor/e;

    invoke-static {v0}, Lcom/keniu/security/monitor/e;->b(Lcom/keniu/security/monitor/e;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    :goto_1
    return-void

    .line 202
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/monitor/f;->a:Lcom/keniu/security/monitor/e;

    invoke-static {v0}, Lcom/keniu/security/monitor/e;->b(Lcom/keniu/security/monitor/e;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
