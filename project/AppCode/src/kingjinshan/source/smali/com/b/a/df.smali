.class public Lcom/b/a/df;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# static fields
.field private static final b:Lcom/b/a/df;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/b/a/df;

    invoke-direct {v0}, Lcom/b/a/df;-><init>()V

    sput-object v0, Lcom/b/a/df;->b:Lcom/b/a/df;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/df;->a:Ljava/util/Map;

    .line 142
    return-void
.end method

.method constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/df;->a:Ljava/util/Map;

    .line 125
    return-void
.end method

.method constructor <init>(Lcom/b/a/df;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    sget-object v0, Lcom/b/a/df;->b:Lcom/b/a/df;

    if-ne p1, v0, :cond_0

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/df;->a:Ljava/util/Map;

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p1, Lcom/b/a/df;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/df;->a:Ljava/util/Map;

    goto :goto_0
.end method

.method private static a()Lcom/b/a/df;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/b/a/df;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/b/a/df;-><init>(B)V

    return-object v0
.end method

.method private a(Lcom/b/a/en;)V
    .locals 4
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/b/a/df;->a:Ljava/util/Map;

    new-instance v1, Lcom/b/a/dg;

    invoke-virtual {p1}, Lcom/b/a/en;->a()Lcom/b/a/ex;

    move-result-object v2

    invoke-virtual {p1}, Lcom/b/a/en;->b()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/b/a/dg;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public static c()Lcom/b/a/df;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/b/a/df;->b:Lcom/b/a/df;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/b/a/ex;I)Lcom/b/a/en;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/b/a/df;->a:Ljava/util/Map;

    new-instance v1, Lcom/b/a/dg;

    invoke-direct {v1, p1, p2}, Lcom/b/a/dg;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/en;

    return-object p0
.end method

.method public b()Lcom/b/a/df;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/b/a/df;

    invoke-direct {v0, p0}, Lcom/b/a/df;-><init>(Lcom/b/a/df;)V

    return-object v0
.end method
