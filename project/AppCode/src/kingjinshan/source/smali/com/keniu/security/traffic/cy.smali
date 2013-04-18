.class final Lcom/keniu/security/traffic/cy;
.super Landroid/os/Handler;
.source "TrafficSoftListActivity2.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Vector;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 277
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 278
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    new-instance v1, Lcom/keniu/security/traffic/cz;

    iget-object v2, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-direct {v1, v2, p1}, Lcom/keniu/security/traffic/cz;-><init>(Landroid/content/Context;Ljava/util/Vector;)V

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Lcom/keniu/security/traffic/cz;)Lcom/keniu/security/traffic/cz;

    .line 281
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/RadioGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 282
    iget-object v1, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    const v2, 0x7f0803e1

    invoke-virtual {v0, v2}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/RadioGroup;)Landroid/widget/RadioGroup;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0803e2

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 285
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    iget-object v1, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-virtual {v1}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->b(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Lcom/keniu/security/traffic/cz;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 288
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->j(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 291
    iget-object v1, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    const v2, 0x7f0803e7

    invoke-virtual {v0, v2}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->j(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 296
    iget-wide v1, v0, Lcom/keniu/security/traffic/y;->j:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_8

    .line 301
    new-instance v1, Ljava/util/Date;

    iget-wide v2, v0, Lcom/keniu/security/traffic/y;->j:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 302
    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    .line 314
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->k(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_3

    .line 315
    iget-object v3, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    const v4, 0x7f0803e4

    invoke-virtual {v0, v4}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->b(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->k(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u81f3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->k(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->l(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_4

    .line 320
    iget-object v1, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    const v2, 0x7f0803e5

    invoke-virtual {v0, v2}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->c(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->l(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_5

    .line 324
    iget-object v1, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    const v2, 0x7f0803e6

    invoke-virtual {v0, v2}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 325
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_6

    .line 327
    iget-object v1, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    const v2, 0x7f0801d1

    invoke-virtual {v0, v2}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 328
    :cond_6
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    :cond_7
    return-void

    .line 307
    :cond_8
    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 250
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 273
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/util/Vector;

    invoke-static {v0, p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Ljava/util/Vector;)Ljava/util/Vector;

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v1, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Vector;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->b(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Ljava/util/Vector;)Ljava/util/Vector;

    .line 267
    :pswitch_2
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    new-instance v2, Lcom/keniu/security/traffic/cz;

    iget-object v3, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-direct {v2, v3, v0}, Lcom/keniu/security/traffic/cz;-><init>(Landroid/content/Context;Ljava/util/Vector;)V

    invoke-static {v1, v2}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Lcom/keniu/security/traffic/cz;)Lcom/keniu/security/traffic/cz;

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/RadioGroup;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    const v2, 0x7f0803e1

    invoke-virtual {v0, v2}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/RadioGroup;)Landroid/widget/RadioGroup;

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0803e2

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    iget-object v1, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-virtual {v1}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/ListView;)Landroid/widget/ListView;

    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->b(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Lcom/keniu/security/traffic/cz;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->j(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    const v2, 0x7f0803e7

    invoke-virtual {v0, v2}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->j(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-wide v1, v0, Lcom/keniu/security/traffic/y;->j:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_8

    new-instance v1, Ljava/util/Date;

    iget-wide v2, v0, Lcom/keniu/security/traffic/y;->j:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    :goto_1
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->k(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    const v4, 0x7f0803e4

    invoke-virtual {v0, v4}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->b(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->k(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u81f3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->k(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->l(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    const v2, 0x7f0803e5

    invoke-virtual {v0, v2}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->c(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->l(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    const v2, 0x7f0803e6

    invoke-virtual {v0, v2}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    const v2, 0x7f0801d1

    invoke-virtual {v0, v2}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_6
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    :cond_7
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 262
    :pswitch_3
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->e(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)V

    .line 263
    iget-object v0, p0, Lcom/keniu/security/traffic/cy;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 267
    :cond_8
    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    goto/16 :goto_1

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
