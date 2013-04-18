.class public Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;
.super Lcom/keniu/security/util/BasePreferenceActivity;
.source "IpDialSettingsActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# static fields
.field public static final a:Ljava/lang/String; = "\u62e8\u6253\u957f\u9014\u65f6"

.field public static final b:Ljava/lang/String; = "\u62e8\u6253\u6240\u6709\u7535\u8bdd\u65f6"

.field public static final c:Ljava/lang/String; = "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

.field public static final d:Ljava/lang/String; = "\u4e0d\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

.field public static final e:Ljava/lang/String; = "\u5176\u4ed6IP\u53f7\u7801"

.field public static final f:Ljava/lang/String; = "\u672a\u9009\u62e9\u4efb\u4f55\u5730\u533a"

.field public static final g:Ljava/lang/String; = "\u672a\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

.field public static final h:Ljava/lang/String; = "\u9009\u62e9\u5168\u7701"

.field public static final i:Ljava/lang/String; = "\u4e2a\u53f7\u7801"

.field public static final j:I = 0x1

.field private static final k:Ljava/lang/String; = "17951"

.field private static final l:Ljava/lang/String; = "12593"

.field private static final m:Ljava/lang/String; = "10193"

.field private static final n:Ljava/lang/String; = "17911"

.field private static final o:Ljava/lang/String; = "17901"

.field private static final p:Ljava/lang/String; = "11808"

.field private static final q:I = 0x1000

.field private static final r:I = 0x2000

.field private static final s:I = 0x3000

.field private static final t:I = 0x4000

.field private static final u:I = 0x5000

.field private static final v:I = 0x6000


# instance fields
.field private A:Lcom/ijinshan/kpref/Preference;

.field private B:Lcom/ijinshan/kpref/Preference;

.field private C:Lcom/ijinshan/kpref/Preference;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:I

.field private J:I

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:I

