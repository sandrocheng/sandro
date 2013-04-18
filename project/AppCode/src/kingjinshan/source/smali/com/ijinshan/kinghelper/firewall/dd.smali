.class public final Lcom/ijinshan/kinghelper/firewall/dd;
.super Ljava/lang/Object;
.source "PrefManager.java"


# static fields
.field private static a:Landroid/content/Context; = null

.field private static final b:Z = true

.field private static final c:Lcom/ijinshan/kinghelper/firewall/dg; = null

.field private static d:Z = false

.field private static final e:Lcom/ijinshan/kinghelper/firewall/df; = null

.field private static f:Z = false

.field private static final g:Ljava/lang/String; = "pre_firewall_user_keyword"

.field private static final h:Lcom/ijinshan/kinghelper/firewall/de; = null

.field private static final i:Z = false

.field private static j:Z = false

.field private static final k:Ljava/lang/String; = "com.ijinshan.kinghelper.firewall.FirewallLogDetailActivity.show.report.dialog"

.field private static final l:Ljava/lang/String; = "com.ijinshan.kinghelper.firewall.FirewallLogDetailActivity.auto.report"

.field private static final m:Ljava/lang/String; = "mose_lastcrashtime"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dg;->e:Lcom/ijinshan/kinghelper/firewall/dg;

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->c:Lcom/ijinshan/kinghelper/firewall/dg;

    .line 261
    sput-boolean v1, Lcom/ijinshan/kinghelper/firewall/dd;->d:Z

    .line 265
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/df;->a:Lcom/ijinshan/kinghelper/firewall/df;

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->e:Lcom/ijinshan/kinghelper/firewall/df;

    .line 336
    sput-boolean v1, Lcom/ijinshan/kinghelper/firewall/dd;->f:Z

    .line 553
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/de;->a:Lcom/ijinshan/kinghelper/firewall/de;

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->h:Lcom/ijinshan/kinghelper/firewall/de;

    .line 643
    sput-boolean v1, Lcom/ijinshan/kinghelper/firewall/dd;->j:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic A()Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic B()Lcom/ijinshan/kinghelper/firewall/dg;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->c:Lcom/ijinshan/kinghelper/firewall/dg;

    return-object v0
.end method

.method static synthetic C()Lcom/ijinshan/kinghelper/firewall/df;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->e:Lcom/ijinshan/kinghelper/firewall/df;

    return-object v0
.end method

.method static synthetic D()Lcom/ijinshan/kinghelper/firewall/de;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->h:Lcom/ijinshan/kinghelper/firewall/de;

    return-object v0
.end method

.method private static E()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    const v1, 0x7f0b01a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static F()V
    .locals 2

    .prologue
    .line 675
    const v0, 0x7f0b01b3

    const/16 v1, 0x528

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(II)V

    .line 677
    const v0, 0x7f0b01b4

    const/16 v1, 0x1a4

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(II)V

    .line 679
    return-void
.end method

.method private static G()Z
    .locals 2

    .prologue
    .line 694
    const v0, 0x7f0b01c4

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    return v0
.end method

.method private static H()V
    .locals 2

    .prologue
    .line 728
    const v0, 0x7f0b0024

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(ILjava/lang/String;)V

    .line 729
    return-void
.end method

.method private static I()V
    .locals 2

    .prologue
    .line 740
    const v0, 0x7f0b01cc

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(ILjava/lang/String;)V

    .line 741
    return-void
.end method

.method private static J()Z
    .locals 2

    .prologue
    .line 760
    const-string v0, "ScannedRubbishSMSDlgShow"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static K()Z
    .locals 2

    .prologue
    .line 775
    const-string v0, "com.ijinshan.kinghelper.firewall.FirewallLogDetailActivity.auto.report"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static L()Z
    .locals 2

    .prologue
    .line 783
    const-string v0, "com.ijinshan.kinghelper.firewall.FirewallLogDetailActivity.show.report.dialog"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 3

    .prologue
    const v2, 0x7f0b01b1

    const v1, 0x7f0b01a1

    .line 37
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 38
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 39
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Lcom/ijinshan/kinghelper/firewall/df;)V

    .line 40
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->i()Lcom/ijinshan/kinghelper/firewall/de;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Lcom/ijinshan/kinghelper/firewall/de;)V

    .line 41
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->c()V

    .line 42
    return-void
.end method

.method public static a(I)V
    .locals 1
    .parameter

    .prologue
    .line 666
    const v0, 0x7f0b01b3

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(II)V

    .line 668
    return-void
.end method

.method private static a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 90
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    return-void
.end method

