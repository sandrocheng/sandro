.class final Lcom/ijinshan/kinghelper/firewall/ff;
.super Landroid/widget/ResourceCursorAdapter;
.source "UserWhiteBlackListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ff;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    .line 273
    const v0, 0x7f0300b2

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, p3, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 274
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/fe;

    .line 281
    invoke-static {p3}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v1

    .line 282
    iget v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    packed-switch v2, :pswitch_data_0

    .line 325
    :goto_0
    :pswitch_0
    iget v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    if-ne v2, v9, :cond_2

    .line 327
    const v1, 0x7f0b00c6

    .line 333
    :goto_1
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ff;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->b(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)I

    move-result v2

    if-ne v2, v9, :cond_4

    .line 334
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/fe;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 341
    :goto_2
    return-void

    .line 284
    :pswitch_1
    iget-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    iget-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 286
    iget-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 292
    :cond_0
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ff;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    const v3, 0x7f0b0186

    invoke-virtual {v2, v3}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-static {p2}, Lcom/jxphone/mosecurity/d/a;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/a;

    move-result-object v3

    .line 295
    iget-object v4, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/jxphone/mosecurity/d/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 299
    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/fe;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v4

    .line 306
    :goto_3
    iget-object v3, v0, Lcom/ijinshan/kinghelper/firewall/fe;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/fe;->c:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 301
    :cond_1
    iget-object v4, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/jxphone/mosecurity/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    iget-object v3, v0, Lcom/ijinshan/kinghelper/firewall/fe;->a:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 310
    :pswitch_2
    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/fe;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/ff;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    const v4, 0x7f0b0197

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/fe;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/ff;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    const v4, 0x7f0b0198

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 318
    :pswitch_3
    iget-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 319
    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/fe;->a:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/fe;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/ff;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    const v4, 0x7f0b0199

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 328
    :cond_2
    iget v1, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 329
    const v1, 0x7f0b00c7

    goto/16 :goto_1

    .line 331
    :cond_3
    const v1, 0x7f0b00c5

    goto/16 :goto_1

    .line 336
    :cond_4
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/fe;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 346
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/fe;

    invoke-direct {v1}, Lcom/ijinshan/kinghelper/firewall/fe;-><init>()V

    .line 347
    const v2, 0x7f08029c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/kinghelper/firewall/fe;->a:Landroid/widget/TextView;

    .line 349
    const v2, 0x7f08029e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/kinghelper/firewall/fe;->b:Landroid/widget/TextView;

    .line 351
    const v2, 0x7f08029d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/kinghelper/firewall/fe;->c:Landroid/widget/TextView;

    .line 356
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 357
    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    return-void
.end method
