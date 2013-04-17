.class public final Lacr$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lbrp;


# direct methods
.method public constructor <init>(Lbrp;)V
    .locals 0

    iput-object p1, p0, Lacr$d;->a:Lbrp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lacr$b;I)V
    .locals 7

    const/4 v1, 0x1

    const/4 v3, 0x3

    const/4 v0, 0x0

    const/4 v2, -0x1

    sget-object v4, Lbrp$1;->b:[I

    invoke-virtual {p1}, Lacr$b;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lacr$d;->a:Lbrp;

    iget-object v1, p0, Lacr$d;->a:Lbrp;

    invoke-static {v1}, Lbrp;->o(Lbrp;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0b04ce

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1, v2}, Lbrp;->a(Lbrp;ILjava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lacr$d;->a:Lbrp;

    invoke-static {v0}, Lbrp;->p(Lbrp;)J

    new-instance v0, Lhd;

    invoke-direct {v0}, Lhd;-><init>()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lacr$d;->a:Lbrp;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lacr$d;->a:Lbrp;

    invoke-static {v5}, Lbrp;->q(Lbrp;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b04b5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lacr$d;->a:Lbrp;

    invoke-static {v5}, Lbrp;->r(Lbrp;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b04bb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4, v2}, Lbrp;->a(Lbrp;ILjava/lang/String;I)V

    iget-object v1, p0, Lacr$d;->a:Lbrp;

    iget-object v2, p0, Lacr$d;->a:Lbrp;

    invoke-static {v2}, Lbrp;->s(Lbrp;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lacr$d;->a:Lbrp;

    invoke-static {v3}, Lbrp;->t(Lbrp;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b02b0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lbrp;->a(Lbrp;Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lacr$d;->a:Lbrp;

    iget-object v1, p0, Lacr$d;->a:Lbrp;

    invoke-static {v1}, Lbrp;->u(Lbrp;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0b04bc

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1, v2}, Lbrp;->a(Lbrp;ILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v4, p0, Lacr$d;->a:Lbrp;

    invoke-static {v4}, Lbrp;->E(Lbrp;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    :goto_1
    iget-object v4, p0, Lacr$d;->a:Lbrp;

    invoke-static {v4}, Lbrp;->v(Lbrp;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b04c2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lacr$d;->a:Lbrp;

    invoke-static {v1}, Lbrp;->w(Lbrp;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0b04c3

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move v2, v3

    :goto_2
    iget-object v3, p0, Lacr$d;->a:Lbrp;

    invoke-static {v3, v2, v0, v1}, Lbrp;->a(Lbrp;ILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lacr$d;->a:Lbrp;

    invoke-static {v3}, Lbrp;->x(Lbrp;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b04c4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_6
    iget-object v1, p0, Lacr$d;->a:Lbrp;

    iget-object v3, p0, Lacr$d;->a:Lbrp;

    invoke-static {v3}, Lbrp;->y(Lbrp;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b04c0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3, v2}, Lbrp;->a(Lbrp;ILjava/lang/String;I)V

    iget-object v1, p0, Lacr$d;->a:Lbrp;

    iget-object v2, p0, Lacr$d;->a:Lbrp;

    invoke-static {v2}, Lbrp;->s(Lbrp;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lacr$d;->a:Lbrp;

    invoke-static {v3}, Lbrp;->z(Lbrp;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0402

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lbrp;->a(Lbrp;Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lacr$d;->a:Lbrp;

    iget-object v3, p0, Lacr$d;->a:Lbrp;

    invoke-static {v3}, Lbrp;->A(Lbrp;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b030a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3, v2}, Lbrp;->a(Lbrp;ILjava/lang/String;I)V

    iget-object v1, p0, Lacr$d;->a:Lbrp;

    iget-object v2, p0, Lacr$d;->a:Lbrp;

    invoke-static {v2}, Lbrp;->s(Lbrp;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lacr$d;->a:Lbrp;

    invoke-static {v3}, Lbrp;->B(Lbrp;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b02a9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lbrp;->a(Lbrp;Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    :pswitch_8
    if-nez p2, :cond_2

    iget-object v0, p0, Lacr$d;->a:Lbrp;

    invoke-static {v0}, Lbrp;->C(Lbrp;)Lacr$a;

    move-result-object v0

    sget-object v1, Lacr$a;->a:Lacr$a;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6656

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    :cond_2
    :goto_3
    iget-object v0, p0, Lacr$d;->a:Lbrp;

    iget-object v1, p0, Lacr$d;->a:Lbrp;

    invoke-static {v1}, Lbrp;->s(Lbrp;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lbrp;->a(Lbrp;Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lacr$d;->a:Lbrp;

    invoke-static {v0}, Lbrp;->D(Lbrp;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lacr$d;->a:Lbrp;

    invoke-static {v0}, Lbrp;->C(Lbrp;)Lacr$a;

    move-result-object v0

    sget-object v1, Lacr$a;->b:Lacr$a;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6657

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
