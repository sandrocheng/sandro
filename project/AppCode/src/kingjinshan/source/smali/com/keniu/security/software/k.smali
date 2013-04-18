.class final Lcom/keniu/security/software/k;
.super Landroid/widget/BaseAdapter;
.source "APKManagerActivity.java"


# instance fields
.field public a:Ljava/util/List;

.field final synthetic b:Lcom/keniu/security/software/APKManagerActivity;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/ijinshan/kinghelper/a/f;


# direct methods
.method public constructor <init>(Lcom/keniu/security/software/APKManagerActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/keniu/security/software/k;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1001
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/software/k;->c:Landroid/view/LayoutInflater;

    .line 1002
    iput-object p3, p0, Lcom/keniu/security/software/k;->a:Ljava/util/List;

    .line 1003
    invoke-static {p2}, Lcom/ijinshan/kinghelper/a/f;->a(Landroid/content/Context;)Lcom/ijinshan/kinghelper/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/software/k;->d:Lcom/ijinshan/kinghelper/a/f;

    .line 1004
    return-void
.end method

.method private a(I)Lcom/keniu/security/d/a;
    .locals 1
    .parameter

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/keniu/security/software/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/d/a;

    return-object p0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/keniu/security/software/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 994
    invoke-direct {p0, p1}, Lcom/keniu/security/software/k;->a(I)Lcom/keniu/security/d/a;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 1018
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f080134

    const v3, 0x7f03003f

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1026
    invoke-direct {p0, p1}, Lcom/keniu/security/software/k;->a(I)Lcom/keniu/security/d/a;

    move-result-object v0

    iget v0, v0, Lcom/keniu/security/d/a;->e:I

    .line 1027
    if-ne v0, v9, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/keniu/security/software/k;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-virtual {v0}, Lcom/keniu/security/software/APKManagerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1030
    invoke-virtual {v1, v8}, Landroid/view/View;->setClickable(Z)V

    .line 1031
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1033
    iget-object v2, p0, Lcom/keniu/security/software/k;->b:Lcom/keniu/security/software/APKManagerActivity;

    const v3, 0x7f0b0569

    invoke-virtual {v2, v3}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/keniu/security/software/k;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v4}, Lcom/keniu/security/software/APKManagerActivity;->j(Lcom/keniu/security/software/APKManagerActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 1099
    :goto_0
    return-object v0

    .line 1039
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1040
    iget-object v0, p0, Lcom/keniu/security/software/k;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-virtual {v0}, Lcom/keniu/security/software/APKManagerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1042
    invoke-virtual {v1, v8}, Landroid/view/View;->setClickable(Z)V

    .line 1043
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1045
    iget-object v2, p0, Lcom/keniu/security/software/k;->b:Lcom/keniu/security/software/APKManagerActivity;

    const v3, 0x7f0b056a

    invoke-virtual {v2, v3}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/keniu/security/software/k;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v4}, Lcom/keniu/security/software/APKManagerActivity;->k(Lcom/keniu/security/software/APKManagerActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 1048
    goto :goto_0

    .line 1050
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/m;

    if-nez v0, :cond_4

    .line 1052
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/software/k;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030072

    invoke-virtual {v0, v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1054
    new-instance v2, Lcom/keniu/security/software/m;

    invoke-direct {v2, p0}, Lcom/keniu/security/software/m;-><init>(Lcom/keniu/security/software/k;)V

    .line 1055
    const v0, 0x7f0801ed

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/keniu/security/software/m;->a:Landroid/widget/ImageView;

    .line 1057
    const v0, 0x7f0801ee

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/keniu/security/software/m;->b:Landroid/widget/TextView;

    .line 1059
    const v0, 0x7f0801ef

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/keniu/security/software/m;->d:Landroid/widget/TextView;

    .line 1061
    const v0, 0x7f0800b2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lcom/keniu/security/software/m;->c:Landroid/widget/CheckBox;

    .line 1063
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    .line 1069
    :goto_1
    invoke-direct {p0, p1}, Lcom/keniu/security/software/k;->a(I)Lcom/keniu/security/d/a;

    move-result-object v2

    .line 1070
    iget-object v3, p0, Lcom/keniu/security/software/k;->d:Lcom/ijinshan/kinghelper/a/f;

    invoke-virtual {v2}, Lcom/keniu/security/d/a;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/keniu/security/software/m;->a:Landroid/widget/ImageView;

    new-instance v6, Lcom/keniu/security/software/p;

    invoke-direct {v6}, Lcom/keniu/security/software/p;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Lcom/ijinshan/kinghelper/a/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/ijinshan/kinghelper/a/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1073
    if-eqz v3, :cond_3

    .line 1074
    iget-object v4, v0, Lcom/keniu/security/software/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1076
    :cond_3
    iget-object v3, v0, Lcom/keniu/security/software/m;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/keniu/security/d/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    invoke-virtual {v2}, Lcom/keniu/security/d/a;->k()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1079
    iget-object v3, v0, Lcom/keniu/security/software/m;->d:Landroid/widget/TextView;

    const v4, 0x7f0b0579

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1087
    :goto_2
    iget-object v3, v0, Lcom/keniu/security/software/m;->c:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Lcom/keniu/security/d/a;->h()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1088
    iget-object v2, v0, Lcom/keniu/security/software/m;->c:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1089
    iget-object v0, v0, Lcom/keniu/security/software/m;->c:Landroid/widget/CheckBox;

    new-instance v2, Lcom/keniu/security/software/l;

    invoke-direct {v2, p0}, Lcom/keniu/security/software/l;-><init>(Lcom/keniu/security/software/k;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    .line 1099
    goto/16 :goto_0

    .line 1066
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/m;

    move-object v1, p2

    goto :goto_1

    .line 1081
    :cond_5
    iget-object v3, v0, Lcom/keniu/security/software/m;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/keniu/security/software/k;->b:Lcom/keniu/security/software/APKManagerActivity;

    const v5, 0x7f0b056f

    invoke-virtual {v4, v5}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/keniu/security/d/a;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/keniu/security/util/ax;->f(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2}, Lcom/keniu/security/d/a;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
