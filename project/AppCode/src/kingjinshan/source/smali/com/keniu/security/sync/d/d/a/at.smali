.class public final Lcom/keniu/security/sync/d/d/a/at;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/au;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1186
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 1314
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/at;->b:Ljava/lang/Object;

    .line 1187
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/as;->l()Z

    .line 1188
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 1172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/at;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1191
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 1314
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/at;->b:Ljava/lang/Object;

    .line 1192
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/as;->l()Z

    .line 1193
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/at;)Lcom/keniu/security/sync/d/d/a/as;
    .locals 2
    .parameter

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/at;->t()Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/as;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/at;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/at;
    .locals 1
    .parameter

    .prologue
    .line 1329
    if-nez p1, :cond_0

    .line 1330
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1332
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/at;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/at;->a:I

    .line 1333
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/at;->b:Ljava/lang/Object;

    .line 1334
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/at;->af_()V

    .line 1335
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/at;
    .locals 1
    .parameter

    .prologue
    .line 1254
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/as;

    if-eqz v0, :cond_0

    .line 1255
    check-cast p1, Lcom/keniu/security/sync/d/d/a/as;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/at;->a(Lcom/keniu/security/sync/d/d/a/as;)Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    .line 1258
    :goto_0
    return-object v0

    .line 1257
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 1258
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 1344
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/at;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/at;->a:I

    .line 1345
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/at;->b:Ljava/lang/Object;

    .line 1346
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/at;->af_()V

    .line 1347
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/at;
    .locals 1

    .prologue
    .line 1172
    new-instance v0, Lcom/keniu/security/sync/d/d/a/at;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/at;-><init>()V

    return-object v0
.end method

.method private static l()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1177
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static m()V
    .locals 0

    .prologue
    .line 1195
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/as;->l()Z

    .line 1197
    return-void
.end method

.method private static n()Lcom/keniu/security/sync/d/d/a/at;
    .locals 1

    .prologue
    .line 1199
    new-instance v0, Lcom/keniu/security/sync/d/d/a/at;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/at;-><init>()V

    return-object v0
.end method

.method private o()Lcom/keniu/security/sync/d/d/a/at;
    .locals 1

    .prologue
    .line 1203
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 1204
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/at;->b:Ljava/lang/Object;

    .line 1205
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/at;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/at;->a:I

    .line 1206
    return-object p0
.end method

.method private p()Lcom/keniu/security/sync/d/d/a/at;
    .locals 2

    .prologue
    .line 1210
    new-instance v0, Lcom/keniu/security/sync/d/d/a/at;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/at;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/at;->t()Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/at;->a(Lcom/keniu/security/sync/d/d/a/as;)Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/as;
    .locals 1

    .prologue
    .line 1219
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/as;->h()Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/as;
    .locals 2

    .prologue
    .line 1223
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/at;->t()Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    .line 1224
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/as;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1225
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/at;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 1227
    :cond_0
    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/as;
    .locals 2

    .prologue
    .line 1232
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/at;->t()Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    .line 1233
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/as;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1234
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/at;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 1237
    :cond_0
    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/as;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1241
    new-instance v0, Lcom/keniu/security/sync/d/d/a/as;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/as;-><init>(Lcom/keniu/security/sync/d/d/a/at;)V

    .line 1242
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/at;->a:I

    .line 1243
    const/4 v2, 0x0

    .line 1244
    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    .line 1247
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/at;->b:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/as;->a(Lcom/keniu/security/sync/d/d/a/as;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/as;->a(Lcom/keniu/security/sync/d/d/a/as;I)I

    .line 1249
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/at;->ab_()V

    .line 1250
    return-object v0

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/at;
    .locals 1

    .prologue
    .line 1338
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/at;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/at;->a:I

    .line 1339
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/as;->h()Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/as;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/at;->b:Ljava/lang/Object;

    .line 1340
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/at;->af_()V

    .line 1341
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 1182
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->g()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1215
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/as;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/at;->o()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/at;->p()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1172
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/as;->h()Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1172
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/as;->h()Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/at;->t()Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/at;->r()Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/at;->t()Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/at;->r()Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 1172
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/at;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1172
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/at;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/as;)Lcom/keniu/security/sync/d/d/a/at;
    .locals 2
    .parameter

    .prologue
    .line 1263
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/as;->h()Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 1268
    :goto_0
    return-object v0

    .line 1264
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/as;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1265
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/as;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/at;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/at;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/at;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/at;->af_()V

    .line 1267
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/as;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/at;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 1268
    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 1272
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/at;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1274
    const/4 v0, 0x0

    .line 1276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/at;->p()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1172
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/at;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/at;->o()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 1172
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/at;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1172
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/at;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/at;->p()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/at;->p()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1172
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/at;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/at;->p()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/at;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1283
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/at;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 1287
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 1288
    sparse-switch v1, :sswitch_data_0

    .line 1294
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/at;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1296
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/at;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 1297
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/at;->af_()V

    move-object v0, p0

    .line 1298
    :goto_1
    return-object v0

    .line 1290
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/at;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 1291
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/at;->af_()V

    move-object v0, p0

    .line 1292
    goto :goto_1

    .line 1303
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/at;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/at;->a:I

    .line 1304
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/at;->b:Ljava/lang/Object;

    goto :goto_0

    .line 1288
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/at;->o()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/at;->p()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/at;->o()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1316
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/at;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/at;->b:Ljava/lang/Object;

    .line 1320
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1321
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 1322
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/at;->b:Ljava/lang/Object;

    .line 1325
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
