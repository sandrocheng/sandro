.class final Lcom/jxphone/mosecurity/logic/f;
.super Ljava/lang/Thread;
.source "FeedBackLogicImpl.java"


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/logic/e;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/logic/e;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/jxphone/mosecurity/logic/f;->a:Lcom/jxphone/mosecurity/logic/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 217
    :try_start_0
    invoke-static {}, Lcom/keniu/security/g;->a()Lcom/keniu/security/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/g;->c()[Ljava/io/File;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_1

    .line 220
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/f;->a:Lcom/jxphone/mosecurity/logic/e;

    invoke-static {v1}, Lcom/jxphone/mosecurity/logic/e;->a(Lcom/jxphone/mosecurity/logic/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/a;->az()I

    move-result v1

    .line 221
    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/f;->a:Lcom/jxphone/mosecurity/logic/e;

    invoke-static {v2}, Lcom/jxphone/mosecurity/logic/e;->a(Lcom/jxphone/mosecurity/logic/e;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keniu/security/a;->ay()J

    move-result-wide v2

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 225
    const/4 v6, 0x3

    if-lt v1, v6, :cond_2

    .line 227
    sub-long v1, v4, v2

    const-wide/32 v6, 0x5265c00

    cmp-long v1, v1, v6

    if-ltz v1, :cond_3

    .line 229
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/f;->a:Lcom/jxphone/mosecurity/logic/e;

    invoke-static {v1}, Lcom/jxphone/mosecurity/logic/e;->a(Lcom/jxphone/mosecurity/logic/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/keniu/security/a;->c(I)V

    move v1, v8

    .line 239
    :goto_0
    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/f;->a:Lcom/jxphone/mosecurity/logic/e;

    invoke-static {v1}, Lcom/jxphone/mosecurity/logic/e;->a(Lcom/jxphone/mosecurity/logic/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/keniu/security/a;->f(J)V

    .line 243
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/mosecurity/crash.zip"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 246
    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/f;->a:Lcom/jxphone/mosecurity/logic/e;

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/logic/e;->a([Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 249
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/f;->a:Lcom/jxphone/mosecurity/logic/e;

    const-string v2, "mosec_crash"

    const-string v3, "http://report.sj.ijinshan.com/report/debug/upload"

    invoke-static {v2, v0, v3, v1}, Lcom/jxphone/mosecurity/logic/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Lcom/keniu/security/g;->a()Lcom/keniu/security/g;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/keniu/security/g;->a(Z)V

    .line 257
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 265
    :cond_1
    :goto_1
    return-void

    .line 233
    :cond_2
    sub-long v2, v4, v2

    const-wide/32 v6, 0x1b7740

    cmp-long v2, v2, v6

    if-ltz v2, :cond_3

    .line 235
    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/f;->a:Lcom/jxphone/mosecurity/logic/e;

    invoke-static {v2}, Lcom/jxphone/mosecurity/logic/e;->a(Lcom/jxphone/mosecurity/logic/e;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/keniu/security/a;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v8

    .line 236
    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move v1, v9

    goto :goto_0
.end method
