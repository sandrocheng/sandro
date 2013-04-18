.class public final Lcom/keniu/security/util/aw;
.super Ljava/lang/Object;
.source "ProgressDialogCtrler.java"


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/util/aw;->a:Landroid/app/ProgressDialog;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/util/aw;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/keniu/security/util/aw;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/keniu/security/util/aw;->a:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/keniu/security/util/aw;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/keniu/security/util/aw;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 39
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/keniu/security/util/aw;->a:Landroid/app/ProgressDialog;

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 13
    const/4 v0, 0x0

    const v1, 0x7f0b0472

    invoke-virtual {p0, p1, v0, v1}, Lcom/keniu/security/util/aw;->a(Landroid/content/Context;II)V

    .line 14
    return-void
.end method

.method public final a(Landroid/content/Context;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    sget-object v1, Lcom/keniu/security/util/ae;->d:Lcom/keniu/security/util/ae;

    invoke-static {v0, v1}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/keniu/security/util/aw;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/keniu/security/util/aw;->a:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    .line 24
    iget-object v2, p0, Lcom/keniu/security/util/aw;->a:Landroid/app/ProgressDialog;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 30
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 26
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {p1, v2, v0, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/util/aw;->a:Landroid/app/ProgressDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
