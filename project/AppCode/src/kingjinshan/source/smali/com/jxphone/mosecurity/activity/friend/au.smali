.class final Lcom/jxphone/mosecurity/activity/friend/au;
.super Lcom/keniu/security/importx/k;
.source "FriendSmsActivity.java"


# instance fields
.field protected final a:Landroid/view/LayoutInflater;

.field protected final b:[Lcom/jxphone/mosecurity/c/l;

.field protected final c:Ljava/util/ArrayList;

.field protected final d:Z

.field protected e:Landroid/content/Context;

.field final synthetic f:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;


# direct methods
.method public constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;Landroid/content/Context;[Lcom/jxphone/mosecurity/c/l;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/au;->f:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-direct {p0}, Lcom/keniu/security/importx/k;-><init>()V

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/au;->c:Ljava/util/ArrayList;

    .line 281
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/au;->a:Landroid/view/LayoutInflater;

    .line 282
    iput-object p3, p0, Lcom/jxphone/mosecurity/activity/friend/au;->b:[Lcom/jxphone/mosecurity/c/l;

    .line 283
    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/friend/au;->e:Landroid/content/Context;

    .line 284
    iput-boolean p4, p0, Lcom/jxphone/mosecurity/activity/friend/au;->d:Z

    .line 286
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/au;->b:[Lcom/jxphone/mosecurity/c/l;

    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/au;->a([Lcom/jxphone/mosecurity/c/l;)V

    .line 287
    return-void
.end method

.method private static a(Landroid/view/View;)Lcom/jxphone/mosecurity/activity/friend/aw;
    .locals 6
    .parameter

    .prologue
    .line 409
    new-instance v4, Lcom/jxphone/mosecurity/activity/friend/aw;

    invoke-direct {v4}, Lcom/jxphone/mosecurity/activity/friend/aw;-><init>()V

    .line 410
    invoke-virtual {p0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 411
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 413
    const v1, 0x7f0800e1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 415
    const v2, 0x7f0800e5

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 417
    const v3, 0x7f0800e6

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 419
    const v5, 0x7f0800e4

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 422
    iput-object v0, v4, Lcom/jxphone/mosecurity/activity/friend/aw;->a:Landroid/widget/ImageView;

    .line 423
    iput-object v1, v4, Lcom/jxphone/mosecurity/activity/friend/aw;->b:Landroid/widget/TextView;

    .line 424
    iput-object v2, v4, Lcom/jxphone/mosecurity/activity/friend/aw;->c:Landroid/widget/TextView;

    .line 425
    iput-object v3, v4, Lcom/jxphone/mosecurity/activity/friend/aw;->d:Landroid/widget/TextView;

    .line 426
    iput-object p0, v4, Lcom/jxphone/mosecurity/activity/friend/aw;->e:Landroid/widget/TextView;

    .line 427
    return-object v4
.end method

.method private a(Ljava/lang/String;)Lcom/jxphone/mosecurity/activity/friend/b;
    .locals 2
    .parameter

    .prologue
    .line 479
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/au;->e:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/friend/au;->d:Z

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/jxphone/mosecurity/logic/a/d;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 481
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

.method private a(Lcom/jxphone/mosecurity/c/l;Lcom/jxphone/mosecurity/activity/friend/aw;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/au;->e:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/jxphone/mosecurity/c/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 492
    iget-object v1, p2, Lcom/jxphone/mosecurity/activity/friend/aw;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/au;->e:Landroid/content/Context;

    const v3, 0x7f0b068d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p2, Lcom/jxphone/mosecurity/activity/friend/aw;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/au;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 496
    return-void
.end method

.method private static a(Ljava/lang/String;ILandroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 499
    const v0, 0x7f0800e3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 501
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    const v0, 0x7f0800e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 504
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f02019f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 507
    return-void

    .line 504
    :cond_0
    const v0, 0x7f0201a0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/jxphone/mosecurity/activity/friend/aw;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 486
    iget-object v0, p1, Lcom/jxphone/mosecurity/activity/friend/aw;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    return-void
.end method

.method private a([Lcom/jxphone/mosecurity/c/l;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 431
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/au;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 432
    array-length v1, p1

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, p1, v2

    .line 433
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/au;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jxphone/mosecurity/activity/friend/b;

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    move v0, v8

    :goto_1
    if-nez v0, :cond_3

    .line 434
    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/jxphone/mosecurity/activity/friend/au;->e:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/jxphone/mosecurity/activity/friend/au;->d:Z

    invoke-static {v4, v5}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v4

    invoke-interface {v4, v0, v8}, Lcom/jxphone/mosecurity/logic/a/d;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v4, Lcom/jxphone/mosecurity/activity/friend/b;

    invoke-direct {v4, v0}, Lcom/jxphone/mosecurity/activity/friend/b;-><init>(Lcom/jxphone/mosecurity/c/b;)V

    move-object v0, v4

    .line 438
    :goto_2
    if-nez v0, :cond_2

    .line 439
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/b;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/activity/friend/b;-><init>()V

    .line 440
    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jxphone/mosecurity/activity/friend/b;->b(Ljava/lang/String;)V

    .line 442
    :cond_2
    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jxphone/mosecurity/activity/friend/b;->b(Ljava/lang/String;)V

    .line 443
    iget-object v3, p0, Lcom/jxphone/mosecurity/activity/friend/au;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v7

    .line 433
    goto :goto_1

    .line 434
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 446
    :cond_6
    return-void
.end method

.method private static a(Ljava/util/List;Lcom/jxphone/mosecurity/c/l;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 449
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jxphone/mosecurity/activity/friend/b;

    .line 450
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    :cond_1
    const/4 v0, 0x1

    .line 459
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/jxphone/mosecurity/c/b;)Lcom/jxphone/mosecurity/c/l;
    .locals 6
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/au;->b:[Lcom/jxphone/mosecurity/c/l;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 395
    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v0, v3

    .line 404
    :goto_1
    return-object v0

    .line 394
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c(Lcom/jxphone/mosecurity/c/b;)I
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 464
    .line 465
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/au;->b:[Lcom/jxphone/mosecurity/c/l;

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 466
    invoke-virtual {v4}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 472
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 465
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    :cond_2
    return v3
.end method


# virtual methods
.method public final a(I)Lcom/jxphone/mosecurity/activity/friend/b;
    .locals 1
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/au;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jxphone/mosecurity/activity/friend/b;

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 4

    .prologue
    .line 510
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 511
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/au;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jxphone/mosecurity/activity/friend/b;

    .line 512
    iget-boolean v3, v0, Lcom/jxphone/mosecurity/activity/friend/b;->a:Z

    if-eqz v3, :cond_0

    .line 513
    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/au;->a(Lcom/jxphone/mosecurity/c/b;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 516
    :cond_1
    return-object v1
.end method

.method public final a(Lcom/jxphone/mosecurity/c/b;)Ljava/util/List;
    .locals 7
    .parameter

    .prologue
    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/au;->b:[Lcom/jxphone/mosecurity/c/l;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 292
    invoke-virtual {v4}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    :cond_2
    return-object v0
.end method

.method public final a(ILcom/jxphone/mosecurity/c/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/au;->c:Ljava/util/ArrayList;

    check-cast p2, Lcom/jxphone/mosecurity/activity/friend/b;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 322
    return-void
.end method

.method public final synthetic b(I)Lcom/jxphone/mosecurity/c/b;
    .locals 1
    .parameter

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/activity/friend/au;->c(I)Lcom/jxphone/mosecurity/activity/friend/b;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lcom/jxphone/mosecurity/activity/friend/b;
    .locals 1
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/au;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jxphone/mosecurity/activity/friend/b;

    return-object p0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/au;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/activity/friend/au;->a(I)Lcom/jxphone/mosecurity/activity/friend/b;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 326
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    if-nez p2, :cond_1

    .line 333
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/au;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ae

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 335
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/au;->a(Landroid/view/View;)Lcom/jxphone/mosecurity/activity/friend/aw;

    move-result-object v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 345
    :goto_0
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/au;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jxphone/mosecurity/activity/friend/b;

    .line 346
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/au;->b:[Lcom/jxphone/mosecurity/c/l;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move-object v2, v5

    .line 347
    :goto_2
    iget-object v3, p0, Lcom/jxphone/mosecurity/activity/friend/au;->e:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/jxphone/mosecurity/c/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/jxphone/mosecurity/activity/friend/aw;->e:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jxphone/mosecurity/activity/friend/au;->e:Landroid/content/Context;

    const v6, 0x7f0b068d

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/jxphone/mosecurity/activity/friend/aw;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jxphone/mosecurity/activity/friend/au;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090061

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/activity/friend/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 352
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/activity/friend/b;->g()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 353
    if-eqz v3, :cond_4

    .line 354
    iget-object v4, v0, Lcom/jxphone/mosecurity/activity/friend/aw;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 359
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/activity/friend/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/activity/friend/au;->c(Lcom/jxphone/mosecurity/c/b;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v4

    .line 362
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    move-object v5, v3

    move-object v3, v9

    .line 372
    :goto_4
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->f()I

    move-result v6

    const v7, 0x7f0800e3

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0800e0

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const/4 v5, 0x1

    if-ne v6, v5, :cond_6

    const v5, 0x7f02019f

    :goto_5
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 373
    iget-object v5, v0, Lcom/jxphone/mosecurity/activity/friend/aw;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v4, v0, Lcom/jxphone/mosecurity/activity/friend/aw;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/aw;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->d()J

    move-result-wide v2

    iget-object v4, p0, Lcom/jxphone/mosecurity/activity/friend/au;->e:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/keniu/security/util/i;->a(JLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    const v0, 0x7f080292

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 380
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/au;->f:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->c(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 381
    iget-boolean v0, p1, Lcom/jxphone/mosecurity/activity/friend/b;->a:Z

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 382
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/av;

    invoke-direct {v0, p0, p1}, Lcom/jxphone/mosecurity/activity/friend/av;-><init>(Lcom/jxphone/mosecurity/activity/friend/au;Lcom/jxphone/mosecurity/activity/friend/b;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 390
    return-object v1

    .line 340
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jxphone/mosecurity/activity/friend/aw;

    .line 341
    if-nez p3, :cond_8

    .line 342
    invoke-static {p2}, Lcom/jxphone/mosecurity/activity/friend/au;->a(Landroid/view/View;)Lcom/jxphone/mosecurity/activity/friend/aw;

    move-result-object v0

    move-object v1, p2

    goto/16 :goto_0

    .line 346
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 356
    :cond_4
    iget-object v3, v0, Lcom/jxphone/mosecurity/activity/friend/aw;->a:Landroid/widget/ImageView;

    const v4, 0x7f020083

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 364
    :cond_5
    iget-object v3, v0, Lcom/jxphone/mosecurity/activity/friend/aw;->a:Landroid/widget/ImageView;

    const v4, 0x7f020083

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/activity/friend/au;->c(Lcom/jxphone/mosecurity/c/b;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v4

    .line 369
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    move-object v5, v3

    move-object v3, v9

    goto/16 :goto_4

    .line 372
    :cond_6
    const v5, 0x7f0201a0

    goto/16 :goto_5

    .line 380
    :cond_7
    const/16 v0, 0x8

    goto :goto_6

    :cond_8
    move-object v0, p3

    move-object v1, p2

    goto/16 :goto_0
.end method
