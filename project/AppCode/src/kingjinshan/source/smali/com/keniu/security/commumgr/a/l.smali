.class public Lcom/keniu/security/commumgr/a/l;
.super Lcom/keniu/security/util/k;
.source "RpDlgCallback.java"

# interfaces
.implements Lcom/keniu/security/commumgr/a/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/keniu/security/util/k;-><init>()V

    return-void
.end method

.method private a(IIIII)Lcom/keniu/security/util/x;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    new-instance v0, Lcom/keniu/security/commumgr/a/o;

    move-object v1, p0

    move v2, p4

    move v3, p1

    move v4, p5

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/keniu/security/commumgr/a/o;-><init>(Lcom/keniu/security/commumgr/a/l;IIIII)V

    return-object v0
.end method

.method private a(I)Lcom/keniu/security/util/z;
    .locals 1
    .parameter

    .prologue
    .line 9
    new-instance v0, Lcom/keniu/security/commumgr/a/m;

    invoke-direct {v0, p0, p1}, Lcom/keniu/security/commumgr/a/m;-><init>(Lcom/keniu/security/commumgr/a/l;I)V

    return-object v0
.end method

.method private b(II)Lcom/keniu/security/util/w;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    new-instance v0, Lcom/keniu/security/commumgr/a/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/keniu/security/commumgr/a/n;-><init>(Lcom/keniu/security/commumgr/a/l;II)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->C:Ljava/lang/String;

    .line 51
    sget-object v1, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    const/16 v2, 0x100

    invoke-direct {p0, v2}, Lcom/keniu/security/commumgr/a/l;->a(I)Lcom/keniu/security/util/z;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/keniu/security/commumgr/a/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/keniu/security/util/z;)Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 53
    return-void
.end method

.method public final a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 65
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    const v1, 0x7f0b0264

    const v2, 0x7f0b0218

    invoke-direct {p0, p1, p2}, Lcom/keniu/security/commumgr/a/l;->b(II)Lcom/keniu/security/util/w;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/keniu/security/commumgr/a/l;->a(Landroid/content/Context;IILcom/keniu/security/util/w;)V

    .line 69
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 57
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    const v1, 0x7f0b0265

    const v2, 0x7f0b0224

    const/16 v3, 0x103

    const/4 v4, 0x6

    invoke-direct {p0, v3, v4}, Lcom/keniu/security/commumgr/a/l;->b(II)Lcom/keniu/security/util/w;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/keniu/security/commumgr/a/l;->a(Landroid/content/Context;IILcom/keniu/security/util/w;)V

    .line 61
    return-void
.end method

.method public final c()V
    .locals 5

    .prologue
    .line 73
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    const v1, 0x7f0b046e

    const v2, 0x7f0b0218

    const/16 v3, 0x106

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Lcom/keniu/security/commumgr/a/l;->b(II)Lcom/keniu/security/util/w;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/keniu/security/commumgr/a/l;->a(Landroid/content/Context;IILcom/keniu/security/util/w;)V

    .line 77
    return-void
.end method

.method public final d()V
    .locals 5

    .prologue
    .line 81
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    const v1, 0x7f0b046f

    const v2, 0x7f0b0218

    const/16 v3, 0x105

    const/4 v4, 0x6

    invoke-direct {p0, v3, v4}, Lcom/keniu/security/commumgr/a/l;->b(II)Lcom/keniu/security/util/w;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/keniu/security/commumgr/a/l;->a(Landroid/content/Context;IILcom/keniu/security/util/w;)V

    .line 85
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 89
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    const/16 v1, 0x109

    invoke-direct {p0, v1}, Lcom/keniu/security/commumgr/a/l;->a(I)Lcom/keniu/security/util/z;

    move-result-object v1

    const v2, 0x7f0b0471

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/keniu/security/util/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/keniu/security/util/z;)Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 92
    return-void
.end method

.method public final f()V
    .locals 8

    .prologue
    .line 97
    sget-object v7, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/keniu/security/commumgr/a/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dlg_QueryReportMsgIncludeContent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/keniu/security/commumgr/a/o;

    const/16 v2, 0x111

    const/16 v3, 0x107

    const/16 v4, 0x110

    const/16 v5, 0x108

    const/16 v6, 0x109

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/keniu/security/commumgr/a/o;-><init>(Lcom/keniu/security/commumgr/a/l;IIIII)V

    const v1, 0x7f0b0470

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v7, v1, v0}, Lcom/keniu/security/util/k;->a(Landroid/content/Context;Landroid/text/Spanned;Lcom/keniu/security/util/x;)V

    .line 101
    return-void
.end method
