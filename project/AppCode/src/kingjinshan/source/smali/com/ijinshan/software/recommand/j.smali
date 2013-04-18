.class final Lcom/ijinshan/software/recommand/j;
.super Landroid/widget/ArrayAdapter;
.source "NecessaryInstalledActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ijinshan/software/recommand/j;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/software/recommand/j;->b:Ljava/util/Map;

    .line 83
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 91
    iget-object v0, p0, Lcom/ijinshan/software/recommand/j;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 93
    if-nez v0, :cond_4

    .line 94
    iget-object v0, p0, Lcom/ijinshan/software/recommand/j;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->d(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/software/recommand/q;

    .line 95
    invoke-virtual {p0}, Lcom/ijinshan/software/recommand/j;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 97
    new-instance v2, Lcom/ijinshan/software/recommand/k;

    invoke-direct {v2, p0}, Lcom/ijinshan/software/recommand/k;-><init>(Lcom/ijinshan/software/recommand/j;)V

    .line 98
    const v3, 0x7f030081

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 99
    const v1, 0x7f08022c

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/ijinshan/software/recommand/k;->b:Landroid/widget/TextView;

    .line 100
    const v1, 0x7f08022d

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/ijinshan/software/recommand/k;->c:Landroid/widget/TextView;

    .line 101
    const v1, 0x7f08022b

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/ijinshan/software/recommand/k;->a:Landroid/widget/ImageView;

    .line 102
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    iget-object v1, v2, Lcom/ijinshan/software/recommand/k;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/ijinshan/software/recommand/q;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, v0, Lcom/ijinshan/software/recommand/q;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ijinshan/software/recommand/q;->d:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 107
    :cond_0
    iget-object v1, v2, Lcom/ijinshan/software/recommand/k;->c:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/ijinshan/software/recommand/q;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    iget-object v1, v2, Lcom/ijinshan/software/recommand/k;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isDrawingCacheEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    iget-object v1, v2, Lcom/ijinshan/software/recommand/k;->a:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 121
    new-instance v0, Lcom/ijinshan/software/recommand/n;

    invoke-direct {v0}, Lcom/ijinshan/software/recommand/n;-><init>()V

    new-array v1, v8, [Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/ijinshan/software/recommand/k;->a:Landroid/widget/ImageView;

    aput-object v4, v1, v9

    invoke-virtual {v0, v1}, Lcom/ijinshan/software/recommand/n;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    iget-object v0, v2, Lcom/ijinshan/software/recommand/k;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/software/recommand/j;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    .line 131
    :goto_1
    return-object v0

    .line 110
    :cond_2
    iget-object v1, v0, Lcom/ijinshan/software/recommand/q;->e:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/ijinshan/software/recommand/j;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    const v4, 0x7f0b070b

    invoke-virtual {v1, v4}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    :goto_2
    iget-object v4, v2, Lcom/ijinshan/software/recommand/k;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ijinshan/software/recommand/j;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    const v6, 0x7f0b070a

    invoke-virtual {v5, v6}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/ijinshan/software/recommand/q;->c:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v1, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 113
    :cond_3
    iget-object v1, v0, Lcom/ijinshan/software/recommand/q;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Lcom/keniu/security/util/ax;->f(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 128
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    goto :goto_1
.end method
