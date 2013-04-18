.class public abstract Lcom/b/a/dk;
.super Lcom/b/a/a;
.source "GeneratedMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L

.field protected static j:Z


# instance fields
.field private final b:Lcom/b/a/gg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/b/a/dk;->j:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/b/a/a;-><init>()V

    .line 71
    invoke-static {}, Lcom/b/a/gg;->f()Lcom/b/a/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/dk;->b:Lcom/b/a/gg;

    .line 72
    return-void
.end method

.method protected constructor <init>(Lcom/b/a/dn;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/b/a/a;-><init>()V

    .line 75
    invoke-virtual {p1}, Lcom/b/a/dn;->b_()Lcom/b/a/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/dk;->b:Lcom/b/a/gg;

    .line 76
    return-void
.end method

.method private static a(Lcom/b/a/ev;ILjava/lang/Class;Lcom/b/a/ev;)Lcom/b/a/ed;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1131
    new-instance v0, Lcom/b/a/ed;

    new-instance v1, Lcom/b/a/dl;

    invoke-direct {v1, p0, p1}, Lcom/b/a/dl;-><init>(Lcom/b/a/ev;I)V

    invoke-direct {v0, v1, p2, p3}, Lcom/b/a/ed;-><init>(Lcom/b/a/du;Ljava/lang/Class;Lcom/b/a/ev;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Class;Lcom/b/a/ev;)Lcom/b/a/ed;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1151
    new-instance v0, Lcom/b/a/ed;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/b/a/ed;-><init>(Lcom/b/a/du;Ljava/lang/Class;Lcom/b/a/ev;)V

    return-object v0
.end method

.method static synthetic a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/b/a/dk;->b(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/b/a/dk;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/dk;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/b/a/dk;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static varargs b(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1369
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 1370
    :catch_0
    move-exception v0

    .line 1371
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1374
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1376
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 1377
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 1378
    :cond_0
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .line 1379
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 1381
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected exception thrown by generated accessor method."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static varargs b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1357
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1358
    :catch_0
    move-exception v0

    .line 1359
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated message class \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" missing method \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static h()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    sput-boolean v0, Lcom/b/a/dk;->j:Z

    .line 86
    return-void
.end method

.method private i()Ljava/util/Map;
    .locals 5

    .prologue
    .line 102
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 104
    invoke-virtual {p0}, Lcom/b/a/dk;->g()Lcom/b/a/dv;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/dv;->a(Lcom/b/a/dv;)Lcom/b/a/cj;

    move-result-object v0

    .line 105
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

    .line 106
    invoke-virtual {v0}, Lcom/b/a/cq;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {p0, v0}, Lcom/b/a/dk;->b(Lcom/b/a/cq;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 108
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 109
    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0, v0}, Lcom/b/a/dk;->a(Lcom/b/a/cq;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {p0, v0}, Lcom/b/a/dk;->b(Lcom/b/a/cq;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_2
    return-object v2
.end method


# virtual methods
.method protected B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1832
    new-instance v0, Lcom/b/a/eo;

    invoke-direct {v0, p0}, Lcom/b/a/eo;-><init>(Lcom/b/a/ex;)V

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/b/a/dk;->g()Lcom/b/a/dv;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/dv;->a(Lcom/b/a/dv;)Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Lcom/b/a/dp;)Lcom/b/a/ew;
.end method

.method public a(Lcom/b/a/cq;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/b/a/dk;->g()Lcom/b/a/dv;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/dv;->a(Lcom/b/a/dv;Lcom/b/a/cq;)Lcom/b/a/dw;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/b/a/dw;->a(Lcom/b/a/dk;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/b/a/dk;->g()Lcom/b/a/dv;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/dv;->a(Lcom/b/a/dv;)Lcom/b/a/cj;

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

    .line 124
    invoke-virtual {v0}, Lcom/b/a/cq;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    invoke-virtual {p0, v0}, Lcom/b/a/dk;->a(Lcom/b/a/cq;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v4

    .line 147
    :goto_0
    return v0

    .line 130
    :cond_1
    invoke-virtual {v0}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v2

    sget-object v3, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v2, v3, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/b/a/cq;->m()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    invoke-virtual {p0, v0}, Lcom/b/a/dk;->b(Lcom/b/a/cq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ev;

    .line 135
    invoke-interface {v0}, Lcom/b/a/ev;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    .line 136
    goto :goto_0

    .line 140
    :cond_3
    invoke-virtual {p0, v0}, Lcom/b/a/dk;->a(Lcom/b/a/cq;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/b/a/dk;->b(Lcom/b/a/cq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ev;

    invoke-interface {v0}, Lcom/b/a/ev;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 141
    goto :goto_0

    .line 147
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/b/a/cq;)Z
    .locals 1
    .parameter

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/b/a/dk;->g()Lcom/b/a/dv;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/dv;->a(Lcom/b/a/dv;Lcom/b/a/cq;)Lcom/b/a/dw;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/b/a/dw;->b(Lcom/b/a/dk;)Z

    move-result v0

    return v0
.end method

.method public a_()Ljava/util/Map;
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/b/a/dk;->i()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/b/a/cq;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/b/a/dk;->g()Lcom/b/a/dv;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/dv;->a(Lcom/b/a/dv;Lcom/b/a/cq;)Lcom/b/a/dw;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/b/a/dw;->a(Lcom/b/a/dk;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b_()Lcom/b/a/gg;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/b/a/dk;->b:Lcom/b/a/gg;

    return-object v0
.end method

.method public c(Lcom/b/a/cq;)I
    .locals 1
    .parameter

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/b/a/dk;->g()Lcom/b/a/dv;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/dv;->a(Lcom/b/a/dv;Lcom/b/a/cq;)Lcom/b/a/dw;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/b/a/dw;->c(Lcom/b/a/dk;)I

    move-result v0

    return v0
.end method

.method protected abstract g()Lcom/b/a/dv;
.end method
