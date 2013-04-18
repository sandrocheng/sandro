.class public Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;
.super Landroid/app/Activity;
.source "UserBlackAddByAreasActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final a:Ljava/lang/String; = "UserWhiteBlackAddActivity_rule"


# instance fields
.field private b:Landroid/widget/Spinner;

.field private c:Lcom/hoi/widget/SpinnerButton;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/ijinshan/kinghelper/firewall/a/g;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:[[Ljava/lang/String;

.field private o:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->l:Z

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->m:I

    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->j:I

    return p1
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->h:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/mydb/opt/a;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->o:[Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->o:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->o:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->n:[[Ljava/lang/String;

    move v1, v6

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->o:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->o:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 96
    invoke-static {v0}, Lcom/keniu/security/mydb/opt/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_0

    .line 98
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 99
    if-le v3, v7, :cond_0

    .line 100
    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->n:[[Ljava/lang/String;

    add-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v3, v4, v1

    .line 103
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->n:[[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v0, v3, v6

    .line 104
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->n:[[Ljava/lang/String;

    aget-object v0, v0, v1

    const v3, 0x7f0b05cb

    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    move v3, v6

    .line 105
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 106
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->n:[[Ljava/lang/String;

    aget-object v4, v4, v1

    add-int/lit8 v5, v3, 0x2

    aput-object v0, v4, v5

    .line 105
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->n:[[Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v3, v2, v1

    .line 94
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 115
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->k:I

    return p1
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->i:Ljava/lang/String;

    return-object p1
.end method

.method private b()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v1, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 118
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 119
    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c:Lcom/hoi/widget/SpinnerButton;

    invoke-virtual {v2}, Lcom/hoi/widget/SpinnerButton;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b00e0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c:Lcom/hoi/widget/SpinnerButton;

    invoke-virtual {v2}, Lcom/hoi/widget/SpinnerButton;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    const v0, 0x7f0b00da

    new-array v1, v9, [Ljava/lang/Object;

    const v2, 0x7f0b00e1

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v8

    .line 172
    :goto_0
    return v0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->b:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    const v2, 0x7f0b00c5

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v4, v9

    .line 144
    :goto_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c:Lcom/hoi/widget/SpinnerButton;

    invoke-virtual {v0}, Lcom/hoi/widget/SpinnerButton;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v2, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    int-to-long v6, v2

    :goto_2
    invoke-static {v0, v6, v7}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    const v0, 0x7f0b00dc

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c:Lcom/hoi/widget/SpinnerButton;

    invoke-virtual {v2}, Lcom/hoi/widget/SpinnerButton;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v8

    .line 154
    goto :goto_0

    .line 136
    :cond_2
    const v2, 0x7f0b00c6

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v4, v1

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    const v2, 0x7f0b00c7

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 141
    const/4 v0, 0x3

    move v4, v0

    goto :goto_1

    .line 144
    :cond_4
    const-wide/16 v6, -0x1

    goto :goto_2

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    if-nez v0, :cond_6

    .line 157
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c:Lcom/hoi/widget/SpinnerButton;

    invoke-virtual {v0}, Lcom/hoi/widget/SpinnerButton;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3, v4, v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(ILjava/lang/String;Ljava/lang/String;II)J

    move-result-wide v0

    .line 165
    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_7

    .line 166
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->setResult(ILandroid/content/Intent;)V

    .line 172
    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    move v0, v9

    goto/16 :goto_0

    .line 161
    :cond_6
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c:Lcom/hoi/widget/SpinnerButton;

    invoke-virtual {v2}, Lcom/hoi/widget/SpinnerButton;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(IILjava/lang/String;Ljava/lang/String;II)I

    move-result v0

    int-to-long v0, v0

    goto :goto_3

    .line 168
    :cond_7
    const v2, 0x7f0b05ca

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_8
    move v0, v8

    .line 172
    goto/16 :goto_0

    :cond_9
    move v4, v9

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)[[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->n:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)Lcom/hoi/widget/SpinnerButton;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c:Lcom/hoi/widget/SpinnerButton;

    return-object v0
.end method

.method static synthetic d(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->m:I

    return v0
.end method

.method static synthetic e(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)I
    .locals 2
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->m:I

    return v0
.end method

.method static synthetic f(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->j:I

    return v0
.end method

.method static synthetic g(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->k:I

    return v0
.end method

.method static synthetic h(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(ILcom/hoi/widget/SpinnerButton;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x1090009

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 176
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->o:[Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v4

    .line 213
    :goto_0
    return v0

    .line 177
    :cond_0
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 178
    const v1, 0x7f0b006b

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 179
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 181
    iput-boolean v5, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->l:Z

    .line 182
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->o:[Ljava/lang/String;

    invoke-direct {v1, p0, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 191
    :goto_1
    new-instance v2, Lcom/ijinshan/kinghelper/firewall/ew;

    invoke-direct {v2, p0, p2}, Lcom/ijinshan/kinghelper/firewall/ew;-><init>(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;Lcom/hoi/widget/SpinnerButton;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 212
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 213
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->l:Z

    goto :goto_0

    .line 185
    :cond_1
    iput-boolean v4, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->l:Z

    .line 186
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->n:[[Ljava/lang/String;

    aget-object v1, v1, p1

    array-length v1, v1

    sub-int/2addr v1, v5

    new-array v1, v1, [Ljava/lang/String;

    .line 187
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->n:[[Ljava/lang/String;

    aget-object v2, v2, p1

    array-length v3, v1

    invoke-static {v2, v5, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-direct {v2, p0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x6

    const/4 v1, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 218
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c:Lcom/hoi/widget/SpinnerButton;

    if-ne p1, v0, :cond_1

    .line 219
    check-cast p1, Lcom/hoi/widget/SpinnerButton;

    invoke-virtual {p0, v8, p1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->a(ILcom/hoi/widget/SpinnerButton;)Z

    .line 220
    iput v7, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->m:I

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f080028

    if-ne v0, v2, :cond_b

    .line 222
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c:Lcom/hoi/widget/SpinnerButton;

    invoke-virtual {v2}, Lcom/hoi/widget/SpinnerButton;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0b00e0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c:Lcom/hoi/widget/SpinnerButton;

    invoke-virtual {v2}, Lcom/hoi/widget/SpinnerButton;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const v0, 0x7f0b00da

    new-array v1, v7, [Ljava/lang/Object;

    const v2, 0x7f0b00e1

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    move v0, v6

    :goto_2
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->setResult(ILandroid/content/Intent;)V

    .line 224
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->finish()V

    goto :goto_0

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->b:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0b00c5

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v4, v7

    :goto_3
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c:Lcom/hoi/widget/SpinnerButton;

    invoke-virtual {v0}, Lcom/hoi/widget/SpinnerButton;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v2, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    int-to-long v2, v2

    :goto_4
    invoke-static {v0, v2, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f0b00dc

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c:Lcom/hoi/widget/SpinnerButton;

    invoke-virtual {v2}, Lcom/hoi/widget/SpinnerButton;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_5
    const v2, 0x7f0b00c6

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v4, v1

    goto :goto_3

    :cond_6
    const v2, 0x7f0b00c7

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    move v4, v0

    goto :goto_3

    :cond_7
    const-wide/16 v2, -0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c:Lcom/hoi/widget/SpinnerButton;

    invoke-virtual {v0}, Lcom/hoi/widget/SpinnerButton;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v4, v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(ILjava/lang/String;Ljava/lang/String;II)J

    move-result-wide v0

    :goto_5
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_a

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v8, v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->setResult(ILandroid/content/Intent;)V

    :goto_6
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    move v0, v7

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c:Lcom/hoi/widget/SpinnerButton;

    invoke-virtual {v2}, Lcom/hoi/widget/SpinnerButton;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(IILjava/lang/String;Ljava/lang/String;II)I

    move-result v0

    int-to-long v0, v0

    goto :goto_5

    :cond_a
    const v2, 0x7f0b05ca

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 226
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080029

    if-ne v0, v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->finish()V

    goto/16 :goto_0

    :cond_c
    move v4, v7

    goto/16 :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0, v7}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->requestWindowFeature(I)Z

    .line 52
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->setContentView(I)V

    .line 53
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hoi/widget/SpinnerButton;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c:Lcom/hoi/widget/SpinnerButton;

    .line 56
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c:Lcom/hoi/widget/SpinnerButton;

    invoke-virtual {v0, p0}, Lcom/hoi/widget/SpinnerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->b:Landroid/widget/Spinner;

    .line 60
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->d:Landroid/widget/Button;

    .line 61
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->e:Landroid/widget/Button;

    .line 63
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->f:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UserWhiteBlackAddActivity_rule"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/a/g;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    .line 68
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c:Lcom/hoi/widget/SpinnerButton;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hoi/widget/SpinnerButton;->a(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    if-ne v0, v7, :cond_0

    .line 73
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/mydb/opt/a;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->o:[Ljava/lang/String;

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->o:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->o:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->n:[[Ljava/lang/String;

    move v1, v6

    :goto_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->o:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->o:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/keniu/security/mydb/opt/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v7, :cond_4

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->n:[[Ljava/lang/String;

    add-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v3, v4, v1

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->n:[[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v0, v3, v6

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->n:[[Ljava/lang/String;

    aget-object v0, v0, v1

    const v3, 0x7f0b05cb

    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    move v3, v6

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->n:[[Ljava/lang/String;

    aget-object v4, v4, v1

    add-int/lit8 v5, v3, 0x2

    aput-object v0, v4, v5

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    if-ne v0, v2, :cond_1

    .line 75
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 77
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c:Lcom/hoi/widget/SpinnerButton;

    const v1, 0x7f0b006b

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/SpinnerButton;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    :cond_4
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->n:[[Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v3, v2, v1

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 87
    :cond_6
    return-void
.end method
