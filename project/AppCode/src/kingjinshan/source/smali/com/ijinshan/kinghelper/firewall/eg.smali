.class public final Lcom/ijinshan/kinghelper/firewall/eg;
.super Landroid/widget/BaseAdapter;
.source "ServicesSmsListActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/eg;->c:Z

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    .line 449
    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/eg;->b:Landroid/content/Context;

    .line 450
    return-void
.end method

.method private static a(Lcom/ijinshan/kinghelper/firewall/ei;)I
    .locals 3
    .parameter

    .prologue
    .line 705
    const/4 v0, 0x0

    .line 706
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 707
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ej;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 709
    :cond_0
    return v0
.end method

.method private a(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;)V
    .locals 6
    .parameter

    .prologue
    .line 593
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/eg;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->h(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)Lcom/ijinshan/kinghelper/firewall/dq;

    move-result-object v0

    iget-object v1, p1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dq;->a(Ljava/lang/String;)I

    move-result v0

    .line 595
    if-lez v0, :cond_3

    sget v1, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    if-ge v0, v1, :cond_3

    .line 597
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 598
    sget v0, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    move v1, v0

    .line 613
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    .line 614
    iget v3, v0, Lcom/ijinshan/kinghelper/firewall/ei;->b:I

    if-ne v3, v1, :cond_0

    .line 616
    const/4 v2, 0x0

    .line 617
    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 619
    iget-object v4, v1, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    iget-object v5, p1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 621
    const/4 v2, 0x1

    .line 622
    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/ej;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 627
    :goto_1
    if-nez v1, :cond_2

    .line 628
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/ej;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/ej;-><init>(Lcom/ijinshan/kinghelper/firewall/eg;)V

    .line 629
    iget-object v2, p1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    .line 630
    iget-object v2, v1, Lcom/ijinshan/kinghelper/firewall/ej;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    iget-object v2, p1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/ej;->d:Ljava/lang/String;

    .line 634
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_2
    return-void

    .line 600
    :cond_3
    if-nez v0, :cond_6

    .line 601
    iget-object v0, p1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;)I

    move-result v0

    .line 605
    if-nez v0, :cond_4

    .line 606
    sget v0, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    move v1, v0

    goto :goto_0

    .line 608
    :cond_4
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->h(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)Lcom/ijinshan/kinghelper/firewall/dq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/dq;->b(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 609
    sget v0, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    move v1, v0

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    move v1, v0

    goto :goto_0
.end method

.method private static a(Lcom/ijinshan/kinghelper/firewall/ei;Lcom/ijinshan/kinghelper/firewall/ei;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 461
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 462
    iget-object v1, p1, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    :cond_0
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    .line 556
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/a/e;->b()Ljava/util/List;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->h(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)Lcom/ijinshan/kinghelper/firewall/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/firewall/dq;->b()Ljava/util/List;

    move-result-object v1

    .line 559
    const/4 v2, 0x0

    .line 561
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/a/k;

    .line 562
    new-instance v4, Lcom/ijinshan/kinghelper/firewall/ei;

    invoke-direct {v4, p0}, Lcom/ijinshan/kinghelper/firewall/ei;-><init>(Lcom/ijinshan/kinghelper/firewall/eg;)V

    .line 564
    iget-object v5, v0, Lcom/ijinshan/kinghelper/firewall/a/k;->b:Ljava/lang/String;

    iput-object v5, v4, Lcom/ijinshan/kinghelper/firewall/ei;->e:Ljava/lang/String;

    .line 565
    iget-object v5, v0, Lcom/ijinshan/kinghelper/firewall/a/k;->c:Ljava/lang/String;

    iput-object v5, v4, Lcom/ijinshan/kinghelper/firewall/ei;->f:Ljava/lang/String;

    .line 566
    iget v5, v0, Lcom/ijinshan/kinghelper/firewall/a/k;->a:I

    iput v5, v4, Lcom/ijinshan/kinghelper/firewall/ei;->b:I

    .line 568
    iget-object v5, p0, Lcom/ijinshan/kinghelper/firewall/eg;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-static {v5}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->h(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)Lcom/ijinshan/kinghelper/firewall/dq;

    move-result-object v5

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/k;->a:I

    invoke-virtual {v5, v0}, Lcom/ijinshan/kinghelper/firewall/dq;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 572
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/dr;

    .line 573
    new-instance v3, Lcom/ijinshan/kinghelper/firewall/ei;

    invoke-direct {v3, p0}, Lcom/ijinshan/kinghelper/firewall/ei;-><init>(Lcom/ijinshan/kinghelper/firewall/eg;)V

    .line 575
    iget-object v4, v0, Lcom/ijinshan/kinghelper/firewall/dr;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/ei;->e:Ljava/lang/String;

    .line 576
    iget-object v4, v0, Lcom/ijinshan/kinghelper/firewall/dr;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/ei;->f:Ljava/lang/String;

    .line 577
    iget v4, v0, Lcom/ijinshan/kinghelper/firewall/dr;->b:I

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/ei;->b:I

    .line 579
    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/dr;->b:I

    sget v4, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    if-ne v0, v4, :cond_2

    move-object v2, v3

    .line 581
    goto :goto_1

    .line 584
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 587
    :cond_3
    if-eqz v2, :cond_4

    .line 588
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_4
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 479
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/firewall/ei;

    iget-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/ei;->d:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/ijinshan/kinghelper/firewall/ei;->d:Z

    .line 480
    return-void

    .line 479
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 504
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/ei;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/ei;-><init>(Lcom/ijinshan/kinghelper/firewall/eg;)V

    .line 506
    iput p1, v0, Lcom/ijinshan/kinghelper/firewall/ei;->b:I

    .line 507
    iput-object p3, v0, Lcom/ijinshan/kinghelper/firewall/ei;->f:Ljava/lang/String;

    .line 508
    iput-object p2, v0, Lcom/ijinshan/kinghelper/firewall/ei;->e:Ljava/lang/String;

    .line 510
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 514
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 8
    .parameter

    .prologue
    .line 643
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/a/e;->b()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/eg;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->h(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)Lcom/ijinshan/kinghelper/firewall/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ijinshan/kinghelper/firewall/dq;->b()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kinghelper/firewall/a/k;

    new-instance v5, Lcom/ijinshan/kinghelper/firewall/ei;

    invoke-direct {v5, p0}, Lcom/ijinshan/kinghelper/firewall/ei;-><init>(Lcom/ijinshan/kinghelper/firewall/eg;)V

    iget-object v6, v1, Lcom/ijinshan/kinghelper/firewall/a/k;->b:Ljava/lang/String;

    iput-object v6, v5, Lcom/ijinshan/kinghelper/firewall/ei;->e:Ljava/lang/String;

    iget-object v6, v1, Lcom/ijinshan/kinghelper/firewall/a/k;->c:Ljava/lang/String;

    iput-object v6, v5, Lcom/ijinshan/kinghelper/firewall/ei;->f:Ljava/lang/String;

    iget v6, v1, Lcom/ijinshan/kinghelper/firewall/a/k;->a:I

    iput v6, v5, Lcom/ijinshan/kinghelper/firewall/ei;->b:I

    iget-object v6, p0, Lcom/ijinshan/kinghelper/firewall/eg;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-static {v6}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->h(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)Lcom/ijinshan/kinghelper/firewall/dq;

    move-result-object v6

    iget v1, v1, Lcom/ijinshan/kinghelper/firewall/a/k;->a:I

    invoke-virtual {v6, v1}, Lcom/ijinshan/kinghelper/firewall/dq;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kinghelper/firewall/dr;

    new-instance v4, Lcom/ijinshan/kinghelper/firewall/ei;

    invoke-direct {v4, p0}, Lcom/ijinshan/kinghelper/firewall/ei;-><init>(Lcom/ijinshan/kinghelper/firewall/eg;)V

    iget-object v5, v1, Lcom/ijinshan/kinghelper/firewall/dr;->a:Ljava/lang/String;

    iput-object v5, v4, Lcom/ijinshan/kinghelper/firewall/ei;->e:Ljava/lang/String;

    iget-object v5, v1, Lcom/ijinshan/kinghelper/firewall/dr;->c:Ljava/lang/String;

    iput-object v5, v4, Lcom/ijinshan/kinghelper/firewall/ei;->f:Ljava/lang/String;

    iget v5, v1, Lcom/ijinshan/kinghelper/firewall/dr;->b:I

    iput v5, v4, Lcom/ijinshan/kinghelper/firewall/ei;->b:I

    iget v1, v1, Lcom/ijinshan/kinghelper/firewall/dr;->b:I

    sget v5, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    if-ne v1, v5, :cond_2

    move-object v3, v4

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 647
    :cond_5
    const-string v1, "address"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 649
    const-string v2, "body"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 651
    const-string v3, "date"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 653
    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 657
    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/j;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 658
    new-instance v6, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;

    invoke-direct {v6}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;-><init>()V

    .line 661
    iput-object v2, v6, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->b:Ljava/lang/String;

    .line 662
    iput-wide v3, v6, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->a:J

    .line 663
    iput-object v1, v6, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->d:Ljava/lang/String;

    .line 664
    iput v5, v6, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->c:I

    .line 666
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->h(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)Lcom/ijinshan/kinghelper/firewall/dq;

    move-result-object v1

    iget-object v2, v6, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ijinshan/kinghelper/firewall/dq;->a(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_b

    sget v2, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    if-ge v1, v2, :cond_b

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(I)Z

    move-result v2

    if-nez v2, :cond_e

    sget v1, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    move v3, v1

    :goto_2
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    move-object v2, v0

    iget v1, v2, Lcom/ijinshan/kinghelper/firewall/ei;->b:I

    if-ne v1, v3, :cond_6

    const/4 v3, 0x0

    iget-object v1, v2, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kinghelper/firewall/ej;

    iget-object v5, v1, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    iget-object v7, v6, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->d:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v3, 0x1

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/ej;->a:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    :goto_3
    if-nez v1, :cond_8

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/ej;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/ej;-><init>(Lcom/ijinshan/kinghelper/firewall/eg;)V

    iget-object v3, v6, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->d:Ljava/lang/String;

    iput-object v3, v1, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/ijinshan/kinghelper/firewall/ej;->a:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v6, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/ijinshan/kinghelper/firewall/ej;->d:Ljava/lang/String;

    iget-object v2, v2, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    :cond_8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 670
    :cond_9
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_a

    .line 671
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 673
    :cond_a
    return-void

    .line 666
    :cond_b
    if-nez v1, :cond_e

    iget-object v1, v6, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    sget v1, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    move v3, v1

    goto :goto_2

    :cond_c
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/eg;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->h(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)Lcom/ijinshan/kinghelper/firewall/dq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ijinshan/kinghelper/firewall/dq;->b(I)Z

    move-result v2

    if-eqz v2, :cond_e

    sget v1, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    move v3, v1

    goto/16 :goto_2

    :cond_d
    move v1, v3

    goto :goto_3

    :cond_e
    move v3, v1

    goto/16 :goto_2
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->c:Z

    .line 454
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/eg;->c:Z

    return v0
.end method

.method public final b()Ljava/util/List;
    .locals 4

    .prologue
    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 468
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/firewall/ei;

    .line 470
    iget-boolean v2, p0, Lcom/ijinshan/kinghelper/firewall/ei;->d:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/ei;->b:I

    sget v3, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    if-eq v2, v3, :cond_0

    .line 472
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 475
    :cond_1
    return-object v0
.end method

.method public final b(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 484
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    .line 487
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    move v2, v1

    :goto_0
    if-ltz v2, :cond_2

    .line 488
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kinghelper/firewall/ei;

    .line 490
    iget-boolean v3, v1, Lcom/ijinshan/kinghelper/firewall/ei;->d:Z

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/ijinshan/kinghelper/firewall/ei;->b:I

    sget v4, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    if-eq v3, v4, :cond_1

    .line 494
    if-nez p1, :cond_0

    .line 495
    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kinghelper/firewall/ej;

    iget-object v4, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 487
    :cond_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 501
    :cond_2
    return-void
.end method

.method public final c()I
    .locals 4

    .prologue
    .line 517
    const/4 v0, 0x0

    .line 518
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/firewall/ei;

    .line 519
    iget-boolean v2, p0, Lcom/ijinshan/kinghelper/firewall/ei;->d:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/ei;->b:I

    sget v3, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    if-eq v2, v3, :cond_0

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    :cond_1
    return v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    return-object v0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/eg;->c:Z

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 690
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 695
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 700
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 720
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    .line 721
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->b:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 723
    const v2, 0x7f0300eb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 724
    const v1, 0x7f080284

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 726
    const v2, 0x7f080285

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 728
    const v3, 0x7f080282

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 730
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/ijinshan/kinghelper/firewall/ei;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 731
    iget-boolean v6, p0, Lcom/ijinshan/kinghelper/firewall/eg;->c:Z

    if-eqz v6, :cond_0

    .line 732
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 733
    iget-boolean v6, v0, Lcom/ijinshan/kinghelper/firewall/ei;->d:Z

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 738
    :goto_0
    new-instance v6, Lcom/ijinshan/kinghelper/firewall/eh;

    invoke-direct {v6, p0}, Lcom/ijinshan/kinghelper/firewall/eh;-><init>(Lcom/ijinshan/kinghelper/firewall/eg;)V

    .line 739
    iput-object v3, v6, Lcom/ijinshan/kinghelper/firewall/eh;->a:Landroid/widget/CheckBox;

    .line 740
    iput p1, v6, Lcom/ijinshan/kinghelper/firewall/eh;->b:I

    .line 741
    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 742
    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 744
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ei;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    return-object v4

    .line 735
    :cond_0
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 680
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/eh;

    .line 682
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eg;->d:Ljava/util/List;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/eh;->b:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/firewall/ei;

    iput-boolean p2, p0, Lcom/ijinshan/kinghelper/firewall/ei;->d:Z

    .line 683
    return-void
.end method