.method private static a(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 130
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static a(J)V
    .locals 2
    .parameter

    .prologue
    .line 793
    const-string v0, "mose_lastcrashtime"

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 794
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static a(Lcom/ijinshan/kinghelper/firewall/de;)V
    .locals 3
    .parameter

    .prologue
    .line 623
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/de;->e:I

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    const v2, 0x7f0b01a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ijinshan/kinghelper/firewall/dd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method private static a(Lcom/ijinshan/kinghelper/firewall/df;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 327
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/df;->values()[Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v0

    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 328
    iget v3, v3, Lcom/ijinshan/kinghelper/firewall/df;->i:I

    invoke-static {v3, v4}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    :cond_0
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/df;->i:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 330
    return-void
.end method

.method private static a(Lcom/ijinshan/kinghelper/firewall/dg;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 252
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dg;->values()[Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v0

    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 253
    iget v3, v3, Lcom/ijinshan/kinghelper/firewall/dg;->i:I

    invoke-static {v3, v4}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    :cond_0
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/dg;->i:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 255
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 258
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dg;->a(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Lcom/ijinshan/kinghelper/firewall/dg;)V

    .line 259
    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    return-void
.end method

.method private static a(Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 102
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    return-void
.end method

.method public static a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 178
    const v0, 0x7f0b01a1

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 180
    return-void
.end method

.method public static a(ZZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 487
    if-nez p0, :cond_0

    .line 488
    const v0, 0x7f0b01b0

    invoke-static {v0, p1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 492
    :goto_0
    return-void

    .line 490
    :cond_0
    const v0, 0x7f0b01c3

    invoke-static {v0, p1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    goto :goto_0
.end method

.method private static a(IZ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 148
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 144
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static b(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 120
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 122
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    const v0, 0x7f0b01a1

    invoke-static {v0, v2}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 46
    const v0, 0x7f0b01b1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 47
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/df;->a:Lcom/ijinshan/kinghelper/firewall/df;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Lcom/ijinshan/kinghelper/firewall/df;)V

    .line 48
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dg;->e:Lcom/ijinshan/kinghelper/firewall/dg;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Lcom/ijinshan/kinghelper/firewall/dg;)V

    .line 51
    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/dd;->l(Z)V

    .line 52
    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/dd;->m(Z)V

    .line 53
    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/dd;->n(Z)V

    .line 54
    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/dd;->o(Z)V

    .line 55
    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/dd;->p(Z)V

    .line 56
    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/dd;->q(Z)V

    .line 57
    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/dd;->r(Z)V

    .line 58
    invoke-static {v2, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(ZZ)V

    .line 60
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->l(Z)V

    .line 61
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->m(Z)V

    .line 62
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->n(Z)V

    .line 63
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->o(Z)V

    .line 64
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->p(Z)V

    .line 65
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->q(Z)V

    .line 66
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->r(Z)V

    .line 67
    invoke-static {v1, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(ZZ)V

    .line 69
    const v0, 0x7f0b0024

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(ILjava/lang/String;)V

    .line 70
    const v0, 0x7f0b01cc

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(ILjava/lang/String;)V

    .line 72
    const v0, 0x7f0b01b3

    const/16 v1, 0x528

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(II)V

    const v0, 0x7f0b01b4

    const/16 v1, 0x1a4

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(II)V

    .line 73
    return-void
.end method

.method public static b(I)V
    .locals 1
    .parameter

    .prologue
    .line 671
    const v0, 0x7f0b01b4

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(II)V

    .line 672
    return-void
.end method

.method private static b(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 160
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(Ljava/lang/String;Z)V

    .line 161
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 333
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/df;->a(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Lcom/ijinshan/kinghelper/firewall/df;)V

    .line 334
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 134
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    return-void
.end method

.method private static b(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 152
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    return-void
.end method

.method public static b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 189
    const v0, 0x7f0b01b1

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 190
    return-void
.end method

.method public static c()V
    .locals 2

    .prologue
    const v1, 0x7f0b01f9

    .line 76
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 77
    return-void
.end method

.method private static c(I)V
    .locals 2
    .parameter

    .prologue
    .line 126
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    const v1, 0x7f0b01a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 545
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 547
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 548
    const-string v1, "pre_firewall_user_keyword"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 549
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 550
    const/4 v0, 0x1

    return v0
.end method

.method public static c(Z)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 342
    if-nez p0, :cond_0

    .line 343
    const v0, 0x7f0b01c6

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    .line 347
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b01bb

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)J
    .locals 3
    .parameter

    .prologue
    .line 110
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 172
    const v0, 0x7f0b01a1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public static d(Z)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 369
    if-nez p0, :cond_0

    .line 370
    const v0, 0x7f0b01c7

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    .line 373
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b01b8

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 619
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/de;->a(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/de;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Lcom/ijinshan/kinghelper/firewall/de;)V

    .line 620
    return-void
.end method

.method public static e()Z
    .locals 2

    .prologue
    .line 184
    const v0, 0x7f0b01b1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public static e(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 393
    if-nez p0, :cond_0

    .line 394
    const v0, 0x7f0b01c8

    sget-boolean v1, Lcom/ijinshan/kinghelper/firewall/dd;->f:Z

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    .line 398
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b01b7

    sget-boolean v1, Lcom/ijinshan/kinghelper/firewall/dd;->d:Z

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public static f()Lcom/ijinshan/kinghelper/firewall/dg;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 245
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dg;->values()[Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v0

    array-length v1, v0

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 246
    iget v4, v3, Lcom/ijinshan/kinghelper/firewall/dg;->i:I

    invoke-static {v4, v5}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 248
    :goto_1
    return-object v0

    .line 245
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    :cond_1
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->c:Lcom/ijinshan/kinghelper/firewall/dg;

    goto :goto_1
.end method

.method public static f(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 419
    if-nez p0, :cond_0

    .line 420
    const v0, 0x7f0b01c9

    sget-boolean v1, Lcom/ijinshan/kinghelper/firewall/dd;->f:Z

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    .line 424
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b01b6

    sget-boolean v1, Lcom/ijinshan/kinghelper/firewall/dd;->d:Z

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public static g()Lcom/ijinshan/kinghelper/firewall/df;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 320
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/df;->values()[Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v0

    array-length v1, v0

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 321
    iget v4, v3, Lcom/ijinshan/kinghelper/firewall/df;->i:I

    invoke-static {v4, v5}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 323
    :goto_1
    return-object v0

    .line 320
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_1
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->e:Lcom/ijinshan/kinghelper/firewall/df;

    goto :goto_1
.end method

.method public static g(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 446
    if-nez p0, :cond_0

    .line 447
    const v0, 0x7f0b01ca

    sget-boolean v1, Lcom/ijinshan/kinghelper/firewall/dd;->f:Z

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    .line 450
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b01b5

    sget-boolean v1, Lcom/ijinshan/kinghelper/firewall/dd;->d:Z

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 530
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 532
    const-string v1, "pre_firewall_user_keyword"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    if-nez v0, :cond_1

    move-object v0, v2

    .line 538
    :cond_0
    :goto_0
    return-object v0

    .line 535
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v2

    .line 536
    goto :goto_0
.end method

.method public static h(Z)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 466
    if-eqz p0, :cond_0

    .line 467
    const v0, 0x7f0b01c2

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    .line 471
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b01af

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public static i()Lcom/ijinshan/kinghelper/firewall/de;
    .locals 3

    .prologue
    .line 613
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    const v1, 0x7f0b01a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/de;->a(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/de;

    move-result-object v0

    return-object v0
.end method

.method public static i(Z)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 495
    if-eqz p0, :cond_0

    .line 496
    const v0, 0x7f0b01c3

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    .line 500
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b01b0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public static j()Z
    .locals 2

    .prologue
    .line 633
    const v0, 0x7f0b01a2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public static j(Z)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 506
    if-eqz p0, :cond_0

    .line 507
    const v0, 0x7f0b01c1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    .line 511
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b01ae

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public static k(Z)V
    .locals 1
    .parameter

    .prologue
    .line 639
    const v0, 0x7f0b01a2

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 641
    return-void
.end method

.method public static k()Z
    .locals 2

    .prologue
    .line 646
    const v0, 0x7f0b01cd

    sget-boolean v1, Lcom/ijinshan/kinghelper/firewall/dd;->j:Z

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public static l()V
    .locals 2

    .prologue
    .line 657
    const v0, 0x7f0b01cf

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 658
    return-void
.end method

.method private static l(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 355
    if-nez p0, :cond_0

    .line 356
    const v0, 0x7f0b01c6

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 362
    :goto_0
    return-void

    .line 359
    :cond_0
    const v0, 0x7f0b01bb

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    goto :goto_0
.end method

.method private static m(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 380
    if-nez p0, :cond_0

    .line 381
    const v0, 0x7f0b01c7

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    const v0, 0x7f0b01b8

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    goto :goto_0
.end method

.method public static m()Z
    .locals 2

    .prologue
    .line 661
    const v0, 0x7f0b01cf

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public static n()I
    .locals 2

    .prologue
    .line 682
    const v0, 0x7f0b01b3

    const/16 v1, 0x528

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(II)I

    move-result v0

    return v0
.end method

.method private static n(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 405
    if-nez p0, :cond_0

    .line 406
    const v0, 0x7f0b01c8

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 412
    :goto_0
    return-void

    .line 409
    :cond_0
    const v0, 0x7f0b01b7

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    goto :goto_0
.end method

.method public static o()I
    .locals 2

    .prologue
    .line 688
    const v0, 0x7f0b01b4

    const/16 v1, 0x1a4

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(II)I

    move-result v0

    return v0
.end method

.method private static o(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 431
    if-nez p0, :cond_0

    .line 432
    const v0, 0x7f0b01c9

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 439
    :goto_0
    return-void

    .line 436
    :cond_0
    const v0, 0x7f0b01b6

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    goto :goto_0
.end method

.method private static p(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 457
    if-nez p0, :cond_0

    .line 458
    const v0, 0x7f0b01ca

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    const v0, 0x7f0b01b5

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    goto :goto_0
.end method

.method public static p()Z
    .locals 2

    .prologue
    .line 703
    const v0, 0x7f0b01f9

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    return v0
.end method

.method private static q(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 477
    if-nez p0, :cond_0

    .line 478
    const v0, 0x7f0b01af

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 484
    :goto_0
    return-void

    .line 481
    :cond_0
    const v0, 0x7f0b01c2

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    goto :goto_0
.end method

.method public static q()Z
    .locals 2

    .prologue
    .line 711
    const v0, 0x7f0b01fb

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public static r()Ljava/lang/String;
    .locals 3

    .prologue
    .line 720
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 722
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static r(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 517
    if-nez p0, :cond_0

    .line 518
    const v0, 0x7f0b01ae

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 522
    :goto_0
    return-void

    .line 520
    :cond_0
    const v0, 0x7f0b01c1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    goto :goto_0
.end method

.method public static s()Ljava/lang/String;
    .locals 3

    .prologue
    .line 732
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 734
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    const v2, 0x7f0b01cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static s(Z)V
    .locals 1
    .parameter

    .prologue
    .line 652
    const v0, 0x7f0b01cd

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 654
    return-void
.end method

.method public static t()V
    .locals 2

    .prologue
    .line 744
    const v0, 0x7f0b01c5

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 745
    return-void
.end method

.method private static t(Z)V
    .locals 1
    .parameter

    .prologue
    .line 699
    const v0, 0x7f0b01c4

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 700
    return-void
.end method

.method private static u(Z)V
    .locals 1
    .parameter

    .prologue
    .line 707
    const v0, 0x7f0b01f9

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 708
    return-void
.end method

.method public static u()Z
    .locals 2

    .prologue
    .line 748
    const v0, 0x7f0b01c5

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    return v0
.end method

.method private static v(Z)V
    .locals 1
    .parameter

    .prologue
    .line 715
    const v0, 0x7f0b01fb

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 716
    return-void
.end method

.method public static v()Z
    .locals 2

    .prologue
    .line 752
    const-string v0, "ScannedRubbishSMS2"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static w()V
    .locals 2

    .prologue
    .line 756
    const-string v0, "ScannedRubbishSMS2"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(Ljava/lang/String;Z)V

    .line 757
    return-void
.end method

.method private static w(Z)V
    .locals 1
    .parameter

    .prologue
    .line 768
    const v0, 0x7f0b01a3

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dd;->b(IZ)V

    .line 769
    return-void
.end method

.method public static x()V
    .locals 2

    .prologue
    .line 764
    const-string v0, "ScannedRubbishSMSDlgShow"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->b(Ljava/lang/String;Z)V

    .line 765
    return-void
.end method

.method private static x(Z)V
    .locals 1
    .parameter

    .prologue
    .line 779
    const-string v0, "com.ijinshan.kinghelper.firewall.FirewallLogDetailActivity.auto.report"

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dd;->b(Ljava/lang/String;Z)V

    .line 780
    return-void
.end method

.method public static y()J
    .locals 4

    .prologue
    .line 797
    const-string v0, "mose_lastcrashtime"

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dd;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static y(Z)V
    .locals 1
    .parameter

    .prologue
    .line 787
    const-string v0, "com.ijinshan.kinghelper.firewall.FirewallLogDetailActivity.show.report.dialog"

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dd;->b(Ljava/lang/String;Z)V

    .line 788
    return-void
.end method

.method public static z()Z
    .locals 2

    .prologue
    .line 801
    const v0, 0x7f0b001e

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(IZ)Z

    move-result v0

    return v0
.end method
