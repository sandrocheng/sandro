.class public final Lcom/b/a/co;
.super Ljava/lang/Object;
.source "Descriptors.java"

# interfaces
.implements Lcom/b/a/cv;
.implements Lcom/b/a/er;


# instance fields
.field private final a:I

.field private b:Lcom/b/a/x;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/b/a/ct;

.field private final e:Lcom/b/a/cj;

.field private f:[Lcom/b/a/cp;


# direct methods
.method synthetic constructor <init>(Lcom/b/a/x;Lcom/b/a/ct;Lcom/b/a/cj;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1148
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/b/a/co;-><init>(Lcom/b/a/x;Lcom/b/a/ct;Lcom/b/a/cj;IB)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/x;Lcom/b/a/ct;Lcom/b/a/cj;IB)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1220
    iput p4, p0, Lcom/b/a/co;->a:I

    .line 1221
    iput-object p1, p0, Lcom/b/a/co;->b:Lcom/b/a/x;

    .line 1222
    invoke-virtual {p1}, Lcom/b/a/x;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/b/a/ch;->a(Lcom/b/a/ct;Lcom/b/a/cj;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/co;->c:Ljava/lang/String;

    .line 1223
    iput-object p2, p0, Lcom/b/a/co;->d:Lcom/b/a/ct;

    .line 1224
    iput-object p3, p0, Lcom/b/a/co;->e:Lcom/b/a/cj;

    .line 1226
    invoke-virtual {p1}, Lcom/b/a/x;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 1229
    new-instance v0, Lcom/b/a/cn;

    const-string v1, "Enums must contain at least one value."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 1233
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/x;->l()I

    move-result v0

    new-array v0, v0, [Lcom/b/a/cp;

    iput-object v0, p0, Lcom/b/a/co;->f:[Lcom/b/a/cp;

    .line 1234
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/b/a/x;->l()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1235
    iget-object v1, p0, Lcom/b/a/co;->f:[Lcom/b/a/cp;

    new-instance v2, Lcom/b/a/cp;

    invoke-virtual {p1, v0}, Lcom/b/a/x;->a(I)Lcom/b/a/ad;

    move-result-object v3

    invoke-direct {v2, v3, p2, p0, v0}, Lcom/b/a/cp;-><init>(Lcom/b/a/ad;Lcom/b/a/ct;Lcom/b/a/co;I)V

    aput-object v2, v1, v0

    .line 1234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1239
    :cond_1
    invoke-static {p2}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ck;->a(Lcom/b/a/cv;)V

    .line 1240
    return-void
.end method

.method static synthetic a(Lcom/b/a/co;Lcom/b/a/x;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/b/a/co;->b:Lcom/b/a/x;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/b/a/co;->f:[Lcom/b/a/cp;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/b/a/co;->f:[Lcom/b/a/cp;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/b/a/x;->a(I)Lcom/b/a/ad;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/cp;->a(Lcom/b/a/cp;Lcom/b/a/ad;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/b/a/x;)V
    .locals 3
    .parameter

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/b/a/co;->b:Lcom/b/a/x;

    .line 1246
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/b/a/co;->f:[Lcom/b/a/cp;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1247
    iget-object v1, p0, Lcom/b/a/co;->f:[Lcom/b/a/cp;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/b/a/x;->a(I)Lcom/b/a/ad;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/cp;->a(Lcom/b/a/cp;Lcom/b/a/ad;)V

    .line 1246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1249
    :cond_0
    return-void
.end method

.method private e()I
    .locals 1

    .prologue
    .line 1154
    iget v0, p0, Lcom/b/a/co;->a:I

    return v0
.end method

.method private f()Lcom/b/a/x;
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/b/a/co;->b:Lcom/b/a/x;

    return-object v0
.end method

.method private g()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/b/a/co;->e:Lcom/b/a/cj;

    return-object v0
.end method

.method private h()Lcom/b/a/aa;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/b/a/co;->b:Lcom/b/a/x;

    invoke-virtual {v0}, Lcom/b/a/x;->n()Lcom/b/a/aa;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/b/a/cp;
    .locals 3
    .parameter

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/b/a/co;->d:Lcom/b/a/ct;

    invoke-static {v0}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/b/a/co;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ck;->a(Ljava/lang/String;)Lcom/b/a/cv;

    move-result-object p0

    .line 1190
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/b/a/cp;

    if-eqz v0, :cond_0

    .line 1191
    check-cast p0, Lcom/b/a/cp;

    move-object v0, p0

    .line 1193
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic a(I)Lcom/b/a/eq;
    .locals 1
    .parameter

    .prologue
    .line 1148
    invoke-virtual {p0, p1}, Lcom/b/a/co;->b(I)Lcom/b/a/cp;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/b/a/co;->b:Lcom/b/a/x;

    invoke-virtual {v0}, Lcom/b/a/x;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/b/a/cp;
    .locals 2
    .parameter

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/b/a/co;->d:Lcom/b/a/ct;

    invoke-static {v0}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/ck;->b(Lcom/b/a/ck;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/b/a/cl;

    invoke-direct {v1, p0, p1}, Lcom/b/a/cl;-><init>(Lcom/b/a/cv;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cp;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/b/a/co;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/b/a/ct;
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/b/a/co;->d:Lcom/b/a/ct;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/b/a/co;->f:[Lcom/b/a/cp;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/b/a/co;->b:Lcom/b/a/x;

    return-object v0
.end method
