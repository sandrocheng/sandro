.class Lcom/avast/android/mobilesecurity/app/scanner/ac;
.super Landroid/widget/BaseAdapter;
.source "ScannerLogFragment.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/util/Map;

.field c:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 602
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 603
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ac;->a:Landroid/content/Context;

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ac;->c:Ljava/util/List;

    .line 605
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ac;->b:Ljava/util/Map;

    .line 606
    return-void
.end method

.method private a(Lcom/avast/android/mobilesecurity/engine/v;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 717
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 719
    const/16 v0, 0x7c

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 720
    if-lez v0, :cond_0

    .line 721
    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ac;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/scanner/ai;->a(Lcom/avast/android/mobilesecurity/engine/v;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 729
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ac;->a:Landroid/content/Context;

    const v2, 0x7f0c0233

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p2, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 732
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private a(Lcom/avast/android/mobilesecurity/engine/x;Lcom/avast/android/mobilesecurity/engine/v;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 700
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/x;->j:Lcom/avast/android/mobilesecurity/engine/x;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/avast/android/mobilesecurity/engine/x;->k:Lcom/avast/android/mobilesecurity/engine/x;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/avast/android/mobilesecurity/engine/x;->d:Lcom/avast/android/mobilesecurity/engine/x;

    if-ne p1, v0, :cond_1

    .line 703
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/avast/android/mobilesecurity/app/scanner/ac;->a(Lcom/avast/android/mobilesecurity/engine/v;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ac;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/scanner/ai;->a(Lcom/avast/android/mobilesecurity/engine/x;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(ILcom/avast/android/mobilesecurity/app/scanner/ad;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 663
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ac;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ac;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 664
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/app/scanner/ae;

    .line 665
    iget-object v2, p2, Lcom/avast/android/mobilesecurity/app/scanner/ad;->a:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/avast/android/mobilesecurity/app/scanner/ae;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;

    .line 669
    iget-object v4, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->e:Lcom/avast/android/mobilesecurity/engine/x;

    iget-object v5, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->f:Lcom/avast/android/mobilesecurity/engine/v;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->d:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v0}, Lcom/avast/android/mobilesecurity/app/scanner/ac;->a(Lcom/avast/android/mobilesecurity/engine/x;Lcom/avast/android/mobilesecurity/engine/v;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    const-string v0, "<br/>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 672
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v3, 0x5

    if-le v0, v3, :cond_1

    .line 673
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 676
    :cond_1
    iget-object v0, p2, Lcom/avast/android/mobilesecurity/app/scanner/ad;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v0, v1, Lcom/avast/android/mobilesecurity/app/scanner/ae;->e:Lcom/avast/android/mobilesecurity/engine/x;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    if-eq v0, v1, :cond_2

    .line 679
    iget-object v0, p2, Lcom/avast/android/mobilesecurity/app/scanner/ad;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ac;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 683
    :goto_1
    return-void

    .line 681
    :cond_2
    iget-object v0, p2, Lcom/avast/android/mobilesecurity/app/scanner/ad;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ac;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 610
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ac;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 611
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ac;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 612
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 613
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ac;->notifyDataSetInvalidated()V

    .line 619
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ac;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 616
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ac;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 617
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ac;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ac;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 628
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ac;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ac;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 633
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 640
    if-nez p2, :cond_0

    .line 641
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030089

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 642
    new-instance v1, Lcom/avast/android/mobilesecurity/app/scanner/ad;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/ad;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/ac;Lcom/avast/android/mobilesecurity/app/scanner/y;)V

    .line 643
    const v0, 0x7f070140

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/app/scanner/ad;->a:Landroid/widget/TextView;

    .line 644
    const v0, 0x7f0701b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/app/scanner/ad;->b:Landroid/widget/TextView;

    .line 645
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 651
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/avast/android/mobilesecurity/app/scanner/ac;->a(ILcom/avast/android/mobilesecurity/app/scanner/ad;)V

    .line 653
    return-object p2

    .line 648
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/scanner/ad;

    goto :goto_0
.end method
