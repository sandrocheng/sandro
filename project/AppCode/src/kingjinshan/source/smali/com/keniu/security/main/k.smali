.class public final Lcom/keniu/security/main/k;
.super Ljava/lang/Object;
.source "FeedBackOptionDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/app/Dialog;

.field private d:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/keniu/security/main/k;->a:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/keniu/security/main/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/k;->d:Landroid/content/pm/PackageManager;

    .line 38
    iget-object v0, p0, Lcom/keniu/security/main/k;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/keniu/security/main/k;->b:Landroid/view/LayoutInflater;

    .line 39
    iget-object v0, p0, Lcom/keniu/security/main/k;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300bd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 40
    const v0, 0x7f0802d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 41
    new-instance v2, Lcom/keniu/security/main/m;

    invoke-direct {v2, p0}, Lcom/keniu/security/main/m;-><init>(Lcom/keniu/security/main/k;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    new-instance v2, Lcom/keniu/security/main/l;

    invoke-direct {v2, p0}, Lcom/keniu/security/main/l;-><init>(Lcom/keniu/security/main/k;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 192
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v2, p0, Lcom/keniu/security/main/k;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 193
    const v2, 0x7f0b03f8

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 194
    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 195
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/k;->c:Landroid/app/Dialog;

    .line 196
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/main/k;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/keniu/security/main/k;->d:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/main/k;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/keniu/security/main/k;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/main/k;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/keniu/security/main/k;->b:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/keniu/security/main/k;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 202
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/keniu/security/main/k;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 208
    return-void
.end method
