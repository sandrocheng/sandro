.class public final Lcom/keniu/security/main/cd;
.super Ljava/lang/Object;
.source "RecommandDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/app/Dialog;

.field private d:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x1

    const/4 v6, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/keniu/security/main/cd;->a:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/keniu/security/main/cd;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/keniu/security/main/cd;->b:Landroid/view/LayoutInflater;

    .line 38
    iget-object v0, p0, Lcom/keniu/security/main/cd;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/cd;->d:Landroid/content/pm/PackageManager;

    .line 40
    iget-object v0, p0, Lcom/keniu/security/main/cd;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300bd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 41
    const v0, 0x7f0802d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    const-string v3, "tel:100861"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 45
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    const-string v3, "vnd.android-dir/mms-sms"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iget-object v3, p0, Lcom/keniu/security/main/cd;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 49
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 51
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v4, "message/rfc822"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v4, p0, Lcom/keniu/security/main/cd;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 60
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 62
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    new-instance v3, Lcom/keniu/security/main/cf;

    invoke-direct {v3, p0, v2}, Lcom/keniu/security/main/cf;-><init>(Lcom/keniu/security/main/cd;Ljava/util/List;)V

    .line 67
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    new-instance v3, Lcom/keniu/security/main/ce;

    invoke-direct {v3, p0, v2}, Lcom/keniu/security/main/ce;-><init>(Lcom/keniu/security/main/cd;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 231
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v2, p0, Lcom/keniu/security/main/cd;->a:Landroid/content/Context;

    invoke-direct {v0, v2, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 232
    const v2, 0x7f0b03f5

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 233
    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 234
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/cd;->c:Landroid/app/Dialog;

    .line 236
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/main/cd;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/keniu/security/main/cd;->d:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/main/cd;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/keniu/security/main/cd;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/main/cd;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/keniu/security/main/cd;->b:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/keniu/security/main/cd;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 242
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/keniu/security/main/cd;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 248
    return-void
.end method
