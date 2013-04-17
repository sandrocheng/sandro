.class final Lqu;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lqt;


# direct methods
.method constructor <init>(Lqt;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lqu;->a:Lqt;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lqu;->a:Lqt;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lma;

    new-instance v2, Ljava/io/File;

    sget-object v3, Ldx;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_0
    iget-object v2, v1, Lqt;->b:Lsl;

    if-nez v2, :cond_1

    new-instance v2, Lsl;

    invoke-direct {v2}, Lsl;-><init>()V

    iput-object v2, v1, Lqt;->b:Lsl;

    :cond_1
    :try_start_0
    new-instance v2, Llv;

    invoke-direct {v2}, Llv;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Llv;->b:I

    iget-object v3, v0, Lma;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, v2, Lmp;->g:I

    iget-object v3, v0, Lma;->c:Ljava/lang/String;

    iput-object v3, v2, Llv;->d:Ljava/lang/String;

    const/4 v3, 0x3

    iput v3, v2, Llv;->a:I

    new-instance v3, Lqv;

    invoke-direct {v3, v1, v0}, Lqv;-><init>(Lqt;Lma;)V

    iput-object v3, v2, Lmp;->i:Labu$a;

    iget-object v0, v1, Lqt;->b:Lsl;

    invoke-virtual {v0, v2}, Lsl;->b(Lmp;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lqu;->a:Lqt;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llx;

    new-instance v2, Ljava/io/File;

    sget-object v3, Ldx;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_2
    iget-object v2, v1, Lqt;->b:Lsl;

    if-nez v2, :cond_3

    new-instance v2, Lsl;

    invoke-direct {v2}, Lsl;-><init>()V

    iput-object v2, v1, Lqt;->b:Lsl;

    :cond_3
    :try_start_1
    new-instance v2, Llv;

    invoke-direct {v2}, Llv;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Llv;->b:I

    iget-object v3, v0, Llx;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, v2, Lmp;->g:I

    iget-object v3, v0, Llx;->c:Ljava/lang/String;

    iput-object v3, v2, Llv;->d:Ljava/lang/String;

    const/4 v3, 0x3

    iput v3, v2, Llv;->a:I

    const/4 v3, 0x0

    iput-boolean v3, v2, Llv;->e:Z

    new-instance v3, Lqw;

    invoke-direct {v3, v1, v0}, Lqw;-><init>(Lqt;Llx;)V

    iput-object v3, v2, Lmp;->i:Labu$a;

    iget-object v0, v1, Lqt;->b:Lsl;

    invoke-virtual {v0, v2}, Lsl;->b(Lmp;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
