.class final Lcom/keniu/security/i/s;
.super Landroid/os/Handler;
.source "FileWatchManager.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/i/r;


# direct methods
.method constructor <init>(Lcom/keniu/security/i/r;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/keniu/security/i/s;->a:Lcom/keniu/security/i/r;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 219
    sget v0, Lcom/keniu/security/i/o;->e:I

    const/16 v1, 0x4e1f

    if-lt v0, v1, :cond_0

    .line 220
    const/16 v0, 0x2710

    sput v0, Lcom/keniu/security/i/o;->e:I

    .line 222
    :cond_0
    sget v0, Lcom/keniu/security/i/o;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/keniu/security/i/o;->e:I

    .line 223
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_1

    .line 224
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 225
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 226
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 227
    packed-switch v2, :pswitch_data_0

    .line 267
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 229
    :pswitch_1
    iget-object v2, p0, Lcom/keniu/security/i/s;->a:Lcom/keniu/security/i/r;

    invoke-static {v2, v1, v0}, Lcom/keniu/security/i/r;->a(Lcom/keniu/security/i/r;ILjava/lang/String;)V

    goto :goto_0

    .line 232
    :pswitch_2
    iget-object v2, p0, Lcom/keniu/security/i/s;->a:Lcom/keniu/security/i/r;

    invoke-static {v2, v1, v0}, Lcom/keniu/security/i/r;->a(Lcom/keniu/security/i/r;ILjava/lang/String;)V

    goto :goto_0

    .line 235
    :pswitch_3
    iget-object v2, p0, Lcom/keniu/security/i/s;->a:Lcom/keniu/security/i/r;

    invoke-static {v2, v1, v0}, Lcom/keniu/security/i/r;->b(Lcom/keniu/security/i/r;ILjava/lang/String;)V

    goto :goto_0

    .line 238
    :pswitch_4
    iget-object v2, p0, Lcom/keniu/security/i/s;->a:Lcom/keniu/security/i/r;

    iget-object v2, v2, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v2}, Lcom/keniu/security/i/o;->a(Lcom/keniu/security/i/o;)[Lcom/keniu/security/i/u;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2, v3}, Lcom/keniu/security/i/u;->a(I)I

    .line 240
    iget-object v2, p0, Lcom/keniu/security/i/s;->a:Lcom/keniu/security/i/r;

    invoke-static {v2, v1, v0}, Lcom/keniu/security/i/r;->b(Lcom/keniu/security/i/r;ILjava/lang/String;)V

    goto :goto_0

    .line 243
    :pswitch_5
    iget-object v2, p0, Lcom/keniu/security/i/s;->a:Lcom/keniu/security/i/r;

    iget-object v2, v2, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v2}, Lcom/keniu/security/i/o;->a(Lcom/keniu/security/i/o;)[Lcom/keniu/security/i/u;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2, v3}, Lcom/keniu/security/i/u;->a(I)I

    .line 245
    iget-object v2, p0, Lcom/keniu/security/i/s;->a:Lcom/keniu/security/i/r;

    invoke-static {v2, v1, v0}, Lcom/keniu/security/i/r;->b(Lcom/keniu/security/i/r;ILjava/lang/String;)V

    goto :goto_0

    .line 248
    :pswitch_6
    iget-object v2, p0, Lcom/keniu/security/i/s;->a:Lcom/keniu/security/i/r;

    iget-object v2, v2, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v2}, Lcom/keniu/security/i/o;->a(Lcom/keniu/security/i/o;)[Lcom/keniu/security/i/u;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2, v3}, Lcom/keniu/security/i/u;->a(I)I

    .line 250
    iget-object v2, p0, Lcom/keniu/security/i/s;->a:Lcom/keniu/security/i/r;

    invoke-static {v2, v1, v0}, Lcom/keniu/security/i/r;->b(Lcom/keniu/security/i/r;ILjava/lang/String;)V

    goto :goto_0

    .line 253
    :pswitch_7
    iget-object v2, p0, Lcom/keniu/security/i/s;->a:Lcom/keniu/security/i/r;

    iget-object v2, v2, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v2}, Lcom/keniu/security/i/o;->a(Lcom/keniu/security/i/o;)[Lcom/keniu/security/i/u;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2, v3}, Lcom/keniu/security/i/u;->a(I)I

    .line 255
    iget-object v2, p0, Lcom/keniu/security/i/s;->a:Lcom/keniu/security/i/r;

    invoke-static {v2, v1, v0}, Lcom/keniu/security/i/r;->b(Lcom/keniu/security/i/r;ILjava/lang/String;)V

    goto :goto_0

    .line 258
    :pswitch_8
    iget-object v0, p0, Lcom/keniu/security/i/s;->a:Lcom/keniu/security/i/r;

    iget-object v0, v0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v0}, Lcom/keniu/security/i/o;->a(Lcom/keniu/security/i/o;)[Lcom/keniu/security/i/u;

    move-result-object v0

    aget-object v0, v0, v3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/i/u;->a(I)I

    goto :goto_0

    .line 262
    :pswitch_9
    iget-object v0, p0, Lcom/keniu/security/i/s;->a:Lcom/keniu/security/i/r;

    iget-object v0, v0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v0}, Lcom/keniu/security/i/o;->a(Lcom/keniu/security/i/o;)[Lcom/keniu/security/i/u;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Lcom/keniu/security/i/u;->a(I)I

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
