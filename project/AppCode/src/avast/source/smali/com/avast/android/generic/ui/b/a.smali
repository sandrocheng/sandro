.class public abstract Lcom/avast/android/generic/ui/b/a;
.super Landroid/widget/BaseAdapter;
.source "ProblemChecker.java"


# instance fields
.field private a:Landroid/support/v4/app/Fragment;

.field private b:Ljava/util/List;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/avast/android/generic/ui/b/a;->a:Landroid/support/v4/app/Fragment;

    .line 32
    iput-object p1, p0, Lcom/avast/android/generic/ui/b/a;->c:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private a(ILcom/avast/android/generic/ui/b/c;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/b/d;

    .line 190
    iget-object v1, p2, Lcom/avast/android/generic/ui/b/c;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/avast/android/generic/ui/b/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/b/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p2, Lcom/avast/android/generic/ui/b/c;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/avast/android/generic/ui/b/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/b/d;->c(Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v0}, Lcom/avast/android/generic/ui/b/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p2, Lcom/avast/android/generic/ui/b/c;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avast/android/generic/ui/b/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/avast/android/generic/q;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p2, Lcom/avast/android/generic/ui/b/c;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avast/android/generic/ui/b/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/avast/android/generic/q;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    return-object v0
.end method

.method protected abstract a(Landroid/content/Context;Ljava/util/List;Z)V
.end method

.method public declared-synchronized a(Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 74
    invoke-virtual {p0, p1, v0, p2}, Lcom/avast/android/generic/ui/b/a;->a(Landroid/content/Context;Ljava/util/List;Z)V

    .line 76
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/b/d;

    .line 78
    invoke-virtual {v0}, Lcom/avast/android/generic/ui/b/d;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/generic/ui/b/a;->b(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Z)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 94
    iget-object v1, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/ui/b/a;->a(Landroid/content/Context;Z)V

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/b/a;->b()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 146
    :cond_0
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 153
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avast/android/generic/ui/b/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    move-object p2, v0

    .line 181
    :goto_0
    return-object p2

    .line 168
    :cond_1
    if-nez p2, :cond_2

    .line 169
    iget-object v1, p0, Lcom/avast/android/generic/ui/b/a;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/avast/android/generic/v;->w:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 170
    new-instance v1, Lcom/avast/android/generic/ui/b/c;

    invoke-direct {v1, p0, v0}, Lcom/avast/android/generic/ui/b/c;-><init>(Lcom/avast/android/generic/ui/b/a;Lcom/avast/android/generic/ui/b/b;)V

    .line 171
    sget v0, Lcom/avast/android/generic/t;->N:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avast/android/generic/ui/b/c;->a:Landroid/widget/TextView;

    .line 172
    sget v0, Lcom/avast/android/generic/t;->E:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avast/android/generic/ui/b/c;->b:Landroid/widget/TextView;

    .line 173
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 179
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/avast/android/generic/ui/b/a;->a(ILcom/avast/android/generic/ui/b/c;)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/b/c;

    goto :goto_1
.end method
