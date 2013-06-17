.class public Lcom/avg/ui/general/o;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/avg/ui/general/q;

.field private static b:Ljava/util/List;

.field private static c:[Lcom/avg/ui/general/s;

.field private static d:[Lcom/avg/ui/general/s;

.field private static e:Ljava/util/List;

.field private static f:[Lcom/avg/ui/general/s;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/avg/ui/general/q;->b:Lcom/avg/ui/general/q;

    sput-object v0, Lcom/avg/ui/general/o;->a:Lcom/avg/ui/general/q;

    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v7, [Lcom/avg/ui/general/t;

    sget-object v2, Lcom/avg/ui/general/t;->a:Lcom/avg/ui/general/t;

    aput-object v2, v1, v3

    sget-object v2, Lcom/avg/ui/general/t;->b:Lcom/avg/ui/general/t;

    aput-object v2, v1, v4

    sget-object v2, Lcom/avg/ui/general/t;->c:Lcom/avg/ui/general/t;

    aput-object v2, v1, v5

    sget-object v2, Lcom/avg/ui/general/t;->d:Lcom/avg/ui/general/t;

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/avg/ui/general/o;->b:Ljava/util/List;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/avg/ui/general/s;

    sget-object v1, Lcom/avg/ui/general/s;->a:Lcom/avg/ui/general/s;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avg/ui/general/s;->b:Lcom/avg/ui/general/s;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avg/ui/general/s;->d:Lcom/avg/ui/general/s;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avg/ui/general/s;->e:Lcom/avg/ui/general/s;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avg/ui/general/s;->f:Lcom/avg/ui/general/s;

    aput-object v1, v0, v7

    sput-object v0, Lcom/avg/ui/general/o;->c:[Lcom/avg/ui/general/s;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/avg/ui/general/s;

    sget-object v1, Lcom/avg/ui/general/s;->a:Lcom/avg/ui/general/s;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avg/ui/general/s;->b:Lcom/avg/ui/general/s;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avg/ui/general/s;->c:Lcom/avg/ui/general/s;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avg/ui/general/s;->d:Lcom/avg/ui/general/s;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avg/ui/general/s;->e:Lcom/avg/ui/general/s;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/avg/ui/general/s;->f:Lcom/avg/ui/general/s;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avg/ui/general/o;->d:[Lcom/avg/ui/general/s;

    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Lcom/avg/ui/general/t;

    sget-object v2, Lcom/avg/ui/general/t;->a:Lcom/avg/ui/general/t;

    aput-object v2, v1, v3

    sget-object v2, Lcom/avg/ui/general/t;->b:Lcom/avg/ui/general/t;

    aput-object v2, v1, v4

    sget-object v2, Lcom/avg/ui/general/t;->d:Lcom/avg/ui/general/t;

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/avg/ui/general/o;->e:Ljava/util/List;

    new-array v0, v7, [Lcom/avg/ui/general/s;

    sget-object v1, Lcom/avg/ui/general/s;->a:Lcom/avg/ui/general/s;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avg/ui/general/s;->d:Lcom/avg/ui/general/s;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avg/ui/general/s;->e:Lcom/avg/ui/general/s;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avg/ui/general/s;->f:Lcom/avg/ui/general/s;

    aput-object v1, v0, v6

    sput-object v0, Lcom/avg/ui/general/o;->f:[Lcom/avg/ui/general/s;

    return-void
.end method

.method public static a(Lcom/avg/ui/general/r;)I
    .locals 2

    sget-object v0, Lcom/avg/ui/general/p;->a:[I

    sget-object v1, Lcom/avg/ui/general/o;->a:Lcom/avg/ui/general/q;

    invoke-virtual {v1}, Lcom/avg/ui/general/q;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    sget v0, Lcom/avg/ui/general/c;->app_landing_actionbar_avg_free:I

    :goto_1
    return v0

    :pswitch_0
    sget-object v0, Lcom/avg/ui/general/p;->b:[I

    invoke-virtual {p0}, Lcom/avg/ui/general/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    sget-object v0, Lcom/avg/ui/general/p;->b:[I

    invoke-virtual {p0}, Lcom/avg/ui/general/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/avg/ui/general/c;->app_landing_actionbar_avg_free:I

    goto :goto_1

    :pswitch_3
    sget v0, Lcom/avg/ui/general/c;->tablet_actionbar_logo_free:I

    goto :goto_1

    :pswitch_4
    sget v0, Lcom/avg/ui/general/c;->tablet_actionbar_logo_free_back:I

    goto :goto_1

    :pswitch_5
    sget v0, Lcom/avg/ui/general/c;->tablet_actionbar_logo_free_back_p:I

    goto :goto_1

    :pswitch_6
    sget v0, Lcom/avg/ui/general/c;->app_landing_actionbar_avg_free:I

    goto :goto_1

    :pswitch_7
    sget v0, Lcom/avg/ui/general/c;->app_landing_actionbar_avg_free:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static a()Ljava/util/List;
    .locals 4

    sget-object v0, Lcom/avg/ui/general/p;->a:[I

    sget-object v1, Lcom/avg/ui/general/o;->a:Lcom/avg/ui/general/q;

    invoke-virtual {v1}, Lcom/avg/ui/general/q;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/avg/ui/general/t;

    const/4 v2, 0x0

    sget-object v3, Lcom/avg/ui/general/t;->e:Lcom/avg/ui/general/t;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/avg/ui/general/o;->e:Ljava/util/List;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/avg/ui/general/o;->b:Ljava/util/List;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Lcom/avg/ui/general/r;)I
    .locals 2

    sget-object v0, Lcom/avg/ui/general/p;->a:[I

    sget-object v1, Lcom/avg/ui/general/o;->a:Lcom/avg/ui/general/q;

    invoke-virtual {v1}, Lcom/avg/ui/general/q;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    sget v0, Lcom/avg/ui/general/c;->app_landing_actionbar_avg_pro:I

    :goto_1
    return v0

    :pswitch_0
    sget-object v0, Lcom/avg/ui/general/p;->b:[I

    invoke-virtual {p0}, Lcom/avg/ui/general/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    sget-object v0, Lcom/avg/ui/general/p;->b:[I

    invoke-virtual {p0}, Lcom/avg/ui/general/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    :pswitch_2
    sget-object v0, Lcom/avg/ui/general/p;->b:[I

    invoke-virtual {p0}, Lcom/avg/ui/general/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/avg/ui/general/c;->nook_actionbar_logo_pro:I

    goto :goto_1

    :pswitch_4
    sget v0, Lcom/avg/ui/general/c;->tablet_actionbar_logo_pro:I

    goto :goto_1

    :pswitch_5
    sget v0, Lcom/avg/ui/general/c;->tablet_actionbar_logo_pro_back:I

    goto :goto_1

    :pswitch_6
    sget v0, Lcom/avg/ui/general/c;->tablet_actionbar_logo_pro_back_p:I

    goto :goto_1

    :pswitch_7
    sget v0, Lcom/avg/ui/general/c;->app_landing_actionbar_avg_pro:I

    goto :goto_1

    :pswitch_8
    sget v0, Lcom/avg/ui/general/c;->app_landing_actionbar_avg_pro:I

    goto :goto_1

    :pswitch_9
    sget v0, Lcom/avg/ui/general/c;->app_landing_actionbar_avg_pro:I

    goto :goto_1

    :pswitch_a
    sget v0, Lcom/avg/ui/general/c;->nook_actionbar_logo_pro_back:I

    goto :goto_1

    :pswitch_b
    sget v0, Lcom/avg/ui/general/c;->nook_actionbar_logo_pro_back_p:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static b()[Lcom/avg/ui/general/s;
    .locals 2

    sget-object v0, Lcom/avg/ui/general/p;->a:[I

    sget-object v1, Lcom/avg/ui/general/o;->a:Lcom/avg/ui/general/q;

    invoke-virtual {v1}, Lcom/avg/ui/general/q;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/avg/ui/general/o;->d:[Lcom/avg/ui/general/s;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/avg/ui/general/o;->f:[Lcom/avg/ui/general/s;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/avg/ui/general/o;->c:[Lcom/avg/ui/general/s;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/avg/ui/general/o;->d:[Lcom/avg/ui/general/s;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static c()Z
    .locals 2

    sget-object v0, Lcom/avg/ui/general/o;->a:Lcom/avg/ui/general/q;

    sget-object v1, Lcom/avg/ui/general/q;->a:Lcom/avg/ui/general/q;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/avg/ui/general/o;->a:Lcom/avg/ui/general/q;

    sget-object v1, Lcom/avg/ui/general/q;->c:Lcom/avg/ui/general/q;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
