.class public Lcom/keniu/security/util/k;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;IILcom/keniu/security/util/w;Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/Dialog;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 278
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 279
    invoke-virtual {v0, p1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 280
    invoke-virtual {v0, p2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 281
    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Z)Lcom/keniu/security/util/aq;

    .line 282
    new-instance v1, Lcom/keniu/security/util/m;

    invoke-direct {v1, p5}, Lcom/keniu/security/util/m;-><init>(Lcom/keniu/security/util/w;)V

    invoke-virtual {v0, p3, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 291
    new-instance v1, Lcom/keniu/security/util/n;

    invoke-direct {v1, p5}, Lcom/keniu/security/util/n;-><init>(Lcom/keniu/security/util/w;)V

    invoke-virtual {v0, p4, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 301
    invoke-virtual {v0, p6}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/keniu/security/util/aq;

    .line 303
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/keniu/security/util/w;)Landroid/app/Dialog;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 271
    const v0, 0x7f0b0268

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v3}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v2, 0x7f0b0267

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1, v3}, Lcom/keniu/security/util/aq;->a(Z)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0269

    new-instance v2, Lcom/keniu/security/util/m;

    invoke-direct {v2, p1}, Lcom/keniu/security/util/m;-><init>(Lcom/keniu/security/util/w;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b026b

    new-instance v2, Lcom/keniu/security/util/n;

    invoke-direct {v2, p1}, Lcom/keniu/security/util/n;-><init>(Lcom/keniu/security/util/w;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;IIILcom/keniu/security/util/w;)Lcom/keniu/security/util/ap;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 79
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v3}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 80
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/keniu/security/util/ae;->b:Lcom/keniu/security/util/ae;

    invoke-static {v1, v2}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 81
    invoke-virtual {v0, v3}, Lcom/keniu/security/util/aq;->a(Z)Lcom/keniu/security/util/aq;

    .line 82
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 83
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/util/p;

    invoke-direct {v2, p4}, Lcom/keniu/security/util/p;-><init>(Lcom/keniu/security/util/w;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/ap;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 90
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/util/q;

    invoke-direct {v2, p4}, Lcom/keniu/security/util/q;-><init>(Lcom/keniu/security/util/w;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/ap;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 97
    new-instance v1, Lcom/keniu/security/util/r;

    invoke-direct {v1}, Lcom/keniu/security/util/r;-><init>()V

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/ap;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 113
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/keniu/security/util/z;)Lcom/keniu/security/util/ap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 134
    const v0, 0x7f0b0471

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/keniu/security/util/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/keniu/security/util/z;)Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/keniu/security/util/z;)Lcom/keniu/security/util/ap;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 119
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 120
    const v1, 0x7f0b046c

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 121
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 122
    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(Z)Lcom/keniu/security/util/aq;

    .line 123
    const v1, 0x7f0b0218

    new-instance v2, Lcom/keniu/security/util/s;

    invoke-direct {v2, p2}, Lcom/keniu/security/util/s;-><init>(Lcom/keniu/security/util/z;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 129
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 25
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 26
    invoke-virtual {v0, p1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 27
    const v1, 0x7f0b0683

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 28
    const v1, 0x7f0b0682

    invoke-virtual {v0, v1, p2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 29
    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 151
    new-instance v0, Lcom/keniu/security/util/t;

    invoke-direct {v0, p0}, Lcom/keniu/security/util/t;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/keniu/security/util/k;->a(Landroid/content/Context;Lcom/keniu/security/util/w;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 170
    return-void
.end method

.method public static a(Landroid/content/Context;IILcom/keniu/security/util/w;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/keniu/security/util/k;->a(Landroid/content/Context;Ljava/lang/String;ILcom/keniu/security/util/w;)V

    .line 266
    return-void
.end method

.method private static a(Landroid/content/Context;ILandroid/text/Spanned;IILcom/keniu/security/util/w;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-static {p0, p1, p3, p4, p5}, Lcom/keniu/security/util/k;->a(Landroid/content/Context;IIILcom/keniu/security/util/w;)Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p2}, Lcom/keniu/security/util/ap;->a(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 146
    return-void
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;IILcom/keniu/security/util/x;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/util/v;

    invoke-direct {v1, p5}, Lcom/keniu/security/util/v;-><init>(Lcom/keniu/security/util/x;)V

    invoke-static {p0, p1, p3, p4, v1}, Lcom/keniu/security/util/k;->a(Landroid/content/Context;IIILcom/keniu/security/util/w;)Lcom/keniu/security/util/ap;

    move-result-object v1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030056

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080087

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41a0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/ap;->a(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/keniu/security/util/ap;->show()V

    .line 242
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/text/Spanned;Lcom/keniu/security/util/x;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    const v0, 0x7f0b046d

    const v1, 0x7f0b0228

    const v2, 0x7f0b0229

    new-instance v3, Lcom/keniu/security/util/v;

    invoke-direct {v3, p2}, Lcom/keniu/security/util/v;-><init>(Lcom/keniu/security/util/x;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/keniu/security/util/k;->a(Landroid/content/Context;IIILcom/keniu/security/util/w;)Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 225
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 226
    const v2, 0x7f030056

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 227
    const v2, 0x7f080087

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 228
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    const/high16 v2, 0x41a0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 230
    invoke-virtual {v0, v1}, Lcom/keniu/security/util/ap;->a(Landroid/view/View;)V

    .line 231
    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 232
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/keniu/security/util/x;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 248
    const v0, 0x7f0b0470

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    const v1, 0x7f0b046d

    const v2, 0x7f0b0228

    const v3, 0x7f0b0229

    new-instance v4, Lcom/keniu/security/util/v;

    invoke-direct {v4, p1}, Lcom/keniu/security/util/v;-><init>(Lcom/keniu/security/util/x;)V

    invoke-static {p0, v1, v2, v3, v4}, Lcom/keniu/security/util/k;->a(Landroid/content/Context;IIILcom/keniu/security/util/w;)Lcom/keniu/security/util/ap;

    move-result-object v1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030056

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080087

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41a0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/ap;->a(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/keniu/security/util/ap;->show()V

    .line 252
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILcom/keniu/security/util/w;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    const v1, 0x7f0b046d

    const v2, 0x7f0b021a

    invoke-static {p0, v1, p2, v2, p3}, Lcom/keniu/security/util/k;->a(Landroid/content/Context;IIILcom/keniu/security/util/w;)Lcom/keniu/security/util/ap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/ap;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/keniu/security/util/ap;->show()V

    .line 259
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 200
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 175
    new-instance v0, Lcom/keniu/security/util/u;

    invoke-direct {v0, p0}, Lcom/keniu/security/util/u;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/keniu/security/util/k;->a(Landroid/content/Context;Lcom/keniu/security/util/w;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 194
    return-void
.end method

.method private static b(Landroid/content/Context;IILcom/keniu/security/util/w;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 53
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 54
    invoke-virtual {v0, p1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 55
    invoke-virtual {v0, p2}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 56
    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Z)Lcom/keniu/security/util/aq;

    .line 57
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 58
    const v1, 0x7f0b0218

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/util/l;

    invoke-direct {v2, p3}, Lcom/keniu/security/util/l;-><init>(Lcom/keniu/security/util/w;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/ap;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 65
    const v1, 0x7f0b021a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/util/o;

    invoke-direct {v2, p3}, Lcom/keniu/security/util/o;-><init>(Lcom/keniu/security/util/w;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/ap;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 72
    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 73
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
