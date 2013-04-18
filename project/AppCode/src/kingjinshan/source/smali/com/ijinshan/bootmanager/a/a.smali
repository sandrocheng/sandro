.class public final Lcom/ijinshan/bootmanager/a/a;
.super Landroid/widget/BaseAdapter;
.source "OnBootInfoAdapter.java"


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/ijinshan/bootmanager/a/a;->a:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/ijinshan/bootmanager/a/a;->b:Landroid/content/Context;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/bootmanager/a/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ijinshan/bootmanager/a/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ijinshan/bootmanager/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/bootmanager/b/a;

    invoke-virtual {p0, p2}, Lcom/ijinshan/bootmanager/b/a;->a(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ijinshan/bootmanager/a/a;->a:Ljava/util/List;

    .line 30
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ijinshan/bootmanager/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ijinshan/bootmanager/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    new-instance v1, Lcom/ijinshan/bootmanager/a/c;

    invoke-direct {v1, p0}, Lcom/ijinshan/bootmanager/a/c;-><init>(Lcom/ijinshan/bootmanager/a/a;)V

    .line 55
    iget-object v0, p0, Lcom/ijinshan/bootmanager/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030022

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 57
    const v0, 0x7f0800d6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/ijinshan/bootmanager/a/c;->a:Landroid/widget/ImageView;

    .line 59
    const v0, 0x7f0800d7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ijinshan/bootmanager/a/c;->b:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0800d8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ijinshan/bootmanager/a/c;->c:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0800d5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/ijinshan/bootmanager/a/c;->e:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/ijinshan/bootmanager/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/bootmanager/b/a;

    .line 68
    iget-object v3, v1, Lcom/ijinshan/bootmanager/a/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v3, v1, Lcom/ijinshan/bootmanager/a/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v3, v1, Lcom/ijinshan/bootmanager/a/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.ijinshan.mguard"

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, v1, Lcom/ijinshan/bootmanager/a/c;->e:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    :cond_0
    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    iget-object v3, v1, Lcom/ijinshan/bootmanager/a/c;->e:Landroid/widget/Button;

    const-string v4, "\u7981\u6b62"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    iget-object v1, v1, Lcom/ijinshan/bootmanager/a/c;->e:Landroid/widget/Button;

    new-instance v3, Lcom/ijinshan/bootmanager/a/b;

    invoke-direct {v3, p0, v0}, Lcom/ijinshan/bootmanager/a/b;-><init>(Lcom/ijinshan/bootmanager/a/a;Lcom/ijinshan/bootmanager/b/a;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-object v2

    .line 79
    :cond_1
    iget-object v3, v1, Lcom/ijinshan/bootmanager/a/c;->e:Landroid/widget/Button;

    const-string v4, "\u5141\u8bb8"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
