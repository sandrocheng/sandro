.class public Lcom/keniu/security/commumgr/NumLocateQueryActivity;
.super Lcom/keniu/security/main/BaseTitleActivity;
.source "NumLocateQueryActivity.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/EditText;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/Button;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/keniu/security/main/BaseTitleActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 54
    const v0, 0x7f0802a7

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->a:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0802a8

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->b:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0802a6

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->c:Landroid/widget/EditText;

    .line 57
    const v0, 0x7f0b068e

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->d:Ljava/lang/String;

    .line 58
    const v0, 0x7f0802a9

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->e:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/commumgr/g;

    invoke-direct {v1, p0}, Lcom/keniu/security/commumgr/g;-><init>(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/commumgr/NumLocateQueryActivity;Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 31
    new-instance v3, Lcom/keniu/security/util/aq;

    invoke-direct {v3, p0, v7}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v0, 0x7f0b068f

    invoke-virtual {v3, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030024

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v10

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "%s(%s)"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v7

    aput-object v0, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    const v0, 0x7f0800dc

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800dd

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0800de

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x7f0b0691

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0692

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->f:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {p0, v0, v5}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0693

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b00d5

    new-instance v1, Lcom/keniu/security/commumgr/i;

    invoke-direct {v1, p0, p1}, Lcom/keniu/security/commumgr/i;-><init>(Lcom/keniu/security/commumgr/NumLocateQueryActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b00d6

    invoke-virtual {v3, v0, v10}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v3}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    return-void

    :cond_1
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v5, 0x4

    if-eq v2, v5, :cond_3

    :cond_2
    move-object v1, v10

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v9

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "alpha"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v11

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    aget-object v5, v1, v9

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "beta"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v11

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    aget-object v1, v1, v9

    const-string v5, "2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "rel"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 94
    new-instance v3, Lcom/keniu/security/util/aq;

    invoke-direct {v3, p0, v7}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 96
    const v0, 0x7f0b068f

    invoke-virtual {v3, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 98
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030024

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 101
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->m()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v10

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "%s(%s)"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v7

    aput-object v0, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    :cond_0
    const v0, 0x7f0800dc

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    const v1, 0x7f0800dd

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 107
    const v2, 0x7f0800de

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 108
    const v5, 0x7f0b0691

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const v0, 0x7f0b0692

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->f:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {p0, v0, v5}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v0, 0x7f0b0693

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v3, v4}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 114
    const v0, 0x7f0b00d5

    new-instance v1, Lcom/keniu/security/commumgr/i;

    invoke-direct {v1, p0, p1}, Lcom/keniu/security/commumgr/i;-><init>(Lcom/keniu/security/commumgr/NumLocateQueryActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 128
    const v0, 0x7f0b00d6

    invoke-virtual {v3, v0, v10}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 130
    invoke-virtual {v3}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 131
    return-void

    .line 103
    :cond_1
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v5, 0x4

    if-eq v2, v5, :cond_3

    :cond_2
    move-object v1, v10

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v9

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "alpha"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v11

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    aget-object v5, v1, v9

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "beta"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v11

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    aget-object v1, v1, v9

    const-string v5, "2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "rel"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method static synthetic b(Lcom/keniu/security/commumgr/NumLocateQueryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->f:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 78
    const v1, 0x7f0b068f

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 79
    const v1, 0x7f0b0690

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 81
    const v1, 0x7f0b00d5

    new-instance v2, Lcom/keniu/security/commumgr/h;

    invoke-direct {v2, p0}, Lcom/keniu/security/commumgr/h;-><init>(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 88
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 89
    return-void
.end method

.method static synthetic b(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 31
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b068f

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0690

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d5

    new-instance v2, Lcom/keniu/security/commumgr/h;

    invoke-direct {v2, p0}, Lcom/keniu/security/commumgr/h;-><init>(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    return-void
.end method

.method static synthetic c(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/keniu/security/commumgr/j;

    invoke-direct {v1, p0}, Lcom/keniu/security/commumgr/j;-><init>(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    return-void
.end method

.method static synthetic d(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    const v0, 0x7f0300b8

    const v1, 0x7f0b043c

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/main/BaseTitleActivity;->a(Landroid/os/Bundle;II)V

    .line 46
    if-nez p1, :cond_0

    .line 47
    const-string v0, "telman_numlocal"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    :cond_0
    const v0, 0x7f0802a7

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f0802a8

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f0802a6

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f0b068e

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->d:Ljava/lang/String;

    const v0, 0x7f0802a9

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/commumgr/g;

    invoke-direct {v1, p0}, Lcom/keniu/security/commumgr/g;-><init>(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/keniu/security/commumgr/j;

    invoke-direct {v1, p0}, Lcom/keniu/security/commumgr/j;-><init>(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 51
    return-void
.end method
