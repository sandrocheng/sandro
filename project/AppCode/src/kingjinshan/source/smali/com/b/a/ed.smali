.class public final Lcom/b/a/ed;
.super Ljava/lang/Object;
.source "GeneratedMessage.java"


# instance fields
.field private a:Lcom/b/a/du;

.field private final b:Ljava/lang/Class;

.field private final c:Lcom/b/a/ev;

.field private final d:Ljava/lang/reflect/Method;

.field private final e:Ljava/lang/reflect/Method;


# direct methods
.method synthetic constructor <init>(Lcom/b/a/du;Ljava/lang/Class;Lcom/b/a/ev;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1182
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/b/a/ed;-><init>(Lcom/b/a/du;Ljava/lang/Class;Lcom/b/a/ev;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/du;Ljava/lang/Class;Lcom/b/a/ev;B)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1202
    const-class v0, Lcom/b/a/ev;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad messageDefaultInstance for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1207
    :cond_0
    iput-object p1, p0, Lcom/b/a/ed;->a:Lcom/b/a/du;

    .line 1208
    iput-object p2, p0, Lcom/b/a/ed;->b:Ljava/lang/Class;

    .line 1209
    iput-object p3, p0, Lcom/b/a/ed;->c:Lcom/b/a/ev;

    .line 1211
    const-class v0, Lcom/b/a/fb;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1212
    const-string v0, "valueOf"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/b/a/cp;

    aput-object v2, v1, v3

    invoke-static {p2, v0, v1}, Lcom/b/a/dk;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ed;->d:Ljava/lang/reflect/Method;

    .line 1214
    const-string v0, "getValueDescriptor"

    new-array v1, v3, [Ljava/lang/Class;

    invoke-static {p2, v0, v1}, Lcom/b/a/dk;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ed;->e:Ljava/lang/reflect/Method;

    .line 1220
    :goto_0
    return-void

    .line 1217
    :cond_1
    iput-object v1, p0, Lcom/b/a/ed;->d:Ljava/lang/reflect/Method;

    .line 1218
    iput-object v1, p0, Lcom/b/a/ed;->e:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method static synthetic a(Lcom/b/a/ed;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1182
    invoke-virtual {p0}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cq;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v1

    sget-object v2, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->h:Lcom/b/a/cr;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/b/a/ed;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, p1

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/b/a/ed;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v0

    .line 1266
    invoke-virtual {v0}, Lcom/b/a/cq;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1267
    invoke-virtual {v0}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v1

    sget-object v2, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->h:Lcom/b/a/cr;

    if-ne v0, v1, :cond_1

    .line 1270
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1272
    invoke-direct {p0, v2}, Lcom/b/a/ed;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 1279
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/b/a/ed;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Lcom/b/a/cq;)V
    .locals 2
    .parameter

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/b/a/ed;->a:Lcom/b/a/du;

    if-eqz v0, :cond_0

    .line 1225
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1227
    :cond_0
    new-instance v0, Lcom/b/a/ee;

    invoke-direct {v0, p0, p1}, Lcom/b/a/ee;-><init>(Lcom/b/a/ed;Lcom/b/a/cq;)V

    iput-object v0, p0, Lcom/b/a/ed;->a:Lcom/b/a/du;

    .line 1233
    return-void
.end method

.method static synthetic b(Lcom/b/a/ed;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1182
    invoke-direct {p0, p1}, Lcom/b/a/ed;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 1288
    invoke-virtual {p0}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v0

    .line 1289
    sget-object v1, Lcom/b/a/dm;->a:[I

    invoke-virtual {v0}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cr;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, p1

    .line 1306
    :goto_0
    return-object v0

    .line 1291
    :pswitch_0
    iget-object v0, p0, Lcom/b/a/ed;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1292
    goto :goto_0

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/b/a/ed;->c:Lcom/b/a/ev;

    invoke-interface {v0}, Lcom/b/a/ev;->E()Lcom/b/a/ew;

    move-result-object v0

    check-cast p1, Lcom/b/a/ev;

    invoke-interface {v0, p1}, Lcom/b/a/ew;->c(Lcom/b/a/ev;)Lcom/b/a/ew;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/ew;->K()Lcom/b/a/ev;

    move-result-object v0

    goto :goto_0

    .line 1304
    :pswitch_1
    iget-object v0, p0, Lcom/b/a/ed;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast p1, Lcom/b/a/cp;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/b/a/dk;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic c(Lcom/b/a/ed;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1182
    invoke-virtual {p0}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cq;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->h:Lcom/b/a/cr;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/b/a/ed;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, p1

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/b/a/ed;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v0

    .line 1319
    invoke-virtual {v0}, Lcom/b/a/cq;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1320
    invoke-virtual {v0}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->h:Lcom/b/a/cr;

    if-ne v0, v1, :cond_0

    .line 1322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1323
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1324
    invoke-direct {p0, v2}, Lcom/b/a/ed;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 1331
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/b/a/ed;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/b/a/ed;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1182
    invoke-direct {p0, p1}, Lcom/b/a/ed;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 1340
    invoke-virtual {p0}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v0

    .line 1341
    sget-object v1, Lcom/b/a/dm;->a:[I

    invoke-virtual {v0}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cr;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, p1

    .line 1345
    :goto_0
    return-object v0

    .line 1343
    :pswitch_0
    iget-object v0, p0, Lcom/b/a/ed;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/b/a/dk;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1341
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/b/a/cq;
    .locals 2

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/b/a/ed;->a:Lcom/b/a/du;

    if-nez v0, :cond_0

    .line 1243
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getDescriptor() called before internalInit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/b/a/ed;->a:Lcom/b/a/du;

    invoke-interface {v0}, Lcom/b/a/du;->a()Lcom/b/a/cq;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/b/a/ed;->c:Lcom/b/a/ev;

    return-object v0
.end method
