.class final Lcom/jxphone/mosecurity/activity/friend/z;
.super Lcom/keniu/security/importx/k;
.source "FriendCallLogActivity.java"


# instance fields
.field protected final a:Landroid/view/LayoutInflater;

.field protected final b:Landroid/content/Context;

.field protected final c:Ljava/util/List;

.field protected final d:[Lcom/jxphone/mosecurity/c/j;

.field protected final e:Z

.field final synthetic f:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;


# direct methods
.method public constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;Landroid/content/Context;[Lcom/jxphone/mosecurity/c/j;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/z;->f:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-direct {p0}, Lcom/keniu/security/importx/k;-><init>()V

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/z;->c:Ljava/util/List;

    .line 299
    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/friend/z;->b:Landroid/content/Context;

    .line 300
    iput-object p3, p0, Lcom/jxphone/mosecurity/activity/friend/z;->d:[Lcom/jxphone/mosecurity/c/j;

    .line 301
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/z;->a:Landroid/view/LayoutInflater;

    .line 302
    iput-boolean p4, p0, Lcom/jxphone/mosecurity/activity/friend/z;->e:Z

    .line 304
    invoke-direct {p0, p3}, Lcom/jxphone/mosecurity/activity/friend/z;->a([Lcom/jxphone/mosecurity/c/j;)V

    .line 305
    return-void
.end method

.method private a(Lcom/jxphone/mosecurity/activity/friend/b;)I
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 489
    .line 490
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/z;->d:[Lcom/jxphone/mosecurity/c/j;

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 491
    invoke-virtual {v4}, Lcom/jxphone/mosecurity/c/j;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/activity/friend/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/jxphone/mosecurity/c/j;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/jxphone/mosecurity/c/j;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/activity/friend/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 496
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 490
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 499
    :cond_2
    return v3
.end method

.method private a(Landroid/view/View;)Lcom/jxphone/mosecurity/activity/friend/ab;
    .locals 2
    .parameter

    .prologue
    .line 424
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/ab;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/ab;-><init>(Lcom/jxphone/mosecurity/activity/friend/z;)V

    .line 425
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 427
    const v1, 0x7f0800df

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-static {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/ab;->a(Lcom/jxphone/mosecurity/activity/friend/ab;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 429
    const v1, 0x7f0800e0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-static {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/ab;->b(Lcom/jxphone/mosecurity/activity/friend/ab;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 431
    const v1, 0x7f0800e3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/ab;->a(Lcom/jxphone/mosecurity/activity/friend/ab;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 433
    const v1, 0x7f0800e5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/ab;->b(Lcom/jxphone/mosecurity/activity/friend/ab;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 435
    const v1, 0x7f0800e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/ab;->c(Lcom/jxphone/mosecurity/activity/friend/ab;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 437
    const v1, 0x7f0800e1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/ab;->d(Lcom/jxphone/mosecurity/activity/friend/ab;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 439
    const v1, 0x7f0800e4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/ab;->e(Lcom/jxphone/mosecurity/activity/friend/ab;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 441
    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/jxphone/mosecurity/activity/friend/b;
    .locals 2
    .parameter

    .prologue
    .line 503
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/z;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/friend/z;->e:Z

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/jxphone/mosecurity/logic/a/d;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_0

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/b;

    invoke-direct {v1, v0}, Lcom/jxphone/mosecurity/activity/friend/b;-><init>(Lcom/jxphone/mosecurity/c/b;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/jxphone/mosecurity/activity/friend/ab;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 523
    invoke-static {p0}, Lcom/jxphone/mosecurity/activity/friend/ab;->g(Lcom/jxphone/mosecurity/activity/friend/ab;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 524
    return-void
.end method

.method private static a(Lcom/jxphone/mosecurity/activity/friend/ab;Lcom/jxphone/mosecurity/c/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 513
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_0

    .line 515
    invoke-static {p0}, Lcom/jxphone/mosecurity/activity/friend/ab;->f(Lcom/jxphone/mosecurity/activity/friend/ab;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 520
    :goto_0
    return-void

    .line 517
    :cond_0
    invoke-static {p0}, Lcom/jxphone/mosecurity/activity/friend/ab;->f(Lcom/jxphone/mosecurity/activity/friend/ab;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private a([Lcom/jxphone/mosecurity/c/j;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 456
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/z;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v1, v6

    .line 458
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_5

    .line 459
    aget-object v2, p1, v1

    .line 460
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/z;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jxphone/mosecurity/activity/friend/b;

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/j;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/j;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/j;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    move v0, v7

    :goto_1
    if-nez v0, :cond_2

    .line 461
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/j;->d()Ljava/lang/String;

    move-result-object v0

    .line 464
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/z;->b:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/jxphone/mosecurity/activity/friend/z;->e:Z

    invoke-static {v2, v3}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v2

    invoke-interface {v2, v0, v7}, Lcom/jxphone/mosecurity/logic/a/d;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Lcom/jxphone/mosecurity/activity/friend/b;

    invoke-direct {v3, v2}, Lcom/jxphone/mosecurity/activity/friend/b;-><init>(Lcom/jxphone/mosecurity/c/b;)V

    move-object v2, v3

    .line 465
    :goto_2
    if-nez v2, :cond_6

    .line 466
    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/b;

    invoke-direct {v2}, Lcom/jxphone/mosecurity/activity/friend/b;-><init>()V

    .line 467
    invoke-virtual {v2, v0}, Lcom/jxphone/mosecurity/activity/friend/b;->b(Ljava/lang/String;)V

    move-object v0, v2

    .line 469
    :goto_3
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/z;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v6

    .line 460
    goto :goto_1

    .line 464
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 472
    :cond_5
    return-void

    :cond_6
    move-object v0, v2

    goto :goto_3
.end method

.method private static a(Ljava/util/List;Lcom/jxphone/mosecurity/c/j;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 475
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jxphone/mosecurity/activity/friend/b;

    .line 476
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    :cond_1
    const/4 v0, 0x1

    .line 484
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/jxphone/mosecurity/c/b;)Lcom/jxphone/mosecurity/c/j;
    .locals 6
    .parameter

    .prologue
    .line 445
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/z;->d:[Lcom/jxphone/mosecurity/c/j;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 446
    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/j;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/j;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/j;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v0, v3

    .line 452
    :goto_1
    return-object v0

    .line 445
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static c()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/jxphone/mosecurity/activity/friend/b;
    .locals 1
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/z;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jxphone/mosecurity/activity/friend/b;

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 4

    .prologue
    .line 551
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 552
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/z;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jxphone/mosecurity/activity/friend/b;

    .line 553
    iget-boolean v3, v0, Lcom/jxphone/mosecurity/activity/friend/b;->a:Z

    if-eqz v3, :cond_0

    .line 554
    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/z;->a(Lcom/jxphone/mosecurity/c/b;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 557
    :cond_1
    return-object v1
.end method

.method public final a(Lcom/jxphone/mosecurity/c/b;)Ljava/util/List;
    .locals 7
    .parameter

    .prologue
    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 538
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/z;->d:[Lcom/jxphone/mosecurity/c/j;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 539
    invoke-virtual {v4}, Lcom/jxphone/mosecurity/c/j;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/jxphone/mosecurity/c/j;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/jxphone/mosecurity/c/j;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 544
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 547
    :cond_2
    return-object v0
.end method

.method public final a(ILcom/jxphone/mosecurity/c/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/z;->c:Ljava/util/List;

    check-cast p2, Lcom/jxphone/mosecurity/activity/friend/b;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 325
    return-void
.end method

.method public final synthetic b(I)Lcom/jxphone/mosecurity/c/b;
    .locals 1
    .parameter

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/activity/friend/z;->c(I)Lcom/jxphone/mosecurity/activity/friend/b;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lcom/jxphone/mosecurity/activity/friend/b;
    .locals 1
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/z;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jxphone/mosecurity/activity/friend/b;

    return-object p0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/z;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/activity/friend/z;->a(I)Lcom/jxphone/mosecurity/activity/friend/b;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 329
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    if-nez p2, :cond_1

    .line 336
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/z;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ae

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 338
    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/z;->a(Landroid/view/View;)Lcom/jxphone/mosecurity/activity/friend/ab;

    move-result-object v1

    .line 339
    const v2, 0x7f0800e2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 347
    :goto_0
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/z;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jxphone/mosecurity/activity/friend/b;

    .line 348
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/z;->d:[Lcom/jxphone/mosecurity/c/j;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move-object v2, v5

    .line 350
    :goto_2
    if-nez v2, :cond_4

    .line 351
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v1

    .line 420
    :goto_3
    return-object v0

    .line 342
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jxphone/mosecurity/activity/friend/ab;

    .line 343
    if-nez p3, :cond_9

    .line 344
    invoke-direct {p0, p2}, Lcom/jxphone/mosecurity/activity/friend/z;->a(Landroid/view/View;)Lcom/jxphone/mosecurity/activity/friend/ab;

    move-result-object v0

    move-object v1, p2

    goto :goto_0

    .line 348
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 355
    :cond_4
    const/4 v3, 0x0

    .line 356
    const/4 v4, 0x0

    .line 357
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/j;->f()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_5
    move-object v12, v4

    move v4, v3

    move-object v3, v12

    .line 385
    :goto_4
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/ab;->g(Lcom/jxphone/mosecurity/activity/friend/ab;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 386
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/ab;->a(Lcom/jxphone/mosecurity/activity/friend/ab;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/j;->c()J

    move-result-wide v5

    iget-object v7, p0, Lcom/jxphone/mosecurity/activity/friend/z;->b:Landroid/content/Context;

    invoke-static {v5, v6, v7}, Lcom/keniu/security/util/i;->a(JLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/ab;->b(Lcom/jxphone/mosecurity/activity/friend/ab;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/jxphone/mosecurity/activity/friend/z;->b:Landroid/content/Context;

    const v6, 0x7f0b068d

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/jxphone/mosecurity/activity/friend/z;->b:Landroid/content/Context;

    invoke-virtual {v2, v9}, Lcom/jxphone/mosecurity/c/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/ab;->b(Lcom/jxphone/mosecurity/activity/friend/ab;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/jxphone/mosecurity/activity/friend/z;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090061

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 393
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/ab;->c(Lcom/jxphone/mosecurity/activity/friend/ab;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/ab;->c(Lcom/jxphone/mosecurity/activity/friend/ab;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->g()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/ab;->f(Lcom/jxphone/mosecurity/activity/friend/ab;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 396
    :goto_5
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/activity/friend/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 397
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/ab;->d(Lcom/jxphone/mosecurity/activity/friend/ab;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/activity/friend/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/activity/friend/z;->a(Lcom/jxphone/mosecurity/activity/friend/b;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/ab;->e(Lcom/jxphone/mosecurity/activity/friend/ab;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :goto_6
    const v0, 0x7f080292

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 410
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/z;->f:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->c(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 411
    iget-boolean v0, p1, Lcom/jxphone/mosecurity/activity/friend/b;->a:Z

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 412
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/aa;

    invoke-direct {v0, p0, p1}, Lcom/jxphone/mosecurity/activity/friend/aa;-><init>(Lcom/jxphone/mosecurity/activity/friend/z;Lcom/jxphone/mosecurity/activity/friend/b;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object v0, v1

    .line 420
    goto/16 :goto_3

    .line 359
    :pswitch_0
    const v3, 0x7f020011

    .line 360
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/j;->g()Lcom/jxphone/mosecurity/c/c;

    move-result-object v5

    sget-object v6, Lcom/jxphone/mosecurity/c/c;->c:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v5, v6}, Lcom/jxphone/mosecurity/c/c;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 361
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b067f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/j;->i()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    move v4, v3

    move-object v3, v12

    goto/16 :goto_4

    .line 367
    :pswitch_1
    const v3, 0x7f020013

    .line 368
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b067f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/j;->i()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    move v4, v3

    move-object v3, v12

    .line 371
    goto/16 :goto_4

    .line 373
    :pswitch_2
    const v3, 0x7f020012

    .line 375
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/j;->g()Lcom/jxphone/mosecurity/c/c;

    move-result-object v5

    sget-object v6, Lcom/jxphone/mosecurity/c/c;->c:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v5, v6}, Lcom/jxphone/mosecurity/c/c;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 376
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b067d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/j;->h()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    move v4, v3

    move-object v3, v12

    goto/16 :goto_4

    .line 395
    :cond_6
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/ab;->f(Lcom/jxphone/mosecurity/activity/friend/ab;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f020083

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 401
    :cond_7
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/ab;->d(Lcom/jxphone/mosecurity/activity/friend/ab;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/j;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/activity/friend/z;->a(Lcom/jxphone/mosecurity/activity/friend/b;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/ab;->e(Lcom/jxphone/mosecurity/activity/friend/ab;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 410
    :cond_8
    const/16 v0, 0x8

    goto/16 :goto_7

    :cond_9
    move-object/from16 v0, p3

    move-object v1, p2

    goto/16 :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
