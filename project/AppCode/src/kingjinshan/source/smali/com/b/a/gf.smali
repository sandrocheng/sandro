.class public final Lcom/b/a/gf;
.super Ljava/lang/RuntimeException;
.source "UninitializedMessageException.java"


# static fields
.field private static final a:J = -0x679fdd3b29a24eb3L


# instance fields
.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/gf;->b:Ljava/util/List;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-static {p1}, Lcom/b/a/gf;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/b/a/gf;->b:Ljava/util/List;

    .line 61
    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Message missing required fields: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    const/4 v1, 0x1

    .line 89
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 90
    if-eqz v1, :cond_0

    .line 91
    const/4 v1, 0x0

    .line 95
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 93
    :cond_0
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/b/a/gf;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/b/a/es;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/b/a/es;

    invoke-virtual {p0}, Lcom/b/a/gf;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/es;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
