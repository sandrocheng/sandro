.class final Lcom/avast/android/mobilesecurity/app/fileshield/q;
.super Landroid/os/Handler;
.source "FileShieldService.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    .line 401
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 402
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    .line 407
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 409
    :pswitch_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->c(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->d(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->b:Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->e(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/j;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->b:Ljava/lang/String;

    const-wide/16 v2, 0x80

    invoke-virtual {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/fileshield/j;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    goto :goto_0

    .line 420
    :pswitch_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->c(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->b:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->e(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/j;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->b:Ljava/lang/String;

    const-wide/16 v2, 0x100

    invoke-virtual {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/fileshield/j;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 461
    :catch_1
    move-exception v0

    goto :goto_0

    .line 432
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->b:Ljava/lang/String;

    .line 433
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/l;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/fileshield/l;-><init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->b(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    :catch_2
    move-exception v0

    goto :goto_0

    .line 438
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->b:Ljava/lang/String;

    .line 439
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/m;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/fileshield/m;-><init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->b(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 445
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 446
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 449
    new-instance v2, Lcom/avast/android/mobilesecurity/app/fileshield/s;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0}, Lcom/avast/android/mobilesecurity/app/fileshield/s;-><init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/q;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->b(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
