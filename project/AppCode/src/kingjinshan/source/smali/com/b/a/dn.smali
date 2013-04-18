.class public abstract Lcom/b/a/dn;
.super Lcom/b/a/c;
.source "GeneratedMessage.java"


# instance fields
.field private a:Lcom/b/a/dp;

.field private b:Lcom/b/a/do;

.field private c:Z

.field private d:Lcom/b/a/gg;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 224
    return-void
.end method

.method protected constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/b/a/c;-><init>()V

    .line 219
    invoke-static {}, Lcom/b/a/gg;->f()Lcom/b/a/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/dn;->d:Lcom/b/a/gg;

    .line 227
    iput-object p1, p0, Lcom/b/a/dn;->a:Lcom/b/a/dp;

    .line 228
    return-void
.end method

.method static synthetic a(Lcom/b/a/dn;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/b/a/dn;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/util/Map;
    .locals 5

    .prologue
    .line 298
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 300
    invoke-virtual {p0}, Lcom/b/a/dn;->B()Lcom/b/a/dv;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/dv;->a(Lcom/b/a/dv;)Lcom/b/a/cj;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/b/a/cj;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/cq;

    .line 302
    invoke-virtual {v0}, Lcom/b/a/cq;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    invoke-virtual {p0, v0}, Lcom/b/a/dn;->b(Lcom/b/a/cq;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 304
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 305
    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {p0, v0}, Lcom/b/a/dn;->a(Lcom/b/a/cq;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {p0, v0}, Lcom/b/a/dn;->b(Lcom/b/a/cq;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 313
    :cond_2
    return-object v2
.end method


# virtual methods
.method protected abstract B()Lcom/b/a/dv;
.end method

.method public C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/b/a/dn;->B()Lcom/b/a/dv;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/dv;->a(Lcom/b/a/dv;)Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Lcom/b/a/gg;->f()Lcom/b/a/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/dn;->d:Lcom/b/a/gg;

    .line 275
    invoke-virtual {p0}, Lcom/b/a/dn;->af_()V

    .line 276
    return-object p0
.end method

.method public G()Lcom/b/a/dn;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final O()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/dn;->a:Lcom/b/a/dp;

    .line 232
    return-void
.end method

.method public final synthetic a(Lcom/b/a/gg;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/b/a/dn;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/b/a/cq;ILjava/lang/Object;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-virtual {p0, p1, p2, p3}, Lcom/b/a/dn;->b(Lcom/b/a/cq;ILjava/lang/Object;)Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/b/a/dn;->d(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/b/a/cq;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/b/a/dn;->B()Lcom/b/a/dv;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/dv;->a(Lcom/b/a/dv;Lcom/b/a/cq;)Lcom/b/a/dw;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/b/a/dw;->a(Lcom/b/a/dn;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 396
    invoke-virtual {p0}, Lcom/b/a/dn;->C()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cj;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/cq;

    .line 398
    invoke-virtual {v0}, Lcom/b/a/cq;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    invoke-virtual {p0, v0}, Lcom/b/a/dn;->a(Lcom/b/a/cq;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v4

    .line 421
    :goto_0
    return v0

    .line 404
    :cond_1
    invoke-virtual {v0}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v2

    sget-object v3, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v2, v3, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/b/a/cq;->m()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 407
    invoke-virtual {p0, v0}, Lcom/b/a/dn;->b(Lcom/b/a/cq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 408
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ev;

    .line 409
    invoke-interface {v0}, Lcom/b/a/ev;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    .line 410
    goto :goto_0

    .line 414
    :cond_3
    invoke-virtual {p0, v0}, Lcom/b/a/dn;->a(Lcom/b/a/cq;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/b/a/dn;->b(Lcom/b/a/cq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ev;

    invoke-interface {v0}, Lcom/b/a/ev;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 416
    goto :goto_0

    .line 421
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/b/a/cq;)Z
    .locals 1
    .parameter

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/b/a/dn;->B()Lcom/b/a/dv;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/dv;->a(Lcom/b/a/dv;Lcom/b/a/cq;)Lcom/b/a/dw;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/b/a/dw;->b(Lcom/b/a/dn;)Z

    move-result v0

    return v0
.end method

.method protected a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 438
    invoke-virtual {p2, p4, p1}, Lcom/b/a/gi;->a(ILcom/b/a/m;)Z

    move-result v0

    return v0
.end method

.method public a_()Ljava/util/Map;
    .locals 1

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/b/a/dn;->i()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final ab_()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/b/a/dn;->a:Lcom/b/a/dp;

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/dn;->c:Z

    .line 241
    :cond_0
    return-void
.end method

.method protected final ac_()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/dn;->c:Z

    .line 249
    return-void
.end method

.method protected final ad_()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/b/a/dn;->c:Z

    return v0
.end method

.method protected final ae_()Lcom/b/a/dp;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/b/a/dn;->b:Lcom/b/a/do;

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Lcom/b/a/do;

    invoke-direct {v0, p0}, Lcom/b/a/do;-><init>(Lcom/b/a/dn;)V

    iput-object v0, p0, Lcom/b/a/dn;->b:Lcom/b/a/do;

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/b/a/dn;->b:Lcom/b/a/do;

    return-object v0
.end method

.method protected final af_()V
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/b/a/dn;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/dn;->a:Lcom/b/a/dp;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/b/a/dn;->a:Lcom/b/a/dp;

    invoke-interface {v0}, Lcom/b/a/dp;->a()V

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/dn;->c:Z

    .line 476
    :cond_0
    return-void
.end method

.method public synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/b/a/dn;->G()Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/b/a/cq;ILjava/lang/Object;)Lcom/b/a/dn;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/b/a/dn;->B()Lcom/b/a/dv;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/dv;->a(Lcom/b/a/dv;Lcom/b/a/cq;)Lcom/b/a/dw;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3}, Lcom/b/a/dw;->a(Lcom/b/a/dn;ILjava/lang/Object;)V

    .line 367
    return-object p0
.end method

.method public synthetic b(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/b/a/dn;->c(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/gg;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/b/a/dn;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/b/a/cq;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/b/a/dn;->B()Lcom/b/a/dv;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/dv;->a(Lcom/b/a/dv;Lcom/b/a/cq;)Lcom/b/a/dw;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/b/a/dw;->a(Lcom/b/a/dn;)Ljava/lang/Object;

    move-result-object p0

    .line 329
    invoke-virtual {p1}, Lcom/b/a/cq;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public final b_()Lcom/b/a/gg;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/b/a/dn;->d:Lcom/b/a/gg;

    return-object v0
.end method

.method public c(Lcom/b/a/cq;)I
    .locals 1
    .parameter

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/b/a/dn;->B()Lcom/b/a/dv;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/dv;->a(Lcom/b/a/dv;Lcom/b/a/cq;)Lcom/b/a/dw;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/b/a/dw;->c(Lcom/b/a/dn;)I

    move-result v0

    return v0
.end method

.method public synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/dn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/b/a/dn;->B()Lcom/b/a/dv;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/dv;->a(Lcom/b/a/dv;Lcom/b/a/cq;)Lcom/b/a/dw;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/b/a/dw;->a(Lcom/b/a/dn;Ljava/lang/Object;)V

    .line 341
    return-object p0
.end method

.method public final synthetic c(Lcom/b/a/gg;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/b/a/dn;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/b/a/dn;->G()Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/dn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/b/a/dn;->B()Lcom/b/a/dv;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/dv;->a(Lcom/b/a/dv;Lcom/b/a/cq;)Lcom/b/a/dw;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/b/a/dw;->b(Lcom/b/a/dn;Ljava/lang/Object;)V

    .line 373
    return-object p0
.end method

.method public final d(Lcom/b/a/gg;)Lcom/b/a/dn;
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/b/a/dn;->d:Lcom/b/a/gg;

    .line 379
    invoke-virtual {p0}, Lcom/b/a/dn;->af_()V

    .line 380
    return-object p0
.end method

.method public synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/b/a/dn;->G()Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/b/a/cq;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/b/a/dn;->f(Lcom/b/a/cq;)Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/gg;)Lcom/b/a/dn;
    .locals 1
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lcom/b/a/dn;->d:Lcom/b/a/gg;

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gi;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/dn;->d:Lcom/b/a/gg;

    .line 390
    invoke-virtual {p0}, Lcom/b/a/dn;->af_()V

    .line 391
    return-object p0
.end method

.method public final e(Lcom/b/a/cq;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/b/a/dn;->B()Lcom/b/a/dv;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/dv;->a(Lcom/b/a/dv;Lcom/b/a/cq;)Lcom/b/a/dw;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/dw;->a()Lcom/b/a/ew;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/b/a/dn;->G()Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/b/a/cq;)Lcom/b/a/dn;
    .locals 1
    .parameter

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/b/a/dn;->B()Lcom/b/a/dv;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/dv;->a(Lcom/b/a/dv;Lcom/b/a/cq;)Lcom/b/a/dw;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/b/a/dw;->d(Lcom/b/a/dn;)V

    .line 347
    return-object p0
.end method

.method public synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/b/a/dn;->G()Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method
