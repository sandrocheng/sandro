.class public final Lcom/b/a/gg;
.super Ljava/lang/Object;
.source "UnknownFieldSet.java"

# interfaces
.implements Lcom/b/a/ex;


# static fields
.field private static final a:Lcom/b/a/gg;


# instance fields
.field private b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lcom/b/a/gg;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/b/a/gg;-><init>(Ljava/util/Map;B)V

    sput-object v0, Lcom/b/a/gg;->a:Lcom/b/a/gg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/gg;-><init>(Ljava/util/Map;B)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/b/a/gg;->b:Ljava/util/Map;

    .line 91
    return-void
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/gg;
    .locals 1
    .parameter

    .prologue
    .line 245
    invoke-static {}, Lcom/b/a/gi;->c()Lcom/b/a/gi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/gi;->a(Lcom/b/a/i;)Lcom/b/a/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/gg;
    .locals 1
    .parameter

    .prologue
    .line 239
    invoke-static {}, Lcom/b/a/gi;->c()Lcom/b/a/gi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/gi;->a(Lcom/b/a/m;)Lcom/b/a/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/gg;
    .locals 1
    .parameter

    .prologue
    .line 257
    invoke-static {}, Lcom/b/a/gi;->c()Lcom/b/a/gi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/gi;->a(Ljava/io/InputStream;)Lcom/b/a/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/gg;
    .locals 1
    .parameter

    .prologue
    .line 251
    invoke-static {}, Lcom/b/a/gi;->c()Lcom/b/a/gi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/gi;->a([B)Lcom/b/a/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/b/a/gg;)Lcom/b/a/gi;
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-static {}, Lcom/b/a/gi;->c()Lcom/b/a/gi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/gi;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Z
    .locals 2
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/b/a/gg;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(I)Lcom/b/a/gj;
    .locals 2
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/b/a/gg;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/gj;

    .line 124
    if-nez p0, :cond_0

    invoke-static {}, Lcom/b/a/gj;->b()Lcom/b/a/gj;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method static synthetic b(Lcom/b/a/gg;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/b/a/gg;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static e()Lcom/b/a/gi;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/b/a/gi;->c()Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public static f()Lcom/b/a/gg;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/b/a/gg;->a:Lcom/b/a/gg;

    return-object v0
.end method

.method private static i()Lcom/b/a/gg;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/b/a/gg;->a:Lcom/b/a/gg;

    return-object v0
.end method

.method private static j()Lcom/b/a/gi;
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Lcom/b/a/gi;->c()Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method private k()Lcom/b/a/gi;
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Lcom/b/a/gi;->c()Lcom/b/a/gi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/gi;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/b/a/gi;->c()Lcom/b/a/gi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/gi;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/b/a/gi;->c()Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/b/a/gg;->a:Lcom/b/a/gg;

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/b/a/gg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/gj;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/b/a/gj;->a(ILcom/b/a/n;)V

    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    invoke-static {p1}, Lcom/b/a/n;->a(Ljava/io/OutputStream;)Lcom/b/a/n;

    move-result-object v0

    .line 185
    invoke-virtual {p0, v0}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 186
    invoke-virtual {v0}, Lcom/b/a/n;->j()V

    .line 187
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lcom/b/a/gg;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/gj;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/b/a/gj;->a(I)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    .line 202
    :cond_0
    return v2
.end method

.method public final b(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/b/a/gg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/gj;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/b/a/gj;->b(ILcom/b/a/n;)V

    goto :goto_0

    .line 215
    :cond_0
    return-void
.end method

.method public final b(Ljava/io/OutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 190
    invoke-static {p1}, Lcom/b/a/n;->a(Ljava/io/OutputStream;)Lcom/b/a/n;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Lcom/b/a/gg;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b/a/n;->q(I)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 193
    invoke-virtual {v0}, Lcom/b/a/n;->j()V

    .line 194
    return-void
.end method

.method public final c()Lcom/b/a/i;
    .locals 3

    .prologue
    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/b/a/gg;->b()I

    move-result v0

    invoke-static {v0}, Lcom/b/a/i;->b(I)Lcom/b/a/k;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/b/a/k;->b()Lcom/b/a/n;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 153
    invoke-virtual {v0}, Lcom/b/a/k;->a()Lcom/b/a/i;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final d()[B
    .locals 3

    .prologue
    .line 167
    :try_start_0
    invoke-virtual {p0}, Lcom/b/a/gg;->b()I

    move-result v0

    new-array v0, v0, [B

    .line 168
    invoke-static {v0}, Lcom/b/a/n;->a([B)Lcom/b/a/n;

    move-result-object v1

    .line 169
    invoke-virtual {p0, v1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 170
    invoke-virtual {v1}, Lcom/b/a/n;->k()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 96
    if-ne p0, p1, :cond_0

    move v0, v2

    .line 99
    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/b/a/gg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/gg;->b:Ljava/util/Map;

    check-cast p1, Lcom/b/a/gg;

    iget-object v1, p1, Lcom/b/a/gg;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/util/Map;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/b/a/gg;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final h()I
    .locals 4

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    iget-object v1, p0, Lcom/b/a/gg;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/gj;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/b/a/gj;->b(I)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    .line 227
    :cond_0
    return v2
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/b/a/gg;->b:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    invoke-static {p0}, Lcom/b/a/fy;->a(Lcom/b/a/gg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
