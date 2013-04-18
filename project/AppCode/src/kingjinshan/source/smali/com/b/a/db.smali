.class public final Lcom/b/a/db;
.super Lcom/b/a/df;
.source "ExtensionRegistry.java"


# static fields
.field private static final c:Lcom/b/a/db;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/b/a/db;

    invoke-direct {v0}, Lcom/b/a/db;-><init>()V

    sput-object v0, Lcom/b/a/db;->c:Lcom/b/a/db;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lcom/b/a/df;->c()Lcom/b/a/df;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/df;-><init>(Lcom/b/a/df;)V

    .line 212
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/db;->a:Ljava/util/Map;

    .line 213
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/db;->b:Ljava/util/Map;

    .line 215
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/df;-><init>(B)V

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/db;->a:Ljava/util/Map;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/db;->b:Ljava/util/Map;

    .line 198
    return-void
.end method

.method private constructor <init>(Lcom/b/a/db;)V
    .locals 1
    .parameter

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/b/a/df;-><init>(Lcom/b/a/df;)V

    .line 202
    iget-object v0, p1, Lcom/b/a/db;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/db;->a:Ljava/util/Map;

    .line 203
    iget-object v0, p1, Lcom/b/a/db;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/db;->b:Ljava/util/Map;

    .line 205
    return-void
.end method

.method public static a()Lcom/b/a/db;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/b/a/db;->c:Lcom/b/a/db;

    return-object v0
.end method

.method private a(Lcom/b/a/cq;)V
    .locals 2
    .parameter

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v0, v1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExtensionRegistry.add() must be provided a default instance when adding an embedded message extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    new-instance v0, Lcom/b/a/de;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/b/a/de;-><init>(Lcom/b/a/cq;Lcom/b/a/ev;)V

    invoke-direct {p0, v0}, Lcom/b/a/db;->a(Lcom/b/a/de;)V

    .line 180
    return-void
.end method

.method private a(Lcom/b/a/cq;Lcom/b/a/ev;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-eq v0, v1, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExtensionRegistry.add() provided a default instance for a non-message extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    new-instance v0, Lcom/b/a/de;

    invoke-direct {v0, p1, p2}, Lcom/b/a/de;-><init>(Lcom/b/a/cq;Lcom/b/a/ev;)V

    invoke-direct {p0, v0}, Lcom/b/a/db;->a(Lcom/b/a/de;)V

    .line 190
    return-void
.end method

.method private a(Lcom/b/a/de;)V
    .locals 4
    .parameter

    .prologue
    .line 219
    iget-object v0, p1, Lcom/b/a/de;->a:Lcom/b/a/cq;

    invoke-virtual {v0}, Lcom/b/a/cq;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExtensionRegistry.add() was given a FieldDescriptor for a regular (non-extension) field."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/b/a/db;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/b/a/de;->a:Lcom/b/a/cq;

    invoke-virtual {v1}, Lcom/b/a/cq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/b/a/db;->b:Ljava/util/Map;

    new-instance v1, Lcom/b/a/dd;

    iget-object v2, p1, Lcom/b/a/de;->a:Lcom/b/a/cq;

    invoke-virtual {v2}, Lcom/b/a/cq;->r()Lcom/b/a/cj;

    move-result-object v2

    iget-object v3, p1, Lcom/b/a/de;->a:Lcom/b/a/cq;

    invoke-virtual {v3}, Lcom/b/a/cq;->e()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/b/a/dd;-><init>(Lcom/b/a/cj;I)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p1, Lcom/b/a/de;->a:Lcom/b/a/cq;

    .line 232
    invoke-virtual {v0}, Lcom/b/a/cq;->r()Lcom/b/a/cj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cj;->d()Lcom/b/a/bg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/bg;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/b/a/cq;->h()Lcom/b/a/cs;

    move-result-object v1

    sget-object v2, Lcom/b/a/cs;->k:Lcom/b/a/cs;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/b/a/cq;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/b/a/cq;->s()Lcom/b/a/cj;

    move-result-object v1

    invoke-virtual {v0}, Lcom/b/a/cq;->t()Lcom/b/a/cj;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 239
    iget-object v1, p0, Lcom/b/a/db;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/b/a/cq;->t()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_1
    return-void
.end method

.method private a(Lcom/b/a/ed;)V
    .locals 3
    .parameter

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v0, v1, :cond_1

    .line 160
    invoke-virtual {p1}, Lcom/b/a/ed;->b()Lcom/b/a/ev;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered message-type extension had null default instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/cq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    new-instance v0, Lcom/b/a/de;

    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v1

    invoke-virtual {p1}, Lcom/b/a/ed;->b()Lcom/b/a/ev;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/b/a/de;-><init>(Lcom/b/a/cq;Lcom/b/a/ev;)V

    invoke-direct {p0, v0}, Lcom/b/a/db;->a(Lcom/b/a/de;)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_1
    new-instance v0, Lcom/b/a/de;

    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/b/a/de;-><init>(Lcom/b/a/cq;Lcom/b/a/ev;)V

    invoke-direct {p0, v0}, Lcom/b/a/db;->a(Lcom/b/a/de;)V

    goto :goto_0
.end method

.method private static d()Lcom/b/a/db;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/b/a/db;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/b/a/db;-><init>(B)V

    return-object v0
.end method

.method private e()Lcom/b/a/db;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/b/a/db;

    invoke-direct {v0, p0}, Lcom/b/a/db;-><init>(Lcom/b/a/db;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/b/a/cj;I)Lcom/b/a/de;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/b/a/db;->b:Ljava/util/Map;

    new-instance v1, Lcom/b/a/dd;

    invoke-direct {v1, p1, p2}, Lcom/b/a/dd;-><init>(Lcom/b/a/cj;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/de;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/b/a/de;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/b/a/db;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/de;

    return-object p0
.end method

.method public final synthetic b()Lcom/b/a/df;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/b/a/db;

    invoke-direct {v0, p0}, Lcom/b/a/db;-><init>(Lcom/b/a/db;)V

    return-object v0
.end method
