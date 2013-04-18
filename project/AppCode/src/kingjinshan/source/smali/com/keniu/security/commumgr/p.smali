.class public final Lcom/keniu/security/commumgr/p;
.super Landroid/widget/BaseAdapter;
.source "OnekeyCallSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/keniu/security/commumgr/p;->a:Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 569
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commumgr/p;->b:Landroid/view/LayoutInflater;

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/commumgr/p;->c:Ljava/util/List;

    .line 571
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 584
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/keniu/security/commumgr/p;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/keniu/security/commumgr/p;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 586
    const-string v2, "num"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 588
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 593
    :goto_1
    return v0

    .line 584
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 593
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/keniu/security/commumgr/p;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 607
    iget-object v1, p0, Lcom/keniu/security/commumgr/p;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 606
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 609
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 574
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 576
    const-string v1, "img"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string v1, "name"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v1, "num"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    iget-object v1, p0, Lcom/keniu/security/commumgr/p;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    return-void
.end method

.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 597
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/commumgr/p;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/keniu/security/commumgr/p;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 599
    const/4 v0, 0x1

    .line 602
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Lcom/keniu/security/commumgr/p;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 615
    if-eqz p0, :cond_0

    .line 617
    const-string v0, "chk"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 618
    if-eqz p0, :cond_0

    .line 620
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 624
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 630
    invoke-virtual {p0, p1}, Lcom/keniu/security/commumgr/p;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 631
    if-eqz p0, :cond_0

    .line 633
    const-string v0, "chk"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    :cond_0
    return v2
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/keniu/security/commumgr/p;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 646
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/commumgr/p;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/keniu/security/commumgr/p;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 650
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 655
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 661
    invoke-virtual {p0, p1}, Lcom/keniu/security/commumgr/p;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 662
    if-nez v0, :cond_0

    move-object v0, v3

    .line 719
    :goto_0
    return-object v0

    .line 666
    :cond_0
    if-nez p2, :cond_2

    .line 668
    iget-object v1, p0, Lcom/keniu/security/commumgr/p;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f03001a

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 671
    new-instance v3, Lcom/keniu/security/commumgr/q;

    invoke-direct {v3, p0}, Lcom/keniu/security/commumgr/q;-><init>(Lcom/keniu/security/commumgr/p;)V

    .line 672
    const v1, 0x7f0800b0

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/keniu/security/commumgr/q;->a:Landroid/widget/ImageView;

    .line 674
    const v1, 0x7f0800b3

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/keniu/security/commumgr/q;->b:Landroid/widget/TextView;

    .line 676
    const v1, 0x7f0800b4

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/keniu/security/commumgr/q;->c:Landroid/widget/TextView;

    .line 678
    const v1, 0x7f0800b1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v3, Lcom/keniu/security/commumgr/q;->d:Landroid/widget/CheckBox;

    .line 680
    const-string v1, "chk"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    iget-object v1, v3, Lcom/keniu/security/commumgr/q;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 683
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v3

    .line 688
    :goto_1
    iget-object v3, v1, Lcom/keniu/security/commumgr/q;->d:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 689
    iget-object v3, v1, Lcom/keniu/security/commumgr/q;->d:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 691
    const-string v3, "chk"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 692
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 694
    iget-object v3, v1, Lcom/keniu/security/commumgr/q;->d:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 701
    :goto_2
    const-string v3, "img"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 702
    iget-object v3, v1, Lcom/keniu/security/commumgr/q;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 704
    const-string v3, "name"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 705
    if-nez p0, :cond_5

    .line 706
    const-string v3, ""

    .line 708
    :goto_3
    const-string v4, "num"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 709
    if-nez p0, :cond_4

    .line 710
    const-string v0, ""

    .line 712
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_1

    .line 713
    const-string v4, "%2B"

    const-string v5, "+"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 716
    :cond_1
    iget-object v4, v1, Lcom/keniu/security/commumgr/q;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v1, v1, Lcom/keniu/security/commumgr/q;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v2

    .line 719
    goto/16 :goto_0

    .line 685
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keniu/security/commumgr/q;

    move-object v2, p2

    goto :goto_1

    .line 698
    :cond_3
    iget-object v3, v1, Lcom/keniu/security/commumgr/q;->d:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_4
    move-object v0, p0

    goto :goto_4

    :cond_5
    move-object v3, p0

    goto :goto_3
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 734
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 735
    if-eqz p0, :cond_0

    .line 737
    const-string v0, "chk"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    :cond_0
    return-void
.end method
