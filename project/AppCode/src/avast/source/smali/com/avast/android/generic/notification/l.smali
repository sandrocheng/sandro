.class Lcom/avast/android/generic/notification/l;
.super Landroid/os/AsyncTask;
.source "AvastNotificationManager.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/notification/a;

.field final synthetic b:Lcom/avast/android/generic/notification/j;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/notification/j;Lcom/avast/android/generic/notification/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/avast/android/generic/notification/l;->b:Lcom/avast/android/generic/notification/j;

    iput-object p2, p0, Lcom/avast/android/generic/notification/l;->a:Lcom/avast/android/generic/notification/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 251
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 252
    const-string v0, "contentText"

    iget-object v2, p0, Lcom/avast/android/generic/notification/l;->a:Lcom/avast/android/generic/notification/a;

    iget-object v2, v2, Lcom/avast/android/generic/notification/a;->j:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "contentTitle"

    iget-object v2, p0, Lcom/avast/android/generic/notification/l;->a:Lcom/avast/android/generic/notification/a;

    iget-object v2, v2, Lcom/avast/android/generic/notification/a;->i:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "flags"

    iget-object v2, p0, Lcom/avast/android/generic/notification/l;->a:Lcom/avast/android/generic/notification/a;

    iget v2, v2, Lcom/avast/android/generic/notification/a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    const-string v0, "number"

    iget-object v2, p0, Lcom/avast/android/generic/notification/l;->a:Lcom/avast/android/generic/notification/a;

    iget v2, v2, Lcom/avast/android/generic/notification/a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    const-string v2, "ongoing"

    iget-object v0, p0, Lcom/avast/android/generic/notification/l;->a:Lcom/avast/android/generic/notification/a;

    iget v0, v0, Lcom/avast/android/generic/notification/a;->f:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    const-string v2, "percentage"

    iget-object v0, p0, Lcom/avast/android/generic/notification/l;->a:Lcom/avast/android/generic/notification/a;

    iget-wide v3, v0, Lcom/avast/android/generic/notification/a;->b:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    const/high16 v0, -0x4080

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 260
    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    iget-object v0, p0, Lcom/avast/android/generic/notification/l;->a:Lcom/avast/android/generic/notification/a;

    iget-object v0, v0, Lcom/avast/android/generic/notification/a;->g:Lcom/avast/android/generic/notification/AvastPendingIntent;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/notification/AvastPendingIntent;->a(Landroid/content/ContentValues;)V

    .line 263
    iget-object v0, p0, Lcom/avast/android/generic/notification/l;->b:Lcom/avast/android/generic/notification/j;

    invoke-static {v0}, Lcom/avast/android/generic/notification/j;->b(Lcom/avast/android/generic/notification/j;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/avast/android/generic/notification/l;->b:Lcom/avast/android/generic/notification/j;

    invoke-static {v2}, Lcom/avast/android/generic/notification/j;->a(Lcom/avast/android/generic/notification/j;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/generic/notification/l;->a:Lcom/avast/android/generic/notification/a;

    iget-wide v3, v3, Lcom/avast/android/generic/notification/a;->a:J

    invoke-static {v2, v3, v4}, Lcom/avast/android/generic/e;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 266
    return-object v7

    .line 256
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/notification/l;->a:Lcom/avast/android/generic/notification/a;

    iget-wide v3, v0, Lcom/avast/android/generic/notification/a;->c:J

    long-to-float v0, v3

    iget-object v3, p0, Lcom/avast/android/generic/notification/l;->a:Lcom/avast/android/generic/notification/a;

    iget-wide v3, v3, Lcom/avast/android/generic/notification/a;->b:J

    long-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x42c8

    mul-float/2addr v0, v3

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 248
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/notification/l;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
