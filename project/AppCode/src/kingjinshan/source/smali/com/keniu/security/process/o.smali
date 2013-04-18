.class final Lcom/keniu/security/process/o;
.super Landroid/widget/BaseAdapter;
.source "ProcessManagerActivity.java"


# instance fields
.field public a:Ljava/util/List;

.field protected b:Landroid/view/View$OnClickListener;

.field final synthetic c:Lcom/keniu/security/process/ProcessManagerActivity;

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/keniu/security/process/ProcessManagerActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 861
    iput-object p1, p0, Lcom/keniu/security/process/o;->c:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 951
    new-instance v0, Lcom/keniu/security/process/p;

    invoke-direct {v0, p0}, Lcom/keniu/security/process/p;-><init>(Lcom/keniu/security/process/o;)V

    iput-object v0, p0, Lcom/keniu/security/process/o;->b:Landroid/view/View$OnClickListener;

    .line 862
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/process/o;->d:Landroid/view/LayoutInflater;

    .line 863
    iput-object p3, p0, Lcom/keniu/security/process/o;->a:Ljava/util/List;

    .line 864
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/process/o;->e:Landroid/content/pm/PackageManager;

    .line 865
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/keniu/security/process/o;->a:Ljava/util/List;

    return-object v0
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 872
    iget-object v0, p0, Lcom/keniu/security/process/o;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 873
    invoke-virtual {p0}, Lcom/keniu/security/process/o;->notifyDataSetChanged()V

    .line 874
    return-void
.end method

.method public final b(I)Lcom/keniu/security/d/e;
    .locals 1
    .parameter

    .prologue
    .line 883
    iget-object v0, p0, Lcom/keniu/security/process/o;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/d/e;

    return-object p0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/keniu/security/process/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 855
    invoke-virtual {p0, p1}, Lcom/keniu/security/process/o;->b(I)Lcom/keniu/security/d/e;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 888
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 896
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/process/q;

    if-nez v0, :cond_1

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/process/o;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f030072

    invoke-virtual {v0, v1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 900
    new-instance v2, Lcom/keniu/security/process/q;

    invoke-direct {v2, p0}, Lcom/keniu/security/process/q;-><init>(Lcom/keniu/security/process/o;)V

    .line 901
    const v0, 0x7f0801ed

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/keniu/security/process/q;->a:Landroid/widget/ImageView;

    .line 903
    const v0, 0x7f0801ee

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/keniu/security/process/q;->b:Landroid/widget/TextView;

    .line 905
    const v0, 0x7f0801ef

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/keniu/security/process/q;->d:Landroid/widget/TextView;

    .line 907
    const v0, 0x7f0800b2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lcom/keniu/security/process/q;->c:Landroid/widget/CheckBox;

    .line 908
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    .line 913
    :goto_0
    invoke-virtual {p0, p1}, Lcom/keniu/security/process/o;->b(I)Lcom/keniu/security/d/e;

    move-result-object v2

    .line 917
    :try_start_0
    iget-object v3, p0, Lcom/keniu/security/process/o;->e:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 921
    :goto_1
    iget-object v4, v0, Lcom/keniu/security/process/q;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 922
    iget-object v3, v0, Lcom/keniu/security/process/q;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/keniu/security/d/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    invoke-virtual {v2}, Lcom/keniu/security/d/e;->d()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 925
    iget-object v3, v0, Lcom/keniu/security/process/q;->d:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    :goto_2
    iget-object v3, p0, Lcom/keniu/security/process/o;->c:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v3}, Lcom/keniu/security/process/ProcessManagerActivity;->l(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/d/m;

    move-result-object v3

    invoke-virtual {v2}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jxphone/mosecurity/d/m;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 932
    iget-object v3, v0, Lcom/keniu/security/process/q;->c:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 933
    iget-object v0, v0, Lcom/keniu/security/process/q;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 934
    invoke-virtual {v2, v8}, Lcom/keniu/security/d/e;->a(Z)V

    .line 941
    :goto_3
    return-object v1

    .line 911
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/process/q;

    move-object v1, p2

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v3, v5

    goto :goto_1

    .line 927
    :cond_2
    iget-object v3, v0, Lcom/keniu/security/process/q;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/keniu/security/process/o;->c:Lcom/keniu/security/process/ProcessManagerActivity;

    const v5, 0x7f0b0538

    invoke-virtual {v4, v5}, Lcom/keniu/security/process/ProcessManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/keniu/security/d/e;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/keniu/security/util/ax;->f(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 936
    :cond_3
    iget-object v3, v0, Lcom/keniu/security/process/q;->c:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 937
    iget-object v3, v0, Lcom/keniu/security/process/q;->c:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Lcom/keniu/security/d/e;->a()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 938
    iget-object v2, v0, Lcom/keniu/security/process/q;->c:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 939
    iget-object v0, v0, Lcom/keniu/security/process/q;->c:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/keniu/security/process/o;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method
