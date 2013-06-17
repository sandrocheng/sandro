.class public Lcom/avg/toolkit/e/a/m;
.super Ljava/lang/Object;


# direct methods
.method static a(Lcom/avg/toolkit/e/a/o;B)Lcom/avg/toolkit/e/a/t;
    .locals 2

    sget-object v0, Lcom/avg/toolkit/e/a/n;->a:[I

    invoke-virtual {p0}, Lcom/avg/toolkit/e/a/o;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    sget-object v0, Lcom/avg/toolkit/e/a/t;->a:Lcom/avg/toolkit/e/a/t;

    :goto_1
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/avg/toolkit/e/a/t;->b:Lcom/avg/toolkit/e/a/t;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/avg/toolkit/e/a/t;->c:Lcom/avg/toolkit/e/a/t;

    goto :goto_1

    :pswitch_2
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/avg/toolkit/e/a/t;->d:Lcom/avg/toolkit/e/a/t;

    goto :goto_1

    :pswitch_4
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/avg/toolkit/e/a/t;->e:Lcom/avg/toolkit/e/a/t;

    goto :goto_1

    :pswitch_6
    packed-switch p1, :pswitch_data_3

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/avg/toolkit/e/a/t;->f:Lcom/avg/toolkit/e/a/t;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
