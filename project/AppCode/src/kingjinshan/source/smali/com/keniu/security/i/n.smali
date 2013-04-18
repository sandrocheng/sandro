.class final Lcom/keniu/security/i/n;
.super Ljava/lang/Object;
.source "FileOpenWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/i/m;


# direct methods
.method constructor <init>(Lcom/keniu/security/i/m;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/keniu/security/i/n;->a:Lcom/keniu/security/i/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/keniu/security/i/n;->a:Lcom/keniu/security/i/m;

    invoke-static {v1}, Lcom/keniu/security/i/m;->a(Lcom/keniu/security/i/m;)Ljava/io/BufferedReader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 267
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/keniu/security/i/n;->a:Lcom/keniu/security/i/m;

    invoke-static {v1, v0}, Lcom/keniu/security/i/m;->a(Lcom/keniu/security/i/m;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/keniu/security/i/n;->a:Lcom/keniu/security/i/m;

    invoke-static {v0}, Lcom/keniu/security/i/m;->b(Lcom/keniu/security/i/m;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 276
    :goto_1
    return-void

    .line 263
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/i/n;->a:Lcom/keniu/security/i/m;

    invoke-static {v0}, Lcom/keniu/security/i/m;->b(Lcom/keniu/security/i/m;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
