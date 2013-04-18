.class public final Lcom/keniu/security/commumgr/a/e;
.super Ljava/lang/Object;
.source "RpCtrl.java"


# static fields
.field public static A:Ljava/util/List; = null

.field public static B:Z = false

.field public static C:Ljava/lang/String; = null

.field private static D:Landroid/content/Context; = null

.field private static final E:I = 0x1

.field private static final F:I = 0x2

.field private static G:Landroid/os/Handler; = null

.field private static final H:Ljava/lang/String; = "http://mosecurity.stat.jxphone.com/spdc/"

.field public static final a:I = 0x1388

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6

.field public static final i:I = 0x100

.field public static final j:I = 0x101

.field public static final k:I = 0x103

.field public static final l:I = 0x105

.field public static final m:I = 0x106

.field public static final n:I = 0x107

.field public static final o:I = 0x108

.field public static final p:I = 0x109

.field public static final q:I = 0x110

.field public static final r:I = 0x111

.field public static volatile s:Z

.field public static volatile t:Z

.field public static u:Lcom/keniu/security/commumgr/a/r;

.field public static v:Z

.field public static w:Z

.field public static x:Z

.field public static y:Lcom/keniu/security/commumgr/a/k;

.field public static z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-boolean v0, Lcom/keniu/security/commumgr/a/e;->s:Z

    .line 60
    sput-boolean v0, Lcom/keniu/security/commumgr/a/e;->t:Z

    .line 61
    new-instance v0, Lcom/keniu/security/commumgr/a/r;

    invoke-direct {v0}, Lcom/keniu/security/commumgr/a/r;-><init>()V

    sput-object v0, Lcom/keniu/security/commumgr/a/e;->u:Lcom/keniu/security/commumgr/a/r;

    .line 102
    new-instance v0, Lcom/keniu/security/commumgr/a/f;

    invoke-direct {v0}, Lcom/keniu/security/commumgr/a/f;-><init>()V

    sput-object v0, Lcom/keniu/security/commumgr/a/e;->G:Landroid/os/Handler;

    .line 212
    const-string v0, "http://mosecurity.stat.jxphone.com/spdc/"

    invoke-static {v0}, Lcom/keniu/security/util/ag;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/commumgr/a/e;->C:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/commumgr/a/e;->D:Landroid/content/Context;

    .line 119
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f070008

    new-instance v2, Lcom/keniu/security/commumgr/a/g;

    invoke-direct {v2, p0}, Lcom/keniu/security/commumgr/a/g;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 204
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/jxphone/mosecurity/c/l;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 215
    new-instance v0, Lcom/keniu/security/commumgr/e;

    invoke-direct {v0, p0}, Lcom/keniu/security/commumgr/e;-><init>(Landroid/content/Context;)V

    .line 217
    invoke-virtual {v0}, Lcom/keniu/security/commumgr/e;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-static {p0}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/keniu/security/commumgr/e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    invoke-static {p0}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    :cond_2
    new-instance v0, Lcom/keniu/security/commumgr/a/t;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/keniu/security/commumgr/a/t;-><init>(I)V

    .line 229
    invoke-virtual {v0, p1}, Lcom/keniu/security/commumgr/a/t;->a(Lcom/jxphone/mosecurity/c/l;)V

    .line 230
    invoke-static {p0, v0}, Lcom/keniu/security/commumgr/a/b;->a(Landroid/content/Context;Lcom/keniu/security/commumgr/a/t;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/keniu/security/commumgr/a/t;Lcom/keniu/security/commumgr/a/k;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {}, Ljava/lang/System;->gc()V

    sget-boolean v1, Lcom/keniu/security/commumgr/a/e;->s:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0b046a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    sput-object p2, Lcom/keniu/security/commumgr/a/e;->y:Lcom/keniu/security/commumgr/a/k;

    sput-object v0, Lcom/keniu/security/commumgr/a/e;->A:Ljava/util/List;

    sput-boolean p3, Lcom/keniu/security/commumgr/a/e;->B:Z

    sget-object v0, Lcom/keniu/security/commumgr/a/e;->u:Lcom/keniu/security/commumgr/a/r;

    invoke-virtual {v0}, Lcom/keniu/security/commumgr/a/r;->a()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;Lcom/keniu/security/commumgr/a/k;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 87
    sget-boolean v0, Lcom/keniu/security/commumgr/a/e;->s:Z

    if-eqz v0, :cond_0

    .line 88
    const v0, 0x7f0b046a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    .line 94
    sput-object p2, Lcom/keniu/security/commumgr/a/e;->y:Lcom/keniu/security/commumgr/a/k;

    .line 95
    sput-object p1, Lcom/keniu/security/commumgr/a/e;->A:Ljava/util/List;

    .line 96
    sput-boolean p3, Lcom/keniu/security/commumgr/a/e;->B:Z

    .line 97
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->u:Lcom/keniu/security/commumgr/a/r;

    invoke-virtual {v0}, Lcom/keniu/security/commumgr/a/r;->a()V

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 209
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->C:Ljava/lang/String;

    const-string v1, "http://mosecurity.stat.jxphone.com/spdc/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    const-string v0, "^\\+?[0-9]{3,32}$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->D:Landroid/content/Context;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    const-string v0, "^\\+?[0-9]{3,32}$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->G:Landroid/os/Handler;

    return-object v0
.end method
