.class public final Lcom/b/a/cp;
.super Ljava/lang/Object;
.source "Descriptors.java"

# interfaces
.implements Lcom/b/a/cv;
.implements Lcom/b/a/eq;


# instance fields
.field private final a:I

.field private b:Lcom/b/a/ad;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/b/a/ct;

.field private final e:Lcom/b/a/co;


# direct methods
.method synthetic constructor <init>(Lcom/b/a/ad;Lcom/b/a/ct;Lcom/b/a/co;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1260
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/b/a/cp;-><init>(Lcom/b/a/ad;Lcom/b/a/ct;Lcom/b/a/co;IB)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/ad;Lcom/b/a/ct;Lcom/b/a/co;IB)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1305
    iput p4, p0, Lcom/b/a/cp;->a:I

    .line 1306
    iput-object p1, p0, Lcom/b/a/cp;->b:Lcom/b/a/ad;

    .line 1307
    iput-object p2, p0, Lcom/b/a/cp;->d:Lcom/b/a/ct;

    .line 1308
    iput-object p3, p0, Lcom/b/a/cp;->e:Lcom/b/a/co;

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/b/a/co;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b/a/ad;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cp;->c:Ljava/lang/String;

    .line 1312
    invoke-static {p2}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ck;->a(Lcom/b/a/cv;)V

    .line 1313
    invoke-static {p2}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ck;->a(Lcom/b/a/cp;)V

    .line 1314
    return-void
.end method

.method private a(Lcom/b/a/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/b/a/cp;->b:Lcom/b/a/ad;

    .line 1319
    return-void
.end method

.method static synthetic a(Lcom/b/a/cp;Lcom/b/a/ad;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/b/a/cp;->b:Lcom/b/a/ad;

    return-void
.end method

.method private f()Lcom/b/a/ad;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/b/a/cp;->b:Lcom/b/a/ad;

    return-object v0
.end method

.method private g()Lcom/b/a/ag;
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/b/a/cp;->b:Lcom/b/a/ad;

    invoke-virtual {v0}, Lcom/b/a/ad;->m()Lcom/b/a/ag;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final H_()I
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/b/a/cp;->b:Lcom/b/a/ad;

    invoke-virtual {v0}, Lcom/b/a/ad;->k()I

    move-result v0

    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/b/a/cp;->b:Lcom/b/a/ad;

    invoke-virtual {v0}, Lcom/b/a/ad;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/b/a/cp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/b/a/ct;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/b/a/cp;->d:Lcom/b/a/ct;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 1266
    iget v0, p0, Lcom/b/a/cp;->a:I

    return v0
.end method

.method public final e()Lcom/b/a/co;
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/b/a/cp;->e:Lcom/b/a/co;

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/b/a/cp;->b:Lcom/b/a/ad;

    return-object v0
.end method