.field private N:I

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:[Ljava/lang/String;

.field private T:[Ljava/lang/String;

.field private U:Z

.field private V:Landroid/content/DialogInterface$OnClickListener;

.field private W:Landroid/content/DialogInterface$OnClickListener;

.field private X:Landroid/content/DialogInterface$OnClickListener;

.field private Y:Landroid/content/DialogInterface$OnClickListener;

.field private w:[Ljava/lang/String;

.field private x:[Ljava/lang/String;

.field private y:Lcom/ijinshan/kpref/Preference;

.field private z:Lcom/ijinshan/kpref/Preference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/keniu/security/util/BasePreferenceActivity;-><init>()V

    .line 86
    const-string v0, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->D:Ljava/lang/String;

    .line 111
    iput-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->O:Z

    .line 113
    iput-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->P:Z

    .line 115
    iput-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->Q:Z

    .line 117
    iput-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->R:Z

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->S:[Ljava/lang/String;

    .line 123
    iput-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->U:Z

    .line 891
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/co;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/co;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->V:Landroid/content/DialogInterface$OnClickListener;

    .line 900
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/cp;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/cp;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->W:Landroid/content/DialogInterface$OnClickListener;

    .line 908
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/cq;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/cq;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->X:Landroid/content/DialogInterface$OnClickListener;

    .line 917
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/cs;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/cs;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->Y:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->I:I

    return p1
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 474
    move v1, v0

    .line 475
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 476
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 475
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_1
    return v1
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->D:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->D:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->R:Z

    return p1
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->w:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->J:I

    return p1
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->y:Lcom/ijinshan/kpref/Preference;

    return-object v0
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->G:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->Q:Z

    return p1
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->x:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->M:I

    return p1
.end method

.method static synthetic c(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->z:Lcom/ijinshan/kpref/Preference;

    return-object v0
.end method

.method static synthetic c(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->H:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 196
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->e()Z

    move-result v0

    .line 198
    if-eqz v0, :cond_0

    .line 200
    const v0, 0x7f080115

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 201
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 203
    const v1, 0x7f080117

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 204
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 205
    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cg;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/cg;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v1, 0x7f080118

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 217
    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cr;

    invoke-direct {v2, p0, v0}, Lcom/ijinshan/kinghelper/firewall/cr;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    :cond_0
    const v0, 0x7f0b0697

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->G:Ljava/lang/String;

    .line 233
    const-string v0, "\u672a\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    .line 235
    const-string v0, ""

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->F:Ljava/lang/String;

    .line 238
    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->A:Lcom/ijinshan/kpref/Preference;

    .line 239
    const-string v0, "\u5176\u4ed6IP\u53f7\u7801"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->F:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, ""

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->A:Lcom/ijinshan/kpref/Preference;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->A:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 264
    const-string v0, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->D:Ljava/lang/String;

    .line 267
    const v0, 0x7f0b007e

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->y:Lcom/ijinshan/kpref/Preference;

    .line 268
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->y:Lcom/ijinshan/kpref/Preference;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->y:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 274
    const v0, 0x7f0b00a3

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->z:Lcom/ijinshan/kpref/Preference;

    .line 275
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->z:Lcom/ijinshan/kpref/Preference;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->z:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 278
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    const-string v0, "\u4e0d\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->j(Ljava/lang/String;)V

    .line 281
    const-string v0, "\u4e0d\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    .line 285
    :cond_1
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->d()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 288
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->S:[Ljava/lang/String;

    .line 294
    :goto_1
    const v0, 0x7f0b008b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->C:Lcom/ijinshan/kpref/Preference;

    .line 296
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->S:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_9

    .line 297
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->C:Lcom/ijinshan/kpref/Preference;

    const-string v1, "\u672a\u6dfb\u52a0"

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 302
    :goto_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->C:Lcom/ijinshan/kpref/Preference;

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/ct;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/ct;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 314
    const-string v0, "\u672a\u9009\u62e9\u4efb\u4f55\u5730\u533a"

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->K:Ljava/lang/String;

    .line 316
    const-string v0, "\u9009\u62e9\u5168\u7701"

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->L:Ljava/lang/String;

    .line 318
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->B:Lcom/ijinshan/kpref/Preference;

    .line 320
    const-string v0, "\u672a\u9009\u62e9\u4efb\u4f55\u5730\u533a"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->B:Lcom/ijinshan/kpref/Preference;

    const-string v1, "\u672a\u9009\u62e9\u4efb\u4f55\u5730\u533a"

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 334
    :goto_3
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->B:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 336
    const-string v0, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    const-string v1, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 340
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->A:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v0, v3}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 341
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->C:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v0, v3}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 342
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->z:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v0, v3}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 343
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->B:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v0, v3}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 350
    :goto_4
    return-void

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->A:Lcom/ijinshan/kpref/Preference;

    const-string v1, "\u672a\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, ""

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 251
    :cond_5
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->A:Lcom/ijinshan/kpref/Preference;

    const-string v1, "\u672a\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 252
    :cond_6
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    const-string v1, "\u4e0d\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

    if-ne v0, v1, :cond_7

    .line 254
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->A:Lcom/ijinshan/kpref/Preference;

    const-string v1, "\u672a\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 257
    :cond_7
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->A:Lcom/ijinshan/kpref/Preference;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 291
    :cond_8
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->S:[Ljava/lang/String;

    goto/16 :goto_1

    .line 299
    :cond_9
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->C:Lcom/ijinshan/kpref/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->S:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a\u53f7\u7801"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 325
    :cond_a
    const-string v0, "\u9009\u62e9\u5168\u7701"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 327
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->B:Lcom/ijinshan/kpref/Preference;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 330
    :cond_b
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->B:Lcom/ijinshan/kpref/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->K:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 345
    :cond_c
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->C:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v0, v4}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 346
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->z:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v0, v4}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 347
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->B:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v0, v4}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 348
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->A:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v0, v4}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    goto/16 :goto_4
.end method

.method static synthetic d(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->N:I

    return p1
.end method

.method private d()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 386
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v3}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 387
    const v1, 0x7f0b0077

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 389
    const-string v1, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    const-string v2, "\u62e8\u6253\u957f\u9014\u65f6"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    .line 402
    :goto_0
    const v2, 0x7f070030

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/cu;

    invoke-direct {v3, p0}, Lcom/ijinshan/kinghelper/firewall/cu;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/keniu/security/util/aq;->a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 459
    const v1, 0x7f0b00d6

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cv;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/cv;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 468
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 469
    return-object v0

    .line 395
    :cond_0
    const-string v2, "\u62e8\u6253\u6240\u6709\u7535\u8bdd\u65f6"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    const/4 v1, 0x1

    goto :goto_0

    .line 400
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method static synthetic d(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->A:Lcom/ijinshan/kpref/Preference;

    return-object v0
.end method

.method static synthetic d(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    return-object p1
.end method

.method private e()Landroid/app/Dialog;
    .locals 7

    .prologue
    const v6, 0x7f070031

    const/4 v5, 0x0

    .line 486
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->g()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->I:I

    .line 495
    :goto_0
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 496
    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->I:I

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->V:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v1, v2}, Lcom/keniu/security/util/aq;->a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 497
    const v1, 0x7f0b00a0

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 498
    const v1, 0x7f0b00d5

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cw;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/cw;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 517
    const v1, 0x7f0b00d6

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cx;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/cx;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 537
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 538
    return-object v0

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->G:Ljava/lang/String;

    move v2, v5

    move v3, v5

    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iput v3, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->I:I

    goto :goto_0
.end method

.method static synthetic e(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->C:Lcom/ijinshan/kpref/Preference;

    return-object v0
.end method

.method static synthetic e(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->F:Ljava/lang/String;

    return-object p1
.end method

.method private f()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 543
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->O:Z

    if-eqz v0, :cond_0

    .line 545
    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->J:I

    .line 546
    iput-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->O:Z

    .line 552
    :goto_0
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 554
    const v1, 0x7f0b009f

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 555
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->w:[Ljava/lang/String;

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->J:I

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->W:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/util/aq;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 556
    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cy;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/cy;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 570
    const v1, 0x7f0b00d6

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cz;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/cz;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 593
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0

    .line 549
    :cond_0
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->h()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->J:I

    goto :goto_0
.end method

.method static synthetic f(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->B:Lcom/ijinshan/kpref/Preference;

    return-object v0
.end method

.method static synthetic f(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->K:Ljava/lang/String;

    return-object p1
.end method

.method private g()Landroid/app/Dialog;
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 599
    new-instance v9, Lcom/keniu/security/util/aq;

    invoke-direct {v9, p0, v12}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 601
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300ef

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 604
    const v1, 0x7f08034e

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 607
    const v1, 0x7f080347

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/RadioGroup;

    move-object v8, v0

    .line 608
    const v1, 0x7f080346

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 609
    const v1, 0x7f080349

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 610
    const v1, 0x7f08034b

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 611
    const v1, 0x7f08034d

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 612
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    aget-object v1, v1, v11

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    aget-object v1, v1, v13

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    aget-object v1, v1, v14

    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    aget-object v2, v2, v12

    if-ne v1, v2, :cond_1

    .line 620
    :cond_0
    invoke-virtual {v3, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 623
    :cond_1
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    aget-object v2, v2, v11

    if-ne v1, v2, :cond_2

    .line 625
    invoke-virtual {v4, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 628
    :cond_2
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    aget-object v2, v2, v13

    if-ne v1, v2, :cond_3

    .line 630
    invoke-virtual {v5, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 633
    :cond_3
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    aget-object v2, v2, v14

    if-ne v1, v2, :cond_4

    .line 635
    iput-boolean v11, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->Q:Z

    .line 636
    invoke-virtual {v6, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 637
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 642
    :cond_4
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/ch;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/ijinshan/kinghelper/firewall/ch;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/TextView;)V

    invoke-virtual {v8, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 678
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->F:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 680
    const-string v1, "\u5fc5\u586b"

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 686
    :goto_0
    invoke-virtual {v9, v10}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 688
    const v1, 0x7f0b0079

    invoke-virtual {v9, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 691
    invoke-virtual {v9}, Lcom/keniu/security/util/aq;->b()Lcom/keniu/security/util/aq;

    .line 692
    const v1, 0x7f0b00d5

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/ci;

    invoke-direct {v2, p0, v7}, Lcom/ijinshan/kinghelper/firewall/ci;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Landroid/widget/TextView;)V

    invoke-virtual {v9, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 748
    const v1, 0x7f0b00d6

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cj;

    invoke-direct {v2, p0, v7}, Lcom/ijinshan/kinghelper/firewall/cj;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Landroid/widget/TextView;)V

    invoke-virtual {v9, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 762
    invoke-virtual {v9}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v1

    .line 763
    return-object v1

    .line 683
    :cond_5
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->F:Ljava/lang/String;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->L:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->I:I

    return v0
.end method

.method private h()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 768
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->i()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->M:I

    .line 770
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 771
    const v1, 0x7f070032

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->M:I

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->X:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/util/aq;->a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 773
    const v1, 0x7f0b009c

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 774
    const v1, 0x7f0b00d5

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/ck;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/ck;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 803
    const v1, 0x7f0b00d6

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cl;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/cl;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 813
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 814
    return-object v0
.end method

.method private i()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 818
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->P:Z

    if-eqz v0, :cond_0

    .line 819
    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->N:I

    .line 820
    iput-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->P:Z

    .line 825
    :goto_0
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 827
    const v1, 0x7f0b009d

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 828
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->x:[Ljava/lang/String;

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->N:I

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->Y:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/util/aq;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 830
    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cm;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/cm;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 849
    const v1, 0x7f0b00d6

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cn;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/cn;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 859
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0

    .line 822
    :cond_0
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->j()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->N:I

    goto :goto_0
.end method

.method static synthetic i(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->R:Z

    return v0
.end method

.method static synthetic j(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->w:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->J:I

    return v0
.end method

.method static synthetic l(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->Q:Z

    return v0
.end method

.method static synthetic o(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->F:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->M:I

    return v0
.end method

.method static synthetic r(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->K:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->x:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->N:I

    return v0
.end method

.method static synthetic u(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->O:Z

    return v0
.end method

.method static synthetic w(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->P:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 2
    .parameter

    .prologue
    .line 864
    invoke-static {p0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;)V

    .line 865
    invoke-virtual {p1}, Lcom/ijinshan/kpref/Preference;->A()Ljava/lang/String;

    move-result-object v0

    .line 867
    const v1, 0x7f0b00a3

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    const/16 v1, 0x1000

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->showDialog(I)V

    .line 872
    :cond_0
    const v1, 0x7f0b0085

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 874
    const/16 v0, 0x5000

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->showDialog(I)V

    .line 888
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 877
    :cond_2
    const v1, 0x7f0b008c

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 879
    const/16 v0, 0x3000

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->showDialog(I)V

    goto :goto_0

    .line 880
    :cond_3
    const v1, 0x7f0b007e

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->V()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->U:Z

    if-eqz v0, :cond_5

    .line 882
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 883
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 885
    :cond_5
    const/16 v0, 0x6000

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 929
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 932
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->d()Ljava/lang/String;

    move-result-object v0

    .line 934
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 935
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->S:[Ljava/lang/String;

    .line 939
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->S:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 940
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->C:Lcom/ijinshan/kpref/Preference;

    const-string v1, "\u672a\u6dfb\u52a0"

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 945
    :cond_0
    :goto_1
    return-void

    .line 937
    :cond_1
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->S:[Ljava/lang/String;

    goto :goto_0

    .line 942
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->C:Lcom/ijinshan/kpref/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->S:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a\u53f7\u7801"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    const v0, 0x7f050009

    invoke-super {p0, p1, v0}, Lcom/keniu/security/util/BasePreferenceActivity;->a(Landroid/os/Bundle;I)V

    .line 129
    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->setContentView(I)V

    .line 131
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromSIMChange"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->U:Z

    .line 132
    if-nez p1, :cond_0

    .line 133
    const-string v0, "telman_ipdail"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 139
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 140
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    .line 141
    if-eqz v0, :cond_5

    .line 143
    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "\u4e0d\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

    aput-object v1, v0, v2

    .line 146
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "17951"

    aput-object v1, v0, v3

    .line 147
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "12593"

    aput-object v1, v0, v4

    .line 148
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "\u5176\u4ed6IP\u53f7\u7801"

    aput-object v1, v0, v5

    .line 179
    :goto_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(Landroid/content/Context;)V

    .line 180
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->a()V

    .line 182
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->c()V

    .line 183
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 184
    return-void

    .line 150
    :cond_2
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "\u4e0d\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

    aput-object v1, v0, v2

    .line 152
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "10193"

    aput-object v1, v0, v3

    .line 153
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "17911"

    aput-object v1, v0, v4

    .line 154
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "\u5176\u4ed6IP\u53f7\u7801"

    aput-object v1, v0, v5

    goto :goto_0

    .line 157
    :cond_3
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "\u4e0d\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

    aput-object v1, v0, v2

    .line 159
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "17901"

    aput-object v1, v0, v3

    .line 160
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "11808"

    aput-object v1, v0, v4

    .line 161
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "\u5176\u4ed6IP\u53f7\u7801"

    aput-object v1, v0, v5

    goto :goto_0

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "\u4e0d\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

    aput-object v1, v0, v2

    .line 166
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "17951"

    aput-object v1, v0, v3

    .line 167
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "12593"

    aput-object v1, v0, v4

    .line 168
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "\u5176\u4ed6IP\u53f7\u7801"

    aput-object v1, v0, v5

    goto :goto_0

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "\u4e0d\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

    aput-object v1, v0, v2

    .line 173
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "17951"

    aput-object v1, v0, v3

    .line 174
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "12593"

    aput-object v1, v0, v4

    .line 175
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const-string v1, "\u5176\u4ed6IP\u53f7\u7801"

    aput-object v1, v0, v5

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter

    .prologue
    .line 356
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_3

    .line 358
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->g()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->I:I

    :goto_0
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f070031

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->I:I

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->V:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/util/aq;->a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00a0

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d5

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cw;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/cw;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d6

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cx;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/cx;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 381
    :goto_1
    return-object v0

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->G:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v10, v3

    move v3, v2

    move v2, v10

    :goto_2
    array-length v4, v0

    if-ge v2, v4, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iput v3, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->I:I

    goto :goto_0

    .line 360
    :cond_3
    const/16 v0, 0x2000

    if-ne p1, v0, :cond_5

    .line 362
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->O:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->J:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->O:Z

    :goto_3
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b009f

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->w:[Ljava/lang/String;

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->J:I

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->W:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/util/aq;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cy;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/cy;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d6

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cz;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/cz;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->h()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->J:I

    goto :goto_3

    .line 364
    :cond_5
    const/16 v0, 0x5000

    if-ne p1, v0, :cond_c

    .line 366
    new-instance v7, Lcom/keniu/security/util/aq;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ef

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v0, 0x7f08034e

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v0, 0x7f080347

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    const v0, 0x7f080346

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const v0, 0x7f080349

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    const v0, 0x7f08034b

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    const v0, 0x7f08034d

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v1, v1, v9

    if-ne v0, v1, :cond_7

    :cond_6
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_7
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v1, v1, v9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_8
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v1, v1, v9

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_9
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->E:Ljava/lang/String;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->T:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v1, v1, v9

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->Q:Z

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/ch;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/ijinshan/kinghelper/firewall/ch;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "\u5fc5\u586b"

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {v7, v8}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0079

    invoke-virtual {v7, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    invoke-virtual {v7}, Lcom/keniu/security/util/aq;->b()Lcom/keniu/security/util/aq;

    const v0, 0x7f0b00d5

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/ci;

    invoke-direct {v1, p0, v6}, Lcom/ijinshan/kinghelper/firewall/ci;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Landroid/widget/TextView;)V

    invoke-virtual {v7, v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b00d6

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/cj;

    invoke-direct {v1, p0, v6}, Lcom/ijinshan/kinghelper/firewall/cj;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Landroid/widget/TextView;)V

    invoke-virtual {v7, v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v7}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->F:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 368
    :cond_c
    const/16 v0, 0x3000

    if-ne p1, v0, :cond_d

    .line 370
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->i()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->M:I

    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f070032

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->M:I

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->X:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/util/aq;->a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b009c

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d5

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/ck;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/ck;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d6

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cl;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/cl;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto/16 :goto_1

    .line 372
    :cond_d
    const/16 v0, 0x4000

    if-ne p1, v0, :cond_f

    .line 374
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->P:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->N:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->P:Z

    :goto_5
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b009d

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->x:[Ljava/lang/String;

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->N:I

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->Y:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/util/aq;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cm;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/cm;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d6

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cn;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/cn;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto/16 :goto_1

    :cond_e
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->j()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->N:I

    goto :goto_5

    .line 376
    :cond_f
    const/16 v0, 0x6000

    if-ne p1, v0, :cond_12

    .line 378
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0077

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const-string v1, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u62e8\u6253\u957f\u9014\u65f6"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x0

    :goto_6
    const v2, 0x7f070030

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/cu;

    invoke-direct {v3, p0}, Lcom/ijinshan/kinghelper/firewall/cu;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/keniu/security/util/aq;->a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d6

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/cv;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/cv;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto/16 :goto_1

    :cond_10
    const-string v2, "\u62e8\u6253\u6240\u6709\u7535\u8bdd\u65f6"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_6

    :cond_11
    const/4 v1, 0x2

    goto :goto_6

    .line 381
    :cond_12
    invoke-super {p0, p1}, Lcom/keniu/security/util/BasePreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->onResume()V

    .line 190
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->c()V

    .line 191
    return-void
.end method
