.class public final Lcom/keniu/security/main/a/q;
.super Lcom/keniu/security/main/a/v;
.source "PrefBooleanCheckModule.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/keniu/security/main/a/v;-><init>()V

    .line 251
    sget v0, Lcom/keniu/security/main/a/k;->d:I

    iput v0, p0, Lcom/keniu/security/main/a/q;->g:I

    .line 252
    const-string v0, "\u4e91\u5b89\u5168\u8ba1\u5212"

    iput-object v0, p0, Lcom/keniu/security/main/a/q;->a:Ljava/lang/String;

    .line 253
    const-string v0, "\u7acb\u5373\u52a0\u5165"

    iput-object v0, p0, Lcom/keniu/security/main/a/q;->b:Ljava/lang/String;

    .line 254
    const-string v0, "\u5df2\u52a0\u5165"

    iput-object v0, p0, Lcom/keniu/security/main/a/q;->c:Ljava/lang/String;

    .line 255
    const-string v0, "\u5df2\u52a0\u5165"

    iput-object v0, p0, Lcom/keniu/security/main/a/q;->d:Ljava/lang/String;

    .line 256
    const-string v0, "\u672a\u52a0\u5165"

    iput-object v0, p0, Lcom/keniu/security/main/a/q;->e:Ljava/lang/String;

    .line 257
    const-string v0, "\u662f\u5426\u52a0\u5165\u4e91\u5b89\u5168\u8ba1\u5212"

    iput-object v0, p0, Lcom/keniu/security/main/a/q;->f:Ljava/lang/String;

    .line 258
    return-void
.end method

.method private d(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 279
    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p1, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 282
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 284
    const v0, 0x7f08011b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 286
    const v3, 0x7f0b0137

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 287
    const v0, 0x7f08011c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 289
    const v3, 0x7f0b0261

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 290
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    new-instance v3, Lcom/keniu/security/main/a/r;

    invoke-direct {v3, p0, p1}, Lcom/keniu/security/main/a/r;-><init>(Lcom/keniu/security/main/a/q;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    const v0, 0x7f08011d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 309
    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 311
    const v0, 0x7f0b0219

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 313
    const v0, 0x7f0b0230

    new-instance v2, Lcom/keniu/security/main/a/s;

    invoke-direct {v2, p0, p1}, Lcom/keniu/security/main/a/s;-><init>(Lcom/keniu/security/main/a/q;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 323
    const v0, 0x7f0b0231

    new-instance v2, Lcom/keniu/security/main/a/t;

    invoke-direct {v2, p0, p1}, Lcom/keniu/security/main/a/t;-><init>(Lcom/keniu/security/main/a/q;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 331
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 332
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 273
    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 274
    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p1, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f08011b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0b0137

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f08011c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0b0261

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v3, Lcom/keniu/security/main/a/r;

    invoke-direct {v3, p0, p1}, Lcom/keniu/security/main/a/r;-><init>(Lcom/keniu/security/main/a/q;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08011d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0219

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0230

    new-instance v2, Lcom/keniu/security/main/a/s;

    invoke-direct {v2, p0, p1}, Lcom/keniu/security/main/a/s;-><init>(Lcom/keniu/security/main/a/q;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0231

    new-instance v2, Lcom/keniu/security/main/a/t;

    invoke-direct {v2, p0, p1}, Lcom/keniu/security/main/a/t;-><init>(Lcom/keniu/security/main/a/q;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 275
    const-string v0, "\u52a0\u5165\u4e91\u5b89\u5168\u8ba1\u5212"

    iput-object v0, p0, Lcom/keniu/security/main/a/q;->a:Ljava/lang/String;

    .line 276
    return-void
.end method

.method protected final c(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 262
    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 263
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->j()Z

    move-result v0

    .line 264
    if-eqz v0, :cond_0

    .line 265
    const-string v1, "\u52a0\u5165\u4e91\u5b89\u5168\u8ba1\u5212"

    iput-object v1, p0, Lcom/keniu/security/main/a/q;->a:Ljava/lang/String;

    .line 268
    :goto_0
    return v0

    .line 267
    :cond_0
    const-string v1, "\u672a\u52a0\u5165\u4e91\u5b89\u5168\u8ba1\u5212"

    iput-object v1, p0, Lcom/keniu/security/main/a/q;->a:Ljava/lang/String;

    goto :goto_0
.end method
